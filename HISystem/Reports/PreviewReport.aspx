﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTemplate3.master" AutoEventWireup="true" CodeFile="PreviewReport.aspx.cs" Inherits="Reports_PreviewReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="background-color: #d3e7c5">
        Preview Report Page
    </h2>
    <p>
    <br />
        
        <table style="width:100%;" cellpadding="1">
        <tr>
            <td style="width: 175px; height: 42px; font-size: small;" class="stylecenter">
                Municipality:</td>
            <td style="height: 42px; font-size: small; width: 119px;" class="stylecenter">
                <strong>Paombong</strong></td>
            <td style="width: 77px; height: 42px; font-size: small;" 
                colspan="2">
                Province:</td>
            <td style="height: 42px; width: 268435264px;" colspan="2">
                &nbsp;<strong><span style="font-size: small; text-align: center;">Bulacan</span></strong></td>
        </tr>
        <tr>
            <td style="height: 42px; font-size: small;" colspan="6" class="stylecenter">
                <strong style="text-align: center">Choose Type Of Report</strong></td>
        </tr>
        <tr>
            <td style="width: 175px; height: 42px; font-size: small;">
                <asp:RadioButton ID="rdbtn_Reports" GroupName="TypeReport" runat="server" Text="Reports" 
                    oncheckedchanged="rdbtn_Reports_CheckedChanged" 
                    Font-Size="Small" AutoPostBack="True" style="text-align: center" />
            </td>
            <td style="text-align: center; height: 42px; width: 202px;" colspan="2">
                <asp:RadioButton ID="rdbtn_Inventory" GroupName="TypeReport" runat="server" 
                    Text="Inventory" Font-Size="Small" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Inventory_CheckedChanged" />
            </td>
            <td style="text-align: center; height: 42px" colspan="3">
                <asp:RadioButton ID="rdbtn_Consultation" GroupName="TypeReport" runat="server" 
                    style="font-size: small" Text="Consultation" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Consultation_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="stylecenter">
                <asp:Label ID="Label1" runat="server" Text="Filters" 
                    Font-Bold="True" style="font-size: small; text-align: center;" 
                    Visible="False"></asp:Label>
            </td>
            <td colspan="4" class="stylecenter">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">
                <asp:Label ID="Label2" runat="server" Text="Quarter:" style="font-size: small; font-weight: 700;" 
                    Visible="False"></asp:Label>
                </td>
            <td>
            <asp:DropDownList ID="ddlQuarter" runat="server" Height="20px" Width="123px" 
                    Visible="False">
                    <asp:ListItem>1st Quarter</asp:ListItem>
                    <asp:ListItem>2nd Quarter</asp:ListItem>
                    <asp:ListItem>3rd Quarter</asp:ListItem>
                    <asp:ListItem>4th Quarter</asp:ListItem>
        </asp:DropDownList>
                </td>
            <td style="width: 77px; height: 23px;" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Year:" style="font-size: small; font-weight: 700;" 
                    Visible="False"></asp:Label>
                </td>
            <td style="height: 23px; width: 268435264px;" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" 
              
                    Height="20px" Width="123px" Visible="False">
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
      
                <asp:Label ID="Label4" runat="server" Font-Bold="True" style="font-size: small" 
                    Text="Filters" Visible="False"></asp:Label>
      
                </td>
            <td style="width: 77px" colspan="2">
                &nbsp;</td>
            <td style="width: 268435264px" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">
                <asp:Label ID="Label5" runat="server" Text="Log Type:" style="font-size: small; font-weight: 700;" 
                    Visible="False"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="ddlLogType" DataSourceID="logData" DataTextField="LogType" DataValueField="LogType" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
         <asp:SqlDataSource ID="logData" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
             SelectCommand="SELECT DISTINCT [LogType] FROM [MedicineLog]">
        </asp:SqlDataSource>
            </td>
            <td colspan="4">
      
                &nbsp;</td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label6" runat="server" 
                    style="font-size: small; font-weight: 700; text-align: center;" 
                    Text="Filters - Search By" Visible="False"></asp:Label>
            &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
        </tr>

        <tr>
             <td colspan="2">
                 <asp:RadioButton ID="rdbtn_Barangay" GroupName="ConsultType" runat="server" style="font-size: small" 
                     Text="Barangay" AutoPostBack="True" 
                     oncheckedchanged="rdbtn_Barangay_CheckedChanged" Visible="False" />
             </td>
            <td style="width: 77px; height: 23px;" colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Barangay:" style="font-size: small; font-weight: 700;" 
                    Visible="False"></asp:Label>
                </td>
            <td style="height: 23px; ">
            <asp:DropDownList ID="DropDownList2" DataSourceID="Barangay" DataTextField="BarangayName" 
        DataValueField="BarangayName" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                    style="font-size: small" Text="Month:" Visible="False"></asp:Label>
            </td>
            <td style="height: 23px; width: 268435264px;">
            <asp:DropDownList ID="DropDownList3" DataSourceID="getMonths" DataTextField="MonthsText" 
        DataValueField="MonthsValue" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
          
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButton ID="rdbtn_Disease" GroupName="ConsultType" runat="server" style="font-size: small" 
                    Text="Disease" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Disease_CheckedChanged" Visible="False" />
            </td>
            <td colspan="2" style="width: 77px">
                <asp:Label ID="Label8" runat="server" 
                    style="font-size: small; font-weight: 700" Text="Disease:" Visible="False"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="ddlDisease" DataSourceID="Disease" DataTextField="DiseaseName" DataValueField="DiseaseName" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                    style="font-size: small" Text="Month:" Visible="False"></asp:Label>
            </td>
            <td style="width: 268435264px">
            <asp:DropDownList ID="DropDownList4" DataSourceID="getMonths" DataTextField="MonthsText" 
        DataValueField="MonthsValue" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
          
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButton ID="rdbtn_Age" GroupName="ConsultType" runat="server" style="font-size: small" 
                    Text="Age Bracket" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Age_CheckedChanged" Visible="False" />
            </td>
            <td colspan="2" style="width: 77px">
                <asp:Label ID="Label9" runat="server" 
                    style="font-size: small; font-weight: 700" Text="Age Bracket:" Visible="False"></asp:Label>
            </td>
            <td style="width: 268435264px">
            <asp:DropDownList ID="ddlAge" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                    style="font-size: small" Text="Month:" Visible="False"></asp:Label>
            </td>
            <td style="width: 268435264px">
            <asp:DropDownList ID="DropDownList5" DataSourceID="getMonths" DataTextField="MonthsText" 
        DataValueField="MonthsValue" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
          
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButton ID="rdbtn_Month" GroupName="ConsultType" runat="server" style="font-size: small" 
                    Text="Month" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Month_CheckedChanged" Visible="False" />
            </td>
            <td colspan="2" style="width: 77px">
                <asp:Label ID="Label10" runat="server" 
                    style="font-size: small; font-weight: 700" Text="Month:" Visible="False"></asp:Label>
            </td>
            <td style="width: 268435264px" colspan="2">
                    <asp:DropDownList ID="ddlMonth" DataSourceID="getMonths" DataValueField="MonthsValue" DataTextField="MonthsText" runat="server" Height="20px" Width="122px" 
                        Visible="False">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getMonths" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
            SelectCommand="SelectMonthPresent" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButton ID="rdbtn_Year" GroupName="ConsultType" runat="server" style="font-size: small" 
                    Text="Year" AutoPostBack="True" 
                    oncheckedchanged="rdbtn_Year_CheckedChanged" Visible="False" />
            </td>
            <td colspan="2" style="width: 77px">
                <asp:Label ID="Label11" runat="server" 
                    style="font-size: small; font-weight: 700" Text="Year:" Visible="False"></asp:Label>
            </td>
            <td style="width: 268435264px" colspan="2">
            <asp:DropDownList ID="ddlYear"  DataSourceID = "getYears" DataValueField="Years" DataTextField="Years" runat="server" Height="20px" Width="123px" 
                    Visible="False">
        </asp:DropDownList>
        <asp:SqlDataSource ID="getYears" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
            SelectCommand="SelectYearPresent" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="6">
            <center>
                <asp:Button ID="btn_runReport" runat="server" onclick="btn_runReport_Click"
                    Text="Run Report" Width="193px" style="text-align: center" /></td>
            </center>
        </tr>
        </table>
