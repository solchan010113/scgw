<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/include/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/board/boardWrite.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ckeditor/UploadAdapter.js"></script>
</head>
<body>
	<jsp:include page="../include/sideBar.jsp"></jsp:include>
	<div class="wrap">
		<div class="content">
			<div class="editorTop fs-2">글 작성</div>
			<form id="boardForm" action="${pageContext.request.contextPath}/board/writeAction" method="get">
				<div class="input-group">
					<span class="input-group-text" id="basic-addon1">제목</span>
				    <input type="text" id="title" name="title" class="form-control" placeholder="제목을 입력해주세요." aria-label="제목" aria-describedby="basic-addon1">
				</div>
				<div id="editor"></div>
				<button type="submit" class="btn btn-primary" id="write">작성 완료</button>
				<button type="button" class="btn btn-danger">취소</button>
				
				<input type="hidden" id="content" name="content">
			</form>
		</div>
	</div>

	<script>
		let editor;
		
		function MyCustomUploadAdapterPlugin(editor) {
		    editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
		        return new UploadAdapter(loader)
		    }
		}
		 
		ClassicEditor
		  .create(document.querySelector( '#editor' ), {
			 	extraPlugins: [MyCustomUploadAdapterPlugin],
		  })
		  .then(newEditor => {
		    editor = newEditor;
		  })
		  .catch( error => {
		    console.error( error );
		  });
 
		$("#boardForm").on("submit",() => {
			console.log(editor.getData() == "");
			
			if($("#title").val() == "") {
				
				return false;
			} else if (editor.getData() == "") {
				
				return false;
			}
			
			$("#content").val(editor.getData());
			return true;
		})
	</script>
</body>
</html>