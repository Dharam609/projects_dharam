import React from "react";
import { Menu } from "antd";
import { useSelector } from "react-redux";
import { withRouter } from "react-router-dom";

function LeftMenu(props) {
  const user = useSelector((state) => state.user);
  if (user.userData && !user.userData.isAuth) {
    return <Menu mode={props.mode}></Menu>;
  } else {
    return (
      <Menu mode={props.mode}>
        <Menu.Item key="favorite">
          <a href="/favorite" style={{ fontSize: "20px" }}>
            Favorite
          </a>
        </Menu.Item>
      </Menu>
    );
  }
}

export default withRouter(LeftMenu);
