


/*
console.log("=====================");
console.log("JS TEST");

var bnoValue = '<c:out value="${board.bno}" />';
*/
//addTest
/*
replyService.add(
	{ reply : "JS TEST", replyer:"tester", bno:bnoValue }
	,
	function(result) {
		alert("RESULT : " + result);
	}
});
*/

//getListTest
/*
replyService.getList({bno:bnoValue, page:1}, function(list) {
	for(var i = 0, len = list.length || 0; i < len; i++ ) {
		console.log(list[i]);
	}
});
*/

/*
//removeTest
replyService.remove(13, function(count) {
	console.log(count);
	
	if(count == "success") {
		alert("REMOVED");
	}
}, function(err) {
		alert("ERROR...")
	}
);
*/

/*
//updateTest
replyService.update({
	rno : 22 ,
	bno : bnoValue,
	reply : "Modified Reply....."
}, function(result) {
	alert("수정 완료");
});
*/

/*
//getTest
replyService.get(10, function(data){
	console.log(data);
});
*/


