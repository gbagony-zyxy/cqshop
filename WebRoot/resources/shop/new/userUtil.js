function setInputOnlyNum(A){$("."+A).keydown(function(B){if(navigator.userAgent.indexOf("MSIE")>0){if(((B.keyCode>47)&&(B.keyCode<58))||((B.keyCode>=96)&&(B.keyCode<=105))||(B.keyCode==8)||(B.keyCode==86)||(B.keyCode==67)||(B.keyCode==13)||(B.keyCode==27)||(B.keyCode==45)||(B.ctrlKey&&B.keyCode==13)||(B.keyCode==9)){return true}else{return false}}else{if(((B.which>47)&&(B.which<58))||((B.keyCode>=96)&&(B.keyCode<=105))||(B.which==8)||(B.which==86)||(B.keyCode==67)||(B.keyCode==13)||(B.keyCode==27)||(B.keyCode==45)||(B.ctrlKey&&B.keyCode==13)||(B.keyCode==9)){return true}else{return false}}}).bind("blur",function(){if(!/\d+/.test(this.value)||this.value.indexOf(" ")>=0){this.value=""}}).bind("input",function(B){if(isNaN(this.value)||this.value.indexOf(" ")>=0){this.value=this.value.replace(/\D/g,"")}}).bind("propertychange",function(B){if(isNaN(this.value)||this.value.indexOf(" ")>=0){this.value=this.value.replace(/\D/g,"")}}).focus(function(){this.style.imeMode="disabled"}).bind("dragenter",function(){return false}).keyup(function(B){if(isNaN($(this).val())||this.value.indexOf(" ")>=0){$(this).val("");return}})};