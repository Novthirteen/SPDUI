<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ValidateUpdate.ascx.cs" Inherits="Modules_Dui_DSUpload_ValidateUpdate" %>
<h2>Data Preparation - Validated Data List for Update:</h2>
<p class="formBtnBoard1">
    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
</p>
<script language="vbscript">
function ButtonWarning(Action)
    Dim ReturnVal
    Select Case Action
        case "Delete"
            ReturnVal = msgbox("Are you sure you want to delete the record?",17)
            If ReturnVal = 1 then
                ButtonWarning = true
            else
                ButtonWarning = false
            end if
    end select
end function
</script>
<asp:Label ID="lblMessage" runat="server" Visible="false" CssClass="error"></asp:Label>      
<table border="0" width="100%">
    <tr>
        <td>
            <asp:GridView ID="gvValidationUpdate"  meta:resourcekey="gvValidationUpdate" runat="server" 
                AutoGenerateColumns="True" allowpaging="true" PageSize="20" 
                OnPageIndexChanging="gvValidationUpdate_PageIndexChanging"
                OnDataBinding="gvValidationUpdate_DataBinding" OnRowEditing="gvValidationUpdate_RowEditing" 
                OnRowCancelingEdit="gvValidationUpdate_RowCancelingEdit" OnRowUpdating="gvValidationUpdate_RowUpdating" 
                AutoGenerateEditButton="true" AutoGenerateDeleteButton="True" 
                OnRowCommand="gvValidationUpdate_RowCommand" OnRowDeleting="gvValidationUpdate_RowDeleting" 
                OnSelectedIndexChanged="gvValidationUpdate_SelectedIndexChanged" 
                DataKeyNames="Rec_Id" OnRowDataBound="gvValidationUpdate_RowDataBound"
                CellPadding="4" CssClass="list" GridLines="Horizontal">
                <HeaderStyle CssClass="listhead" HorizontalAlign="Left" />
                <AlternatingRowStyle CssClass="listA" />
            </asp:GridView>
        </td>
    </tr>  
</table>
