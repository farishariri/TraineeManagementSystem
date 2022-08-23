<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Edit_Trainee.aspx.cs" Inherits="Edit_Trainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
 
    <h2 class="header">
        Edit Trainee Info
    </h2>

  <div class="Edit_Trainee_Container">
   
    <formview class="form-inline col-md-12" action="#">
        <div class="form-group col-xs-4">
            <h5 for="name">Name</h5>
            <asp:TextBox type="text" class="form-control" id="nameBox" value="" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-xs-4">
            <h5 for="ID">ID</h5>
            <asp:TextBox type="text" class="form-control" id="idBox" value="" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-xs-4">
            <h5 for="gender">Gender</h5>
            <asp:TextBox type="text" class="form-control" id="genderBox" value="" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>
        
        

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="college">College</h5>
            <asp:TextBox type="text" class="form-control" id="collegeBox" value="" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="major">Major</h5>
            <asp:TextBox type="text" class="form-control" id="majorBox" value="" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="phone">Phone</h5>
            <asp:TextBox type="text" class="form-control" id="phoneBox" value="+966542645589" style="width: 100%" method="get" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="date">Start-date</h5>
            <asp:TextBox type="text" class="form-control" id="dateBox" style="width: 100%" value="" method="get" runat="server"></asp:TextBox>
        </div>
        
        <hr class="mx-n3">

        <div class="col-lg-1" style="padding-top:15px;">
            <asp:button Text="Edit" type="submit" class="btn btn-primary btn-lg" OnClick="Edit_Button" runat="server"></asp:button>
        </div>
    </formview>

    </div>


</asp:Content>

