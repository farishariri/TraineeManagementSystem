<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 class="header">
        Attendance
    </h2>

    <div style="margin-top: 160px;">
        <asp:GridView ID="Attendance_GridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="5px" CellPadding="1" Width="100%" Height="20%" AutoGenerateColumns="false">
            
              <Columns>
                  
                <asp:BoundField DataField="id" HeaderText="ID" />

                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# convertID(Eval("id").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="date" HeaderText="Date" />
                

                  <asp:TemplateField HeaderText="Attendance">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# convertType(Eval("type").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                

              </Columns>

            
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

    <table class="table align-middle mb-0 bg-white" id="attendance_table">
      <thead class="bg-light">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Phone</th>
          <th>Attendance</th>
          <th>Absence</th>
          <th>More Info</th>
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
            <td>16</td>
           <td>
                <p class="fw-bold mb-1">2</p>
           </td>
           <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>12</td>
          <td>
            <p class="fw-bold mb-1">3</p>
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>15</td>
          <td>
            <p class="fw-normal mb-1">6</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>19</td>
          <td>
            <p class="fw-normal mb-1">2</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>17</td>
          <td>
            <p class="fw-normal mb-1">3</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
          </td>
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
            <p class="fw-normal mb-1">+966542645589</p> 
          </td>
            <td>13</td>
           <td>
                <p class="fw-bold mb-1">4</p>
           </td>
           <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>12</td>
          <td>
            <p class="fw-bold mb-1">0</p>
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>10</td>
          <td>
            <p class="fw-normal mb-1">9</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>15</td>
          <td>
            <p class="fw-normal mb-1">5</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
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
            <td>12</td>
          <td>
            <p class="fw-normal mb-1">4</p> 
          </td>
          <td>
                <button type="button" class="btn btn-primary" onclick="window.location.href = '/Admin_Pages/More_Info.aspx';">
                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                   <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                   <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                   </svg>
                </button>
          </td>
        </tr>
    </table>

</asp:Content>

