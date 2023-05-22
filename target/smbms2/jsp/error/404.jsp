<%--
  Created by IntelliJ IDEA.
  User: trevorwu
  Date: 2023/5/12
  Time: 09:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        setTimeout(function() {
            document.body.classList.add('timeout');
        }, 7000);

    </script>
    <style>@import url("https://fonts.googleapis.com/css?family=Fredoka+One");

    * {
        box-sizing: border-box;
    }
    body {
        height: 100vh;
        width: 100%;

        font-family: "Fredoka One", cursive;

        display: flex;
        justify-content: center;
        align-items: center;
    }
    .loader {
        width: 30vw;
        text-align: center;

    * {
        transition: 0.3s;
    }
    .progress {
        width: 100%;
        height: 0.5rem;
        background: rgba(0, 0, 0, 0.1);
        border-radius: 5rem;
        margin: 0.5rem 0;
        overflow: hidden;

    .current {
        background: black;
        height: 100%;

        animation: progress 5s ease-in-out;
        animation-fill-mode: forwards;
    }
    }
    .icon {
        height: 5vw;
        position: relative;
        text-align: left;
    svg {
        position: absolute;
        height: 5vw;
        width: auto;

        animation: position 5s ease-in-out;
        animation-fill-mode: forwards;
    }
    }
    .info {
        letter-spacing: 3px;
        font-size: 1.25rem;
    }
    .error {
        transform: scale(0);
        transition-delay: 0.5s;

    p+p{
        font-size:0.9rem;
        color: #37474F;
    }
    a {
        display: block;
        height: 24px;
        width: 24px;
        background: black;
        border-radius: 50%;
        margin: 0.5rem auto;

    svg {
        fill: white;
    }
    }
    }
    }

    .timeout .loader {
    .progress {
        transform: scale(0);
    }
    .icon svg {
        transform: scale(0);
    }
    .info {
        transform: scaley(0);
    }
    .error {
        transform: scale(1) translatey(-4rem);
    }
    .footer {
        opacity: 0;
    }
    }

    @keyframes position {
        0% {
            left: -10%;
        }
        25% {
            left: 15%;
        }
        50% {
            left: 30%;
        }
        100% {
            left: 70%;
        }
    }

    @keyframes progress {
        0% {
            width: 0%;
        }
        25% {
            width: 25%;
        }
        50% {
            width: 40%;
        }
        100% {
            width: 80%;
        }
    }

    .footer {
        position: fixed;
        bottom: 1rem;

        font-size: 0.65rem;

        transition: 0.3s;

    a {
        color: black;
    }
    }
    </style>
