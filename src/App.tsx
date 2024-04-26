import employeeIcon from "@ui5/webcomponents-icons/dist/employee.js";
import { Avatar, ShellBar } from "@ui5/webcomponents-react";
import { Routes, Route, useNavigate } from "react-router-dom";
import { Home } from './Home';
import { Details } from './Details';
function App() {
  const navigate = useNavigate();
  const handleLogoClick = () => {
    navigate("/");
  };

  return (
    <>
      <ShellBar
        logo={
          <img
            src="https://sap.github.io/ui5-webcomponents/assets/images/sap-logo-svg.svg"
            alt={"SAP Logo"}
          />
        }
        primaryTitle="Movie DB"
        onLogoClick={handleLogoClick}
        profile={<Avatar icon={employeeIcon} />}
      />
      <div style={{ overflow: "auto", flexGrow: 1 }}>
        <Routes>
          <Route path="details/:movieId" element={<Details />}></Route>
          <Route path="/" element={<Home />}></Route>
        </Routes>
      </div>
    </>
  );
}

export default App;
