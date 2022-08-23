<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Add_New_Admin.aspx.cs" Inherits="Add_New_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 class="header">
        Add New Admin
    </h2>

  <div class="Add_Admin_Container">
   
    <formview class="form-inline col-md-12" action="#" style="padding-top:10px;">
        <div class="form-group col-xs-3">
            <h5 for="name">Name</h5>
            <asp:TextBox runat="server" method="get" type="text" class="form-control" id="name" placeholder="Name of admin" style="width: 100%"></asp:TextBox>
        </div>
        <div class="form-group col-xs-3">
            <h5 for="ID">ID</h5>
            <asp:TextBox runat="server" method="get" type="text" class="form-control" id="adminID" placeholder="ID of admin" style="width: 100%"></asp:TextBox>
        </div>
        
        <div class="form-group col-xs-3">
            <h5 for="position">Position</h5>
            <asp:TextBox runat="server" method="get" type="text" class="form-control" id="position" placeholder="Position of admin " style="width: 100%"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3">
            <h5 for="department">Department</h5>
            <asp:TextBox runat="server" method="get" type="text" class="form-control" id="department" placeholder="Department of admin" style="width: 100%"></asp:TextBox>
        </div>
        
        <hr class="mx-n3">

        <div class="col-lg-1" style="position: fixed; margin-top:45px;">
            <asp:button runat="server" OnClick="AddAdminButton" Text="Add"  type="submit" class="btn btn-primary btn-lg"></asp:button>
        </div>
    </formview>

    </div>

</asp:Content>

