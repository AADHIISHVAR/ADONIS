<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Button with Loading Animation</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins');

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #d6b398;
        }

        .selectnone {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-tap-highlight-color: transparent;
        }

        button {
            width: 150px;
            height: 50px;
            background: none;
            border: 2px solid #932e3e;
            border-radius: 50px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: .4s;
            position: relative;
        }

        button:hover {
            width: 170px;
            box-shadow: 0px 10px 10px rgba(0,0,0,0.4);
        }

        span, svg {
            position: absolute;
            color: #932e3e;
            fill: transparent;
            transition: .4s;
        }

        button:hover span {
            transition: .4s;
            font-size: 16px;
        }

        button:focus {
            outline: none;
            box-shadow: none;
            border: 2px solid transparent;
            width: 50px;
            border-left: 2px solid #932e3e;
            border-bottom: 2px solid #932e3e;
            animation: spin 2s 500ms forwards;
        }

        button:focus span {
            color: transparent;
        }

        button:focus svg {
            animation: check 500ms 2300ms forwards;
        }

        @keyframes spin {
            80% {
                border: 2px solid transparent;
                border-left: 2px solid #932e3e;
            }
            100% {
                transform: rotate(1080deg);
                border: 2px solid #932e3e;
            }
        }

        @keyframes check {
            to {
                fill: #932e3e;
            }
        }

        @keyframes circle {
            to {
                border: 2px solid #932e3e;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submit Your File</h2>
        <form action="upload" method="post" enctype="multipart/form-data">
            <div class="file-input">
                <input type="file" id="file" name="file" required>
                <label for="file">Choose a file</label>
            </div>
            <button class="selectnone" onclick="setTimeout(function() { alert('Successfully submitted! Redirecting to example.com'); window.location='https://example.com'}, 2500);">
                <span>Submit me</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                    <path d="M0 11c2.761.575 6.312 1.688 9 3.438 3.157-4.23 8.828-8.187 15-11.438-5.861 5.775-10.711 12.328-14 18.917-2.651-3.766-5.547-7.271-10-10.917z"/>
                </svg>
            </button>
        </form>
    </div>
</body>
</html>
