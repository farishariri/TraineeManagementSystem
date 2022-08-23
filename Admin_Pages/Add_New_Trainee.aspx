<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Add_New_Trainee.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 class="header">
        Add New Trainee
    </h2>

  <div class="Add_Trainee_Container">
   
    <formview class="form-inline col-md-12" action="#">
        <div class="form-group col-xs-4">
            <h5 for="name">Name</h5>
            <asp:TextBox type="text" class="form-control" runat="server" id="name" placeholder="Name of trainee" style="width: 100%"></asp:TextBox>
        </div>
        <div class="form-group col-xs-4">
            <h5 for="ID">ID</h5>
            <asp:TextBox type="text" class="form-control" runat="server" id="traineeID" placeholder="ID of trainee" method="get" style="width: 100%"></asp:TextBox>
        </div>
        <div class="form-group col-xs-4">
            <h5 for="gender">Gender</h5>
            <select id="gender" class="form-control" style="width: 100%" runat="server">
                    <option selected>Choose...</option>
                    <option>Male</option>
                    <option>Female</option>
            </select>
        </div>
        
        

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="college">College</h5>
            <asp:TextBox type="text" class="form-control" runat="server" id="college" placeholder="College of trainee" style="width: 100%"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="major">Major</h5>
            <asp:TextBox type="text" class="form-control" runat="server" id="major" placeholder="Major of trainee" style="width: 100%"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="phone">Phone</h5>
            <asp:TextBox type="text" class="form-control" runat="server" id="phone" placeholder="Phone of trainee" style="width: 100%"></asp:TextBox>
        </div>

        <div class="form-group col-xs-3" style="margin-top:5px;">
            <h5 for="date">Start-date</h5>
            <input type="date" class="form-control" runat="server" id="date" style="width: 100%">
        </div>
        
        <hr class="mx-n3">

        <div class="col-lg-1" style="padding-top:15px;">
            <asp:button type="submit" runat="server" OnClick="AddTraineeButton" class="btn btn-primary btn-lg" Text="Add"></asp:button>
        </div>
    </formview>

    </div>
    



       
         



</asp:Content>

