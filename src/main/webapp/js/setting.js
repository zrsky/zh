 var index;
     $(".change").click(function(e){
        $(".write input").css({"display":"none"});
        $(this).siblings('input').css({"display":"inline-block"});
        index = $(".change").index(this);
        e.stopPropagation();
     });

     $(".write input").click(function(e){
        $(this).css({"display":"inline-block"});

        e.stopPropagation();
     })
     $(document).click(function(e){
        $(".write input").css({"display":"none"});
        // e.stopPropagation();
        var content = $(".write input").eq(index).val();
        
        if(content==""&&typeof index!='undefined'){
            $(".write .val").eq(index).html("未填写");
        }else if(typeof index!='undefined'){
            $(".write .val").eq(index).html(content);
        }
     })