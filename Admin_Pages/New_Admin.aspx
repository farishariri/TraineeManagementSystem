<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="New_Admin.aspx.cs" Inherits="New_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="header">
        Admin list
    </h2>
    
    <div style="margin-top: 160px;">
        <asp:GridView ID="NewAdmin_GridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" Height="20%">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>

   <table class="table align-middle mb-0 bg-white" id="admin_table">
      <thead class="bg-light">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Position</th>
          <th>Department</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="d-flex align-items-cente33r">
              <div class="ms-3">
                <p class="fw-bold mb-1">1115352464</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Kyojuro Rengoku</p> 
          </td>
          <td>
            <p class="fw-normal mb-1">Senior Web Developer</p> 
          </td>
            <td>Web Development</td>           
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1115224978</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Inosuke Hashibira</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Junior Mobile Developer</p> 
          </td>
            <td>Mobile Development</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1113464119</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Zenitsu Agatsuma</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Junior CS</p> 
          </td>
            <td>Cyber Security</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1114567227</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Nezuko Kamado</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Junior Data Analyst</p> 
          </td>
            <td>Data Department</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1114567689</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Tanjiro Kamado</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Senior Web Developer</p> 
          </td>
            <td>Web Devlopment</td>
        </tr>

         <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1115352464</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">John Doe</p> 
          </td>
          <td>
            <p class="fw-normal mb-1">Contract Manager</p> 
          </td>
            <td>Contract Managment</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1115464978</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Alex Ray</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Junior Data Analyst</p> 
          </td>
            <td>Data Department</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1113464789</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Kate Hunington</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Senior Mobile Developer</p> 
          </td>
            <td>Mobile Development</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1114567897</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Jane Doe</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Contract Manager</p> 
          </td>
            <td>Contract Managment</td>
        </tr>
        
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div class="ms-3">
                <p class="fw-bold mb-1">1114567689</p>
              </div>
            </div>
          </td>
          <td>
            <p class="fw-normal mb-1">Tanjiro Kamado</p>
          </td>
          <td>
            <p class="fw-normal mb-1">Junior Mobile Developer</p> 
          </td>
            <td>Mobile Development</td>
        </tr>
    </table>
   
    <button style="position: absolute;margin-top:10px;" type="button" class="btn btn-primary col-lg-1" id="add_admin" onclick="window.location.href = '/Admin_Pages/Add_New_Admin.aspx';">Add Admin</button>

       
</asp:Content>

