﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LineChartTemplate.aspx.cs" Inherits="LineChartTemplate" %>
<%@ Register Assembly="DevExpress.XtraCharts.v14.2.Web, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" EnableRowsCache="false" OnDataBinding="ASPxGridView1_DataBinding">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ID"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LineChartValues">
                    <DataItemTemplate>
                        <dx:WebChartControl ID="WebChartControl1" runat="server" EnableViewState="false" OnInit="WebChartControl1_Init">
                        </dx:WebChartControl>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </form>
</body>
</html>