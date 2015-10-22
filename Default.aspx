<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Url重写</title>
</head>
<body>
	<a href="/News">/News</a><br />
	<a href="/News/List">/News/List</a><br />
	<a href="/News/List/5">/News/List/5</a><br />
	<a href="/News/List/5/2">/News/List/5/2</a><br />
	<a href="/News/Detail/10">/News/Detail/10</a><br />
	<a href="/Search/<%=Server.UrlEncode("鲜花") %>">/Search/鲜花</a><br />
	<a href="/Search/<%=Server.UrlEncode("鲜花") %>/3">/Search/鲜花/3</a><br />
	<a href="<%=Request.FilePath%>/a/b">Default.aspx/a/b</a><br />
	<a href="<%=Request.FilePath%>/a/b?ClassID=1">Default.aspx/a/b?ClassID=1</a><br />
	<hr />
	File：<%=Request.QueryString["File"] %><br />
	Action：<%=Request.QueryString["Action"] %><br />
	ClassID：<%=Request.QueryString["ClassID"] %><br />
	Page：<%=Request.QueryString["Page"] %><br />
	ID：<%=Request.QueryString["ID"] %><br />
	Search：<%=Request.QueryString["Search"] %><br />
	<hr />
	这样写：<br />
	<%=Request.Url.ToString().Substring(0, Request.Url.ToString().IndexOf("/", 10)) + Request.FilePath %><br />
	【请求地址，最全，重写前的虚拟路径】<br />
	Request.Url：<%=Request.Url %><br />
	【当前请求地址，重写后的，带附加路径，带参数】<br />
	Request.RawUrl：<%=Request.RawUrl %><br />
	【当前文件虚拟路径，带附加路径，不带参数】<br />
	Request.Path：<%=Request.Path %><br />
	【附加路径，如http://www.1.com/1.aspx/a/b里的/a/b】<br />
	Request.PathInfo：<%=Request.PathInfo %><br />
	【当前文件，相对路径，不带附加路径，不带参数，优先用】<br />
	Request.FilePath：<%=Request.FilePath %><br />
	【当前文件虚拟路径，相对根目录，带附加路径，不带参数】<br />
	Request.Url.AbsolutePath：<%=Request.Url.AbsolutePath %><br />
	【当前文件物理路径】<br />
	Request.PhysicalPath：<%=Request.PhysicalPath %><br />
	【当前网站物理路径】<br />
	System.IO.Path.GetDirectoryName：<%=System.IO.Path.GetDirectoryName(Request.PhysicalPath )%><br />
	【请求地址】<br />
	Request.Url.AbsoluteUri：<%=Request.Url.AbsoluteUri %><br />
	【当前目录】<br />
	Request.ApplicationPath：<%=Request.ApplicationPath %><br />
	【主机】<br />
	Request.Url.Host：<%=Request.Url.Host %><br />
	【请求路径，基于操作系统有所区别】<br />
	Request.Url.LocalPath：<%=Request.Url.LocalPath %><br />
	【路径+请求参数】
	Request.Url.PathAndQuery：<%=Request.Url.PathAndQuery %><br />
	【非匿名访问下才有返回】<br />
	Request.Url.UserInfo：<%=Request.Url.UserInfo %><br />
	Request.Url.Scheme：<%=Request.Url.Scheme %><br />
	Request.Url.Query：<%=Request.Url.Query %><br />
	Request.Url.Port：<%=Request.Url.Port %><br />
	Request.Url.OriginalString：<%=Request.Url.OriginalString %><br />
	Request.Url.Fragment：<%=Request.Url.Fragment %><br />

</body>
</html>
