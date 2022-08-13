<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calculator1.aspx.cs" Inherits="calculator1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calulator</title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }

        .auto-style2 {
            margin-left: 10px;
        }

        .auto-style6 {
            text-align: center;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">

            <strong><span class="auto-style1">
                <br />
                <br />
                &nbsp; Simple Calculator</span></strong>
        </div>
        <div>
            <br />
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter First No."></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtfirstNo" runat="server" TextMode="Number"></asp:TextBox>
                        <%--                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Only numbers are allowed" ControlToValidate="txtfirstNo" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>--%>
                        
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Enter Second No."></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtsecondNo" runat="server" Width="122px" TextMode="Number"> </asp:TextBox>

                        <%--                                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Only numbers are allowed" ControlToValidate="txtsecondNo" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>--%>

                        

                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>


                    </td>
                    <td>
                        <asp:TextBox ID="txtAnswer" runat="server" CssClass="auto-style2" Width="172px" TextMode="Number"></asp:TextBox>



                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First No" ForeColor="Red" ControlToValidate="txtfirstNo"></asp:RequiredFieldValidator>

                    </td>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Second No" ForeColor="Red" ControlToValidate="txtsecondNo"></asp:RequiredFieldValidator>

                    </td>

                </tr>
                <tr>
                    <td>

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sum" Width="70px" />

                    </td>
                    <td>

                        <asp:Button ID="btnsubtract" runat="server" OnClick="btnsubtract_Click" Text="Subtract" Width="70px" />

                    </td>
                    <td>

                        <asp:Button ID="btnmulti" runat="server" OnClick="btnmulti_Click" Text="Multiply" Width="70px" />

                    </td>
                    <td>

                        <asp:Button ID="btndiv" runat="server" OnClick="btndiv_Click" Text="Divide" Width="70px" />
                    </td>
                    <td colspan="4">

                        <asp:Button ID="btncurrency" runat="server" OnClick="btncurrency_Click" CausesValidation="false" Text="Currency Exchange" Width="178px" Font-Bold="True" ForeColor="#0066FF" />

                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
