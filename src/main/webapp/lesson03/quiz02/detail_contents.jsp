<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 아티스트 정보 
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();
    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);
    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>    

<h4 class="mt-3 font-weight-bold">곡 정보</h4>
<div class="border border-success d-flex">
	<%
		String title = request.getParameter("title");
		String keyword = request.getParameter("keyword");
		for (Map<String, Object> item : musicList) {
			if (item.get("title").equals(title) || item.get("title").equals(keyword)) {
	%>
	<div>
		<img src="<%=item.get("thumbnail")%>" alt="앨범 이미지" width="200"
			height="200" class="m-4">
	</div>
	<div class="mt-4">
		<h1><%= item.get("title") %></h1>
		<span class="text-success font-weight-bold"><%= item.get("singer") %></span><br><br>
		<div class="d-flex">
			<small class="text-secondary mr-5">앨범</small>
			<small class="text-secondary ml-2"><%= item.get("album") %></small>
		</div>
		<div class="d-flex">
			<small class="text-secondary mr-4">재생시간</small>
			<small class="text-secondary ml-1"><%= (int)item.get("time") / 60 %> : <%= (int)item.get("time") % 60 %></small>
		</div>
		<div class="d-flex">
			<small class="text-secondary mr-4">작곡가</small>
			<small class="text-secondary ml-3"><%= item.get("composer") %></small>
		</div>
		<div class="d-flex">
			<small class="text-secondary mr-4">작사가</small>
			<small class="text-secondary ml-3"><%= item.get("lyricist") %></small>
		</div>
	</div>
	<%
			}
		}
	%>
</div>
<h4 class="mt-5 font-weight-bold">가사</h4><hr>
<span>가사 정보 없음</span>
<br><br><br><hr>