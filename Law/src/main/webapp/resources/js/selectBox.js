	 
 function categoryChange(e) {
		var good_a = [ ];
		var good_b = [ ];
		var target = document.getElementById("good");

		if(e.value == "a") var d = good_a;
		else if(e.value == "b") var d = good_b;
		else if(e.value == "c") var d = good_c;

		target.options.length = 0;

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}	
}