
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 class="header">
        Overview
    </h2>


    
      <div class="cards">
        <div class="student_card">
          <img src="https://assets.codepen.io/2301174/icon-supervisor.svg" alt="Student card logo">
          <h3>Number of students</h3>
          <p>Students you are currently in charge of</p>
          <asp:label runat="server" method="get" id="trainees" style="font-size:35px; margin-left:165px;">3</asp:label>
          
        </div>

        <div class="advisor_card">
          <h3>Admins</h3>
          <p>Number of admins you added</p>
          <img style="margin-bottom:60px;" src="https://assets.codepen.io/2301174/icon-calculator.svg" alt="Advisor card logo">
          <asp:label runat="server" method="get" id="admin" style="font-size:35px; margin-left:105px;">2</asp:label>
        </div>
      </div>
      
     <div style="margin-top: 160px;">
        <asp:GridView ID="Admin_GridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="5px" CellPadding="1" Width="100%" Height="20%">
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
    
    <!--
        
        
        -->



    <table class="table align-middle mb-0 bg-white" id="dash_overview" >
      <thead class="bg-light">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Phone</th>
          <th>Time</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
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
            <p class="fw-normal mb-1">+966542645589</p> 
          </td>
            <td>June 11 08:03am</td>
           <td>
            <span class="badge badge-success rounded-pill d-inline" style="background-color:green;">Signed-in</span>
           </td>
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
            <p class="fw-normal mb-1">+966542945433</p> 
          </td>
            <td>June 11 08:01am</td>
          <td>
             <span class="badge badge-primary rounded-pill d-inline" style="background-color:green;"
                  >Signed-in</span
              >
          </td>
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
            <p class="fw-normal mb-1">+966534567789</p> 
          </td>
            <td>June 10 2:15pm</td>
          <td>
            <span class="badge badge-warning rounded-pill d-inline" style="background-color:darkred;">Signed-out</span>
          </td>
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
            <p class="fw-normal mb-1">+966554687794</p> 
          </td>
            <td>June 10 2:05pm</td>
          <td>
            <span class="badge badge-warning rounded-pill d-inline" style="background-color:darkred;">Signed-out</span>
          </td>
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
            <p class="fw-normal mb-1">+966577897784</p> 
          </td>
            <td>June 10 2:01pm</td>
          <td>
            <span class="badge badge-warning rounded-pill d-inline" style="background-color:darkred;">Signed-out</span>
          </td>
        </tr>

      </tbody>
    </table>
    
    
</asp:Content>
   

