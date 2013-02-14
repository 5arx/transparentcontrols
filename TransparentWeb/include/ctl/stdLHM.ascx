<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="stdLHM.ascx.cs" Inherits="transparent.include.ctl.stdLHM" %>
<style>A{font-family:verdana; font-size:.8em;}</style>
<table  border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <table width='100%' border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td><a href="/">home</a></td>
                </tr>
                <tr>
                    <td><a href="/pages/cookies/">cookies</a></td>
                </tr>
                <tr>
                    <td><a href="/pages/databound/">databound controls</a></td>
                </tr>                
               <tr>
                  <td>
                     <a href="/pages/delegates/">delegates</a>
                  </td>
               </tr>
               <tr>
                  <td>
                     <a href="/pages/events/">events</a></td>
               </tr>
               <tr>
                  <td>
                     <a href="/pages/io/">I/O</a></td>
               </tr>
               <tr>
                  <td>
                     <a href="/pages/networking/">networking</a></td>
               </tr>               
               <tr>
                  <td>
                     <a href="/pages/lifecycle/">page lifecycle</a></td>
               </tr>
               <tr>
                    <td><a href="/pages/session/">session</a></td>
                </tr>
                <tr>
                    <td><a href="/pages/usercontrols/">user controls</a></td>
                </tr>                                
               
               <asp:placeholder runat="server" id="ph_Logout">
                <tr>
                   <td><a href="/Logout.aspx">logout</td>
                </tr>
                </asp:placeholder>
            </table>
        </td>
    </tr>
</table>