</head>
<body>
<div class="loader">
    <div class="icon">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 430.237 332.49875000000003" style="enable-background:new 0 0 430.237 265.999;" xml:space="preserve"><g><ellipse transform="matrix(0.2268 -0.9739 0.9739 0.2268 9.0956 171.5984)" cx="112.621" cy="80.071" rx="22.494" ry="22.495"/><path d="M17.898,252.771c21.584-10.25,34.558-25.968,41.4-41.031c3.552-7.755,5.614-15.291,6.782-22.02   c2.647,3.101,5.101,6.711,7.005,10.834c2.418,5.261,4.016,11.33,4.026,18.755c-0.002,6.229-1.148,13.464-4.201,21.948   c-2.341,6.493,1.026,13.656,7.521,15.997c1.4,0.504,2.832,0.743,4.238,0.743c5.121,0.001,9.924-3.169,11.761-8.265   c3.927-10.892,5.684-21.078,5.682-30.424c0.011-11.495-2.68-21.637-6.707-30.041c-5.263-10.978-12.604-19.006-19.169-24.636   c6.326-9.916,14.837-19.018,22.026-26.576c2.93,3.835,6.436,7.684,10.701,10.887c4.84,3.627,10.942,6.5,18.008,6.506   c0.022,0,0.044,0.001,0.067,0.001c4.559,0,9.312-1.278,13.788-3.811c2.237-1.259,3.628-3.435,3.982-5.791   c-6.333,2.475-12.515,3.414-18.25,3.046c-11.966-0.742-21.147-6.484-27.353-11.83c-0.233-0.201-0.471-0.402-0.695-0.602   c-1.628-1.453-3.053-2.879-4.281-4.203c-3.479-3.75-5.353-6.675-5.573-7.006c-1.06-1.661-1.507-3.538-1.399-5.365   c0.01-0.171,0.04-0.34,0.06-0.51c0.303-2.595,1.711-5.039,4.086-6.553c3.524-2.251,8.016-1.727,10.947,0.988   c0.544,0.504,1.039,1.073,1.459,1.725c0.001,0,0.001,0.001,0.002,0.002c0.005,0.009,0.019,0.03,0.041,0.063   c0.05,0.074,0.141,0.209,0.273,0.395c0.265,0.372,0.691,0.951,1.264,1.667c1.045,1.3,2.603,3.05,4.525,4.824   c1.789-5.424,1.386-11.052-2.162-14.738c-6.1-6.339-19.047-8.989-31.092,0.739c-16.487,13.473-24.704,23.818-34.32,44.012   c-2.966,7.687-2.304,13.344,0.08,17.677c0.044,0.894,0.076,1.93,0.076,3.116c0.017,6.675-1.037,17.457-5.91,28.002   c-4.942,10.567-13.213,21.065-29.476,28.922c-6.228,2.98-8.861,10.443-5.882,16.671C4.206,253.117,11.67,255.752,17.898,252.771z"/><path d="M109.14,124.503c-0.812-0.722-1.552-1.438-2.228-2.127c-1.305-1.331-2.352-2.551-3.085-3.463   c-0.603-0.75-1.048-1.358-1.336-1.758l-0.289-0.419l-0.059-0.089l-0.017-0.027c-2.081-3.23-6.409-4.177-9.649-2.107   c-1.887,1.202-3.092,3.255-3.225,5.492c-0.088,1.477,0.289,2.92,1.117,4.215c1.098,1.67,4.219,6.061,9.467,10.744   c0.249,0.221,0.502,0.43,0.752,0.645c8.049,6.909,16.821,10.713,26.097,11.29c5.968,0.382,12.097-0.724,18.155-3.215   c4.256-1.749,8.478-4.177,12.584-7.278c1.652-1.239,2.669-3.131,2.791-5.192c0.097-1.647-0.395-3.284-1.389-4.608   c-1.12-1.496-2.756-2.467-4.607-2.73c-1.85-0.267-3.694,0.206-5.199,1.334c-7.583,5.623-14.415,8.074-21.507,7.715   c-7.859-0.422-14.328-4.811-18.369-8.415C109.143,124.506,109.141,124.505,109.14,124.503z"/><circle cx="297.237" cy="133" r="133"/></g></svg>
    </div>
    <div class="progress"><div class="current"></div></div>
    <div class="error">
        <p>404 NOT FOUND</p>
        <p>you can only push someone so far before they break</p>
        <a href="javascript:window.location.href = window.location.href;"><svg width="24" height="24" viewBox="0 0 24 24">
            <path d="M19,8L15,12H18A6,6 0 0,1 12,18C11,18 10.03,17.75 9.2,17.3L7.74,18.76C8.97,19.54 10.43,20 12,20A8,8 0 0,0 20,12H23M6,12A6,6 0 0,1 12,6C13,6 13.97,6.25 14.8,6.7L16.26,5.24C15.03,4.46 13.57,4 12,4A8,8 0 0,0 4,12H1L5,16L9,12"></path>
        </svg></a></div>
</div>
<div class="footer">Man Pushing Big Ball by Gan Khoon Lay from the <a href="https://thenounproject.com/">Noun Project</a>.</div>
</body>
</html>
