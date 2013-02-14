<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="transparent.pages.caching.Default" %>

<%@ Register Src="../../include/ctl/SourceViewer.ascx" TagName="SourceViewer" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Caching
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Caching Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <h2>
        Caching</h2>
    <p>
        Caching is the technique of storing an in-memory copy of some information that&rsquo;s
        expensive to create. For example, you could cache the results of a complex query
        so that subsequent requests don’t need to access the database at all. Instead, they
        can grab the appropriate object directly from server memory—a much faster proposition.</p>
    <p>
        The real beauty of caching is that unlike many other performance-enhancing techniques,
        caching bolsters both performance and scalability. Perfor- mance is better because
        the time taken to retrieve the information is cut down dramatically. Scalability
        is improved because you work around bottlenecks such as database connections. As
        a result, the application can serve more simultaneous page requests with fewer database
        operations.</p>
    <p>
        Of course, storing information in memory isn’t always a good idea. Server memory
        is a limited resource; if you try to store too much, some of that information will
        be paged to disk, potentially slowing down the entire system. That’s why the best
        caching strategies (such as those hard-wired into ASP.NET) are self-limiting. When
        you store information in a cache, you expect to find it there on a future request
        most of the time. However, the lifetime of that information is at the discretion
        of the server. If the cache becomes full or other applications consume a large amount
        of memory, informa- tion will be selectively evicted from the cache, ensuring that
        performance is maintained. It’s this self-sufficiency that makes caching so powerful
        (and so complicated to implement on your own).
    </p>
    <p>
        With ASP.NET, you get first-rate caching for free, and you have a variety of options.
        You can cache the completely rendered HTML for a page, a portion of that HTML, or
        arbitrary objects. You can also customize expiration policies and set up dependencies
        so that items are automatically removed when other resources—such as files or database
        tables—are modified.
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
