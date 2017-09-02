//function checkna(){
//    na=form1.yourname.value;
//    if( na.length <1 || na.length >12)
//    {
//        divname.innerHTML='<font class="tips_false">长度是1~12个字符</font>';
//
//    }else{
//        divname.innerHTML='<font class="tips_true">输入正确</font>';
//
//    }
//
//}
//验证密码 
function checkpsd1(){
    psd1=form1.yourpass.value;
    var flagZM=false ;
    var flagSZ=false ;
    var flagQT=false ;
    if(psd1.length>0){
        if(psd1.length<6 || psd1.length>12){
            divpassword1.innerHTML='<font class="tips_false">密码长度必须大于6位</font>';
        }else
        {
            for(i=0;i < psd1.length;i++)
            {
                if((psd1.charAt(i) >= 'A' && psd1.charAt(i)<='Z') || (psd1.charAt(i)>='a' && psd1.charAt(i)<='z'))
                {
                    flagZM=true;
                }
                else if(psd1.charAt(i)>='0' && psd1.charAt(i)<='9')
                {
                    flagSZ=true;
                }else
                {
                    flagQT=true;
                }
            }
            if(!flagZM||!flagSZ||flagQT){
                divpassword1.innerHTML='<font class="tips_false">必须使用字母数字组合</font>';

            }else{

                divpassword1.innerHTML='<font class="tips_true">输入正确</font>';

            }
        }
    }else{
        divpassword1.innerHTML='<font class="tips_0">请输入密码</font>';
    }
}
//验证确认密码 
function checkpsd2(){
    psd2=form1.yourpass.value;
    var flagZM=false ;
    var flagSZ=false ;
    var flagQT=false ;
    if(psd2.length<6 || psd2.length>12){
        divpassword2.innerHTML='<font class="tips_false"></font>';
    }else
    {
        for(i=0;i < psd2.length;i++)
        {
            if((psd2.charAt(i) >= 'A' && psd2.charAt(i)<='Z') || (psd2.charAt(i)>='a' && psd2.charAt(i)<='z'))
            {
                flagZM=true;
            }
            else if(psd2.charAt(i)>='0' && psd2.charAt(i)<='9')
            {
                flagSZ=true;
            }else
            {
                flagQT=true;
            }
        }
        if(!flagZM||!flagSZ||flagQT){
            divpassword2.innerHTML='<font class="tips_false"></font>';

        }else{
            if(form1.yourpass.value!=form1.yourpass2.value) {
                divpassword2.innerHTML='<font class="tips_false">两次密码不一样</font>';
            } else {
                divpassword2.innerHTML='<font class="tips_true">输入正确</font>';
            }
        }
    }
}
//验证邮箱相当于用户名

function checkmail(){
    apos=form1.youremail.value.indexOf("@");
    dotpos=form1.youremail.value.lastIndexOf(".");
    email=form1.youremail.value;
    if(email.length>0){
        if (apos<1||dotpos-apos<2)
        {
            divmail.innerHTML='<font class="tips_false">请输入正确的邮箱号</font>' ;
        }
        else {
            divmail.innerHTML='<font class="tips_true">输入正确</font>' ;
        }
    }else{
        divmail.innerHTML='<font class="tips_0">请输入邮箱</font>'
    }
}
/* mokuai donghua */
//$(function(){
//    $(".cont-sign").hover(function(){
//        $(this).removeClass(".cont-sign");
//        $(this).addClass(".cont-end");
//        $(this).siblings().removeClass(".cont-end");
//        $(this).siblings().addClass(".cont-sign");
//    });
//});
/* mokuai donghua end*/