var recommendationJS={maxProductsToDisplay:"",emsName:"",storeId:"",actionName:"freshenRecommendationAjax",serverURL:"",pageNumber:1,totalCatentryIds:"",refeshResult:"",ajaxStoreImageDir:"",initRefreshProductsURL:function(){if(this.totalCatentryIds!=null&&this.totalCatentryIds!=""){var B=this.totalCatentryIds.split(",");if(B!=null&&B.length>0){if(B.length<=this.maxProductsToDisplay){return""}else{this.pageNumber++;var D="";for(var A=((this.pageNumber-1)*this.maxProductsToDisplay),E=(this.pageNumber*this.maxProductsToDisplay)>B.length?B.length:(this.pageNumber*this.maxProductsToDisplay);A<E;A++){D+=","+B[A]}if((this.pageNumber*this.maxProductsToDisplay)>=B.length){this.pageNumber=0}var C=this.serverURL+this.actionName+"?storeId="+this.storeId+"&catentryIds="+D.substring(1)+"&emsName="+this.emsName+"&maxProductsToDisplay="+this.maxProductsToDisplay+"&ajaxStoreImageDir="+this.ajaxStoreImageDir;return C}}else{return""}}else{return""}},doRefreshCatalogEntryRecommendation:function(){var A=this.initRefreshProductsURL();if(A!=null&&A!=""){$.ajax({type:"GET",url:A,data:{},dataType:"html",success:function(B){$("#recommendation_ajaxReflesh_ul").html(B)}})}},initGOTOProductsURL:function(){var F="";if(this.totalCatentryIds!=null&&this.totalCatentryIds!=""){var C=this.totalCatentryIds.split(",");if(C!=null&&C.length>0){if(this.maxProductsToDisplay>C.length){F=","+this.totalCatentryIds}else{var E=0;if(this.pageNumber<=0){E=C.length+(this.pageNumber%C.length)}else{if(this.pageNumber>=C.length){E=this.pageNumber%C.length}else{E=this.pageNumber}}E=E-1;for(var B=0;B<this.maxProductsToDisplay;B++){if(E+B<C.length){F=F+","+C[E+B]}else{var A=(E+B)%(C.length);F=F+","+C[A]}}}}}var D="";if(F!=null&&F!=""){D=this.serverURL+this.actionName+"?scop=cart&storeId="+this.storeId+"&catentryIds="+F.substring(1)+"&emsName="+this.emsName+"&maxProductsToDisplay="+this.maxProductsToDisplay+"&ajaxStoreImageDir="+this.ajaxStoreImageDir}return D},showNext:function(A){this.pageNumber=this.pageNumber+A;var B=this.initGOTOProductsURL();if(B!=null&&B!=""){$.ajax({type:"GET",url:B,data:{},dataType:"html",success:function(C){$("#recommendation_ajaxReflesh_ul").html(C)}})}}};