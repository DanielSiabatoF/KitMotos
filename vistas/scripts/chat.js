var app = angular.module("chat-app",[]);
app.controller("chat-controller", ['$scope', function($scope,$http){
    var users=[
        {
            id:"0",
            name:"anuragasurus",
            profimage:"http://wallpapercave.com/wp/sbWDAui.jpg"
        },
        {
            id:"1",
            name: "John Smith",
            profimage: "https://s-media-cache-ak0.pinimg.com/564x/d3/7c/95/d37c95fa337e60c56f5d62608a8aeae9.jpg"
        }, {
            id:"2",
            name: "John Doe",
            profimage: "http://wallpapercave.com/wp/sbWDAui.jpg"
        }, {
            id:"3",
            name: "Trevor",
            profimage:"http://cdn.paper4pc.com/images/superman-wallpaper-10.jpg"
        }];

    var user_id = "0";
    //$("#chat-body").hide();


    $("#chat-header").click(function() {
        $("#chat-body").slideToggle('slow');
    });

    setTimeout(function(){
        $("#chat-header").click();
    }, 1000);


    function convertTimeToString(timestamp){
        const d1 = new Date(timestamp);
        return " at "+d1.getHours()+":"+d1.getMinutes();
    }

    Array.remove = function(array, from, to) {
        var rest = array.slice((to || from) + 1 || array.length);
        array.length = from < 0 ? array.length + from : from;
        return array.push.apply(array, rest);
    };

    //this variable represents the total number of popups can be displayed according to the viewport width
    //esta variable representa el número total de ventanas emergentes que se pueden mostrar según el ancho de la ventana gráfica
    var total_popups = 0,popups=[];

    //arrays of popups ids
    //matrices de identificadores de ventanas emergentes

    // esto se usa para cerrar una ventana emergente
    //this is used to close a popup
    function close_popup(id) {
        console.log("close popup");
        for (var iii = 0; iii < popups.length; iii++) {
            if (id == popups[iii]) {
                Array.remove(popups, iii);

                document.getElementById(id).style.display = "none";

                calculate_popups();

                return;
            }
        }
    }

    //displays the popups. Displays based on the maximum number of popups that can be displayed on the current viewport width
    //muestra las ventanas emergentes. Se muestra en función del número máximo de ventanas emergentes que se pueden mostrar en el ancho de la ventana gráfica actual
    function display_popups() {
        var right = 290;
        console.log(popups);
        var iii = 0;
        for (iii; iii < total_popups; iii++) {
            if (popups[iii] != undefined) {
                var element = document.getElementById(popups[iii]);
                element.style.right = right + "px";
                right = right + 320;
                element.style.display = "block";
            }
        }

        for (var jjj = iii; jjj < popups.length; jjj++) {
            var element = document.getElementById(popups[jjj]);
            element.style.display = "none";
        }
    }

    //creates markup for a new popup. Adds the id to popups array.
    //crea marcas para una nueva ventana emergente. Agrega la identificación a la matriz de ventanas emergentes
    function register_popup(name, id, profimage) {
        console.log("register_popup");
        id=id.toString();
        console.log(id, name);
        for (var iii = 0; iii < popups.length; iii++) {
            //already registered. Bring it to front.
            //ya registrado. Llévalo al frente.
            if (id == popups[iii]) {
                Array.remove(popups, iii);

                popups.unshift(id);

                calculate_popups();

                return;
            }
        }

        var element = '<div class="popup-box chat-popup" id="' + id + '">';
        element = element + '<div class="popup-head" id="popup_head_' + id + '" onclick="handle_click_on_popup_head('+id+')">';
        element = element + '<div class="popup-head-left"><img class="profimage" src="'+profimage+'" /><span>' + name + '</span></div>';
        element = element + '<div class="popup-head-right"><a href="javascript:close_popup(\'' + id + '\')">&#10005;</a></div>';
        element = element + '</div><div class="popup-messages" id="popup_messages_' + id + '"><div class="user_messages" id="user_messages_' + id + '"><ul class="chats"></ul></div><div class="textarea-div" id="textarea_div_' + id + '"><textarea class="msg_input" id="textarea_' + id + '" onkeypress="handle_click_on_textarea(event, '+id+')"></textarea></div>' + '</div></div>';

        const chat_popup_html = $("#chat_popups").html();

        $("#chat_popups").html(chat_popup_html + element);

        function handle_click_on_textarea(e,id) {
            e = e || window.event;
            var msg = $("#textarea_"+id).val();

            if (e.keyCode == 13) {
                $("#textarea_"+id).val('');
                if(msg!="" && msg!="\n"){
                    $("#user_messages_" + id+" .chats").append("<li class='out'><img class='avatar' alt='' src='"+users[user_id].profimage+"'><div class='message'><span class='arrow'></span><span class='name'>"+users[user_id].name+"</span><span class='datetime'>"+convertTimeToString(Date.now())+"</span><span class='body'>" + msg + "</span></div></li>");

                    $("#user_messages_" + id).scrollTop($("#user_messages_" + id).get(0).scrollHeight);
                }
            }
        };

        function handle_click_on_popup_head(id) {
            console.log("popup head clicked");
            $("#popup_messages_" + id).slideToggle('slow');
            $("#textarea_"+ id).slideToggle('slow');
            $("#unread_message_"+id).text('');
            $("#unread_message_"+id).hide();
            $("#user_messages_" + id).scrollTop($("#user_messages_" + id).get(0).scrollHeight);
        };




        popups.unshift(id);

        calculate_popups();

        window.handle_click_on_popup_head = handle_click_on_popup_head;
        window.handle_click_on_textarea = handle_click_on_textarea;

    }


    function handle_key_press(e) {
        console.log("key pressed");
        if (e.keyCode == 13) {
            e.preventDefault();
            console.log("Enter pressed");
        }
    }

    //calculate the total number of popups suitable and then populate the toatal_popups variable.
    function calculate_popups() {
        var width = window.innerWidth;
        if (width < 600) {
            total_popups = 0;
        } else {
            width = width - 290;
            //320 is width of a single popup box
            total_popups = parseInt(width / 320);
        }

        display_popups();

    }
    $scope.users = users;
    $scope.register_popup =register_popup;
    window.close_popup = close_popup;
    window.addEventListener("resize", calculate_popups);
}]);