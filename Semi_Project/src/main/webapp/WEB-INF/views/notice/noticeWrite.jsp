<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" write="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="resources/css/noticeWritePage.css" rel="stylesheet" type="text/css"/>
<title>공지사항 작성 페이지</title>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div class="container-fluid">
		<div id="notice_title">
    		<p>공지사항 게시판</p>
  		</div>	
		
		<form action="noticeWrite.no" method="post" id="form">
			<div>
				<div class="input-group mb-3" id="write_title">
		  			<span class="input-group-text" id="notic_write_title_">
		  				&nbsp
			  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
	  					<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2m.995-14.901a1 1 0 1 0-1.99 0A5 5 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901"/>
						</svg>								  			
		  				&nbsp공지사항
		  			</span>
		 			<input type="text" name="title" class="form-control" id="notic_write_title" placeholder="제목 입력"/>
				</div>
				
				<div>
					 <textarea class="form-control" name="content" placeholder="내용 입력" id="notic_write_text"></textarea>				
				</div>		
			</div>
				
			<div class="mx-auto" style="width:80px;">
				<button class="btn btn-primary me-md-2" id ="submit_button" type="button">등록</button>
			</div>
		</form>	
		<jsp:include page="../common/topButton.jsp"></jsp:include>	
	</div>
	<jsp:include page="../common/footer.jsp"/>
	
	
	
	<script>
		window.onload = () => {
			
			const submitButton = document.getElementById("submit_button");
			
			submitButton.addEventListener('mouseover',function(){
				this.style.background = "#a5250a";
				this.style.fontWeight = "600";
			})
			submitButton.addEventListener('mouseout',function(){
				this.style.fontWeight = "400";
				this.style.background = "#f24822";
			})	
			
			const inputs = document.getElementsByClassName("form-control")
			for(const input of inputs ){
				input.addEventListener('focus', function(){
					this.style.boxShadow = 'none';
					this.style.borderColor = "#b3b3b3";
				});
				input.addEventListener('keydown', function(e){
					if(e.key === 'Enter' || e.keyCode === 13){
						e.preventDefault();
					}
				});
				
			}
			

			submitButton.addEventListener('click', ()=>{
				const title = document.getElementById("notic_write_title").value;
				const text = document.getElementById("notic_write_text").value;
				const form = document.getElementById("form");
				
				if(title.trim() === ''){
					alert("게시글 제목을 입력해주세요")					
				}else if(text.trim() === ''){
					alert("게시글 내용을 입력해주세요")
				}else{
					form.submit();
				}
								
			});
			

			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}
	</script>
</body>
</html>
