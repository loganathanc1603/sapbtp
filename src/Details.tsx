import {
  ObjectPage,
  DynamicPageTitle,
  DynamicPageHeader,
  Label,
  Text,
  RatingIndicator,
  FlexBox,
  FlexBoxDirection,
  Link,
  ObjectPageSection,
  Grid,
  Avatar,
  FlexBoxAlignItems,
  AvatarSize,
  AvatarShape,
  FlexBoxJustifyContent,
  Title,
  TitleLevel,
  Button,
  ButtonDesign,
  Timeline,
  TimelineItem,
} from "@ui5/webcomponents-react";
import { useParams } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import { revenueFormatter } from "./util";
import pictureIcon from "@ui5/webcomponents-icons/dist/picture";
import personPlaceholder from "@ui5/webcomponents-icons/dist/person-placeholder";
import { ThemingParameters } from "@ui5/webcomponents-react-base";
export const Details = () => {
  const { movieId } = useParams();
  const movieContextPath = `https://nodejs-vcmu.onrender.com/api/v1/movies/${movieId}`;
  const reviewContextPath = `https://nodejs-vcmu.onrender.com/api/v1/movies/${movieId}/reviews`;

  const { data } = useQuery({
    queryKey: [`details-${movieId}`],
    queryFn: () =>
      fetch(movieContextPath).then((res) => {
        return res.json();
      }),
  });

  const { data: reviewData } = useQuery({
    queryKey: [`reviews-${movieId}`],
    queryFn: () =>
      fetch(reviewContextPath).then((res) => {
        return res.json();
      }),
  });

  const handleCreateReviewClick = () => {};

  return (
    <>
      <ObjectPage
        style={{ height: "100%" }}
        image={<Avatar icon={pictureIcon}></Avatar>}
        headerTitle={
          <DynamicPageTitle
            header={data?.title}
            subHeader={
              data?.revenue && (
                <>
                  <Label showColon>Revenue</Label>{" "}
                  <Text>{revenueFormatter.format(data.revenue)}</Text>
                </>
              )
            }
            showSubHeaderRight={false}
          >
            <RatingIndicator readonly value={data?.rating}></RatingIndicator>
          </DynamicPageTitle>
        }
        headerContent={
          <DynamicPageHeader>
            <FlexBox direction={FlexBoxDirection.Column}>
              <Link>Official Trailer</Link>
              <Link>Buy Online</Link>
            </FlexBox>
          </DynamicPageHeader>
        }
      >
        <ObjectPageSection id="Summary" titleText="Summary">
          <Text>{data?.summary}</Text>
        </ObjectPageSection>
        <ObjectPageSection
          id="Actors"
          titleText="Main Actors"
          hideTitleText
          header={
            <FlexBox>
              <Title level={TitleLevel.H4}>Main Actors</Title>
            </FlexBox>
          }
        >
          <Grid defaultSpan="XL6 L6 M6 S12">
            {data?.actors?.map((item, index) => (
              <FlexBox alignItems={FlexBoxAlignItems.Center} key={item.key}>
                <Avatar
                  icon={pictureIcon}
                  size={AvatarSize.L}
                  style={{ marginInlineEnd: "0.5rem" }}
                  shape={AvatarShape.Square}
                ></Avatar>
                <FlexBox direction={FlexBoxDirection.Column}>
                  <Text
                    style={{ fontFamily: ThemingParameters.sapFontBoldFamily }}
                  >
                    {item.name}
                  </Text>
                  <Label>{item.character}</Label>
                </FlexBox>
              </FlexBox>
            ))}
          </Grid>
        </ObjectPageSection>
        <ObjectPageSection
          id="Reviews"
          titleText="Reviews"
          hideTitleText
          header={
            <FlexBox
              justifyContent={FlexBoxJustifyContent.SpaceBetween}
              alignItems={FlexBoxAlignItems.Center}
            >
              <Title level={TitleLevel.H4}>Reviews</Title>
              <Button
                design={ButtonDesign.Emphasized}
                onClick={handleCreateReviewClick}
              >
                Create Review
              </Button>
            </FlexBox>
          }
        >
          <Timeline>
            {reviewData?.map((item) => {
              const date = new Date(item.timestamp);
              const formattedate = date.toLocaleDateString("en-US", {
                year: "numeric",
                month: "short",
                day: "2-digit",
                hour: "2-digit",
                minute: "2-digit",
              });
              return (
                <TimelineItem
                  key={item.timestamp}
                  name={item.name}
                  subtitleText={formattedate}
                  icon={personPlaceholder}
                >
                  <FlexBox direction={FlexBoxDirection.Column}>
                    <Text renderWhitespace>{item.comment}</Text>
                    {item.rating && (
                      <RatingIndicator value={item.rating}></RatingIndicator>
                    )}
                  </FlexBox>
                </TimelineItem>
              );
            })}
          </Timeline>
        </ObjectPageSection>
      </ObjectPage>
    </>
  );
};
