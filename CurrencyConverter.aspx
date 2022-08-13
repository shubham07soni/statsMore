<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="statsMore_CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            width: 91px;
        }
        .auto-style5 {
            width: 127px;
            text-align: center;
        }
        .auto-style6 {
            width: 91px;
            text-align: center;
        }
        .auto-style7 {
            width: 195px;
            text-align: center;
        }
        .auto-style8 {
            margin-left: 360px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style1">

             <span class="auto-style1">

            <strong>
                <br />
                <br />
                &nbsp;<span class="auto-style2"> Currency Converter</span></strong></span>
        </div>
        <div>
            <asp:Label ID="lbleur" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br />
            <asp:Label ID="lblusd" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br />
            <asp:Label ID="lblaud" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br />
            <asp:Label ID="lblgbp" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <table>
                <tr>

               
                <td>
                                            <asp:Label ID="Label4" runat="server" Text="Available Currency:"></asp:Label>

                                            </td>
                <td colspan="6">
                                            <asp:TextBox ID="txtAvailablecurr" runat="server" Width="855px" Font-Bold="True" ForeColor="Red" ></asp:TextBox>

                </td>
                     </tr>
                
                     <tr>

               
                <td class="auto-style1">
                                            <asp:Label ID="Label5" runat="server" Text="Enter Amount:"></asp:Label>

                                            </td>
                <td class="auto-style7"  >
                                            <asp:TextBox ID="txtAmount" runat="server" Width="117px" TextMode="Number" ></asp:TextBox>

                </td>
                          <td  colspan="2" class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Amount" ForeColor="Red" ControlToValidate="txtAmount"></asp:RequiredFieldValidator>

                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Convert From:"></asp:Label>

                        </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtConvertFrom" runat="server" ></asp:TextBox>
                        <%--                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Only numbers are allowed" ControlToValidate="txtfirstNo" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>--%>
                        
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Convert To:"></asp:Label>

                        </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtConvertTo" runat="server" Width="122px" > </asp:TextBox>

                        <%--                                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Only numbers are allowed" ControlToValidate="txtsecondNo" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>--%>

                        

                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Converted Amount:"></asp:Label>


                        </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAnswer" runat="server" CssClass="auto-style2" Width="172px" ReadOnly="true" ForeColor="#66FF33"></asp:TextBox>



                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style3">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Convert From" ForeColor="Red" ControlToValidate="txtConvertFrom"></asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style4"></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Convert To" ForeColor="Red" ControlToValidate="txtConvertTo"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Covert currency can not be same as from" ControlToValidate="txtConvertTo" ControlToCompare="txtConvertfrom" Operator="NotEqual"></asp:CompareValidator>

                    </td>

                </tr>
                
            </table>

        </div>
    <div class="auto-style8">

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <asp:Button ID="btncurrency" runat="server" OnClick="btncurrency_Click" CausesValidation="true" Text="Convert" Width="178px" Font-Bold="True" ForeColor="#0066FF" />
                                <asp:LinkButton ID="lnkback" OnClick="lnkback_Click" runat="server" CausesValidation="false">Calculator</asp:LinkButton>


    </div>
    </form>
</body>
</html>
