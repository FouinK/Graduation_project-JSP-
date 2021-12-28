<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Viva La Trip</title>
    <!--CSS-->
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="header">
        <div class="container">
            <div class="header">
                <div class="header-logo">
                    <a id="logo">Viva La Trip</a>
                </div>
                <div class="header-menu">
                    <a>�� ����</a>
                    <a>���� �����</a>
                    <a href="login.html">�α���</a>
                </div>
            </div>
        </div>
    </div>
    <div id="map" style="width:100%;height:850px;"></div>

    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb35eb3a356a7589f696a82e382206f1&libraries=services"></script>
    <script>
        //���޾Ƽ� ���ƹ�����
        temp = location.href.split("?");

        //���ڵ��ؼ� ������ ���ܹ�����~
        var space = decodeURI(temp[1]);

        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
        var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
            mapOption = {
                center: new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
                level: 3 // ������ Ȯ�� ����
            };

        // ������ �����մϴ�    
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // ��� �˻� ��ü�� �����մϴ�
        var ps = new kakao.maps.services.Places();

        // Ű����� ��Ҹ� �˻��մϴ�
        ps.keywordSearch(space, placesSearchCB);

        // Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
        function placesSearchCB(data, status, pagination) {
            if (status === kakao.maps.services.Status.OK) {

                // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
                // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
                var bounds = new kakao.maps.LatLngBounds();

                for (var i = 0; i < data.length; i++) {
                    displayMarker(data[i]);
                    bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
                }

                // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
                map.setBounds(bounds);
            }
        }

        // ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
        function displayMarker(place) {

            // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(place.y, place.x)
            });

            // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
            kakao.maps.event.addListener(marker, 'click', function () {
                // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
                infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
                infowindow.open(map, marker);
            });
        }
    </script>

</body>

</html>