</p>

<rsweb:ReportViewer ID="ReportPaombong" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" 
        WaitMessageFont-Size="14pt" Width="738px" 
        SizeToReportContent="True" ExportContentDisposition="AlwaysAttachment" 
        PageCountMode="Actual" Visible="False">
        <ServerReport ReportServerUrl="http://localhost:2705/HISystem/Report.rdlc" 
            ReportPath="Report.rdlc" />
    <LocalReport ReportPath="Reports\Report_SearchByBarangay.rdlc" 
            DisplayName="PaombongQuarterlyReport">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="Barangay" Name="SearchByBarangay" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    <asp:ObjectDataSource ID="_MedicineLog_" runat="server" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.MedicineLogTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="MedicineId" Type="Int32" />
            <asp:Parameter Name="MedicineName" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int64" />
            <asp:Parameter Name="DateOfCheckOut" Type="DateTime" />
            <asp:Parameter Name="FacilitatedBy" Type="String" />
            <asp:Parameter Name="LogType" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="CheckOut" Name="logtype" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
        <asp:SqlDataSource ID="Barangay" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
             SelectCommand="SelectBarangayPresentInEncounter" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="Disease" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
            SelectCommand="SelectDiseasePresent" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    <asp:ObjectDataSource ID="_YearConsult" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SearchByYearTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="2011" Name="yearParam" Type="Decimal" />
        </SelectParameters>
    </asp:ObjectDataSource>

     <asp:ScriptManager id="SM1" runat="server" />
    
    <asp:ObjectDataSource ID="_MonthConsult" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SearchByMonthTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="monthParam" Type="Decimal" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="_Barangay" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SearchByBarangayNameTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="Binakod" Name="barangayName" Type="String" />
            <asp:Parameter DefaultValue="1" Name="month" Type="Decimal" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="_AgeBracket" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SearchByAgeBracketTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="30" Name="ageParam" Type="String" />
            <asp:Parameter DefaultValue="1" Name="month" Type="Decimal" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="_SearchByDiseaseName" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SearchByDiseaseNameTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="Mumps" Name="diseaseName" Type="String" />
            <asp:Parameter DefaultValue="1" Name="month" Type="Decimal" />
        </SelectParameters>
    </asp:ObjectDataSource>
<%--    <asp:ObjectDataSource ID="_Header" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.HeaderTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>--%>
    <asp:ObjectDataSource ID="_MaternalCare" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.MaternalCareTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_Filariasis" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.FilariasisTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_Leprosy" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.LeprosyTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_Schisto" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.SchistoTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_Malaria" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.MalariaTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_Tuberculosis" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.TuberculosisTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_DentalCare" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.DentalCareTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_ChildCare" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.ChildCareTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="_FamilyPlanning" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="PaombongDataSetTableAdapters.FamilyPlanningTableAdapter">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
        <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
        <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
    <asp:ObjectDataSource ID="fiBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.FilariasisTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="leBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.LeprosyTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="scBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.SchistoTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="maBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.MalariaTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2010" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="tbBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.TuberculosisTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dcBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.DentalCareTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ccBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.ChildCareTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="fpBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.FamilyPlanningTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="mcBusinessObject" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PaombongDataSetTableAdapters.MaternalCareTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="month1" Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="month" Type="Int32" />
            <asp:Parameter DefaultValue="2011" Name="year" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>


