import {
  Table,
  TableCell,
  TableColumn,
  TableRow,
  TableRowType,
  FlexBox,
  FlexBoxDirection,
  BusyIndicator,
  Input,
  Icon,
} from "@ui5/webcomponents-react";
import { useQuery } from "@tanstack/react-query";
import { useState, useEffect, useRef } from "react";
import { useNavigate } from "react-router-dom";
import { useResponsiveContentPadding } from "@ui5/webcomponents-react-base";
import { revenueFormatter } from "./util";
import SearchIcon from "@ui5/webcomponents-icons/dist/search";

import parseProperties from "@ui5/webcomponents-base/dist/PropertiesFileFormat.js";
import {registerI18nLoader, getI18nBundle} from "@ui5/webcomponents-base/dist/i18nBundle.js";

const supportedLocales = ["en"];
supportedLocales.forEach(localeToRegister => {
	registerI18nLoader("myApp", localeToRegister, async (localeId) => {
		const props = await (await fetch(`./assets/messagebundle_${localeId}.properties`)).text();
		return parseProperties(props);
	});
});

const bundle = await getI18nBundle("myApp");
const MOVIE_TITLE = bundle.getText("MOVIE_TITLE");

interface TableData {
  id: string;
  revenue: number;
  year: number;
  title: string;
}

export const Home = () => {
  const moviesUrl: string = "https://nodejs-vcmu.onrender.com/api/v1/movies";
  const containerRef = useRef(null);
  const responsiveContentPadding = useResponsiveContentPadding(
    containerRef.current
  );

  const navigate = useNavigate();

  const { isLoading, data } = useQuery<TableData>({
    queryKey: ["tableData"],
    queryFn: () =>
      fetch(moviesUrl).then((res) => {
        return res.json();
      }),
  });
  const [filteredData, setFilteredData] = useState(data);

  useEffect(() => {
    setFilteredData(data);
  }, [data]);

  const handleRowClick = (evt ) => {
    const { row } = evt.detail;
    navigate(`/details/${row.dataset.id}`);
  };

  const handleSearchInput = (evt) => {
    const { value } = evt.target;
    setFilteredData(
      data.filter(
        (item) =>
          item.title.toLowerCase().includes(value.toLowerCase()) ||
          String(item.year).includes(value)
      )
    );
  };

  return (
    <FlexBox
      className={responsiveContentPadding}
      style={{ paddingBlock: "1rem" }}
      direction={FlexBoxDirection.Column}
      ref={containerRef}
    >
      <Input
        placeholder="Search movies.."
        onInput={handleSearchInput}
        icon={<Icon name={SearchIcon} />}
        style={{ width: "300px", marginBottom: "10px", marginTop:"1px" }}
      />
      <BusyIndicator active={isLoading}>
        <Table
          columns={
            <>
              <TableColumn>Title</TableColumn>
              <TableColumn>Year</TableColumn>
              <TableColumn>Revenue</TableColumn>
            </>
          }
          onRowClick={handleRowClick}
        >
          {filteredData?.map((movie: TableData) => {
            return (
              <TableRow
                key={movie.id}
                type={TableRowType.Active}
                data-id={movie.id}
              >
                <TableCell>{movie.title}</TableCell>
                <TableCell>{movie.year}</TableCell>
                <TableCell>{revenueFormatter.format(movie.revenue)}</TableCell>
              </TableRow>
            );
          })}
        </Table>
      </BusyIndicator>
    </FlexBox>
  );
};
