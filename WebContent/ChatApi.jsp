<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
out.clear();

String action=request.getParameter("action");
if(action!=null){
	if(action.equals("send_pass")){
		out.print("{\"status\":1}");
	}else if(action.equals("login")){
		out.print("{\"status\":1,\"token\":\"mmmsd\"}");
		
	}else if(action.equals("upload_contacts")){
		out.print("{\"status\":1}");
	}else if(action.equals("timeline")){
		out.print("{\"status\":1,\"page\":1,\"perpage\":20,\"timeline\":["+
	"{\"msgId\":\"2323\",\"msg\":\"hhhsssss\",\"phone_md5\":\"ddfff\"},"+
	"{\"msgId\":\"2323\",\"msg\":\"hsdfgskgjkl\",\"phone_md5\":\"ddfff\"},"+
	"{\"msgId\":\"2323\",\"msg\":\"jjjjj\",\"phone_md5\":\"ddfff\"},"+
	"{\"msgId\":\"2323\",\"msg\":\"mnmmmm\",\"phone_md5\":\"ddfff\"}"+
			"]}");

	}else if(action.equals("get_comment")){
		out.print("{\"status\":1,\"page\":1,\"perpage\":20,\"msgId\":\"2323\",\"comment\":["+
	"{\"content\":\"i love you\",\"phone_md5\":\"ddfff\"},"+
	"{\"content\":\"do you know that\",\"phone_md5\":\"ddfff\"},"+
	"{\"content\":\"that is right\",\"phone_md5\":\"ddfff\"},"+
	"{\"content\":\"can you help me\",\"phone_md5\":\"ddfff\"}"+
			"]}");

	}else if(action.equals("pub_comment")){
		out.print("{\"status\":1}");
	}else if(action.equals("publish")){
		out.print("{\"status\":1}");
	}
}else{
	out.print("请指定action");
}

%>
