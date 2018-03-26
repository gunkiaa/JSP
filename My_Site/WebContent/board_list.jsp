<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page language="java" import="java.util.*, java.sql.*, javax.servlet.http.*" %>
<%!
	Connection DB_Connection() throws ClassNotFoundException, SQLException, Exception
	{
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
		Class.forName( "oracle.jdbc.driver.OracleDriver" );
		Connection conn = DriverManager.getConnection( url, "study", "study" );
		return conn;
} 
	
	String TO_DB( String str ) throws Exception
	{
		if( str == null ) 
			return null;
		return new String( str.getBytes( "8859_1" ), "euc-kr" );
	}
%>

<%
	Connection conn = DB_Connection();
	Statement stmt = null;
	ResultSet rs = null;

	Vector v_aid = new Vector();
	Vector v_articleid = new Vector();
	Vector v_name = new Vector();
	Vector v_subject = new Vector();
	Vector v_date = new Vector();
	Vector v_hits = new Vector();
	Vector v_memo = new Vector();
	Vector v_rid = new Vector();

	String str_c_page = request.getParameter( "str_c_page" );
	if( str_c_page == null ) 
		str_c_page = "1";
	int c_page = Integer.parseInt( str_c_page );

	int total_cnt = 0;
	int list_num = 10;
	int start = 0;
	int t_page = 0;

	String dbsearch = request.getParameter( "dbsearch" );
	if( dbsearch == null || dbsearch.trim( ).length( ) == 0 )
		dbsearch = "%";
	
	try
	{
		String sql_n = "select count(*) from board ";
		sql_n += "where upper(dbsubject) like upper ('%" + dbsearch + "%')";


		stmt = conn.createStatement();
		rs = stmt.executeQuery( sql_n );

		if( rs.next() )
			total_cnt = rs.getInt(1);

		start = total_cnt - ( c_page - 1 ) * list_num;

		String sql_c = "";

		sql_c +=	 "select aid, dbname, dbsubject, to_char( dbdate, 'yyyy/mm/dd hh:mi:ss' ), dbhits, dbmemo from ( ";
		sql_c +=	"	select * from ( ";
		sql_c +=			"select * from ( ";
		sql_c +=				"select * from board order by rid asc ) ";
		sql_c +=			"where upper(dbsubject) like upper ('%" + dbsearch + "%') ) ";
		sql_c +=		"where rownum <= " + start + " order by rid desc ) ";
		sql_c +=	"where rownum <= " + list_num;
		rs = stmt.executeQuery( sql_c );
		int title_len = 100;
		int aid = start;

		while( rs.next() )
		{
			v_aid.addElement( Integer.toString( aid ) );
			v_articleid.addElement( Integer.toString( rs.getInt(1) ) );
			v_name.addElement( rs.getString(2) );
			v_subject.addElement( rs.getString(3) );
			v_date.addElement( rs.getString(4) );
			v_hits.addElement( Integer.toString( rs.getInt(5) ) );
			StringBuffer buf = new StringBuffer( rs.getString(6) );

			if( buf.length() > title_len )
			{
				buf.setLength( title_len ); 
				v_memo.addElement( buf + "..." );
			}
			else
				v_memo.addElement( buf );

			aid--;
		}
		stmt.close();
		rs.close();
	}
	catch( Exception e ) 
	{
		out.println( e.toString() );
	}
%>

<html>
<head>
<title>���</title>
</head>

<table cellspacing=1 width=700 border=0>
	<tr><td>�� �Խù���: <%=total_cnt%></td><td><p align=right>������:<%= c_page %></td></tr>
</table>

<table cellspacing=1 width=700 border=1>
	<tr>
	<td width=50><p align=center>��ȣ</p></td>
	<td width=100><p align=center>�̸�</p></td>
	<td width=320><p align=center>����</p></td>
	<td width=100><p align=center>�����</p></td>
	<td width=100><p align=center>��ȸ��</p></td>
	</tr>
<%
	for( int i=0; i<v_articleid.size(); i++ )
	{
%>
	<tr>
	<td width=50><p align=center><%=v_articleid.elementAt(i)%></p></td>
	<td width=100><p align=center><%=v_name.elementAt(i)%></p></td>
	<td width=320><p align=center><a href="board_view.jsp?str_aid=<%=v_articleid.elementAt(i)%>&str_c_page=<%=str_c_page%>" title="<%=v_memo.elementAt(i)%>"><%=v_subject.elementAt(i)%></p></td>
	<td width=100><p align=center><%=v_date.elementAt(i)%></p></td>
	<td width=100><p align=center><%=v_hits.elementAt(i)%></p></td>
	</tr>
<% 
	}
%>
<%
	if( ( total_cnt % list_num ) == 0 )
		t_page = total_cnt / list_num;
	else
		t_page = ( total_cnt / list_num ) + 1;

	int block_num = 5;
	int t_block = t_page / block_num;

	if( t_page % block_num != 0 ) 
		t_block++;
	
	int c_block = c_page / block_num;
	
	if( c_page % block_num != 0 )
		c_block++;
%>
</table>

<table cellspacing=1 width=700 border=1>
	<tr><td>
<%
	for( int i=(c_block-1)*block_num+1; i<=c_block*block_num && i<=t_page; i++ ) 
	{ 
%>
	<a href="board_list.jsp?str_c_page=<%=i%>">
<% 
	if( c_page == i ) 
		out.print( "<b>" );
%>
	[<%=i%>]
<% 
	if( c_page == i ) 
		out.print( "</b>" );
%>
<%
	} 
%>
	</td></tr>
</table>

<table width=700>
	<tr>
		<td><input type=button value="�۾���" OnClick="window.location='board_write.jsp'"></td>
		<td><form name=searchf method=post action="board_list.jsp">
			<p align=right><input type=text name=dbsearch size=50  maxlength=50>
			<input type=submit value="��ã��"></p></td>
	</tr>
</table>
</html>




