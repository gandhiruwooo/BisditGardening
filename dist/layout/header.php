<!DOCTYPE html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Styles -->
    <script src="https://kit.fontawesome.com/a432c39d15.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro|Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
   <link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   <link href="https://fonts.googleapis.com/css?family=Inter:400,500,600,700&display=swap" rel="stylesheet">
   <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
   <link href="./assets/css/filterlist.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>-->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Custom style -->
    <link rel="stylesheet" href="style.css">
    <style>
        .navbar {
        overflow: hidden;
        background-color: #064e3b;
        }
  
        /* Navigation links */
        .navbar a {
        float: left;
        font-size: 16px;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        margin-top: 10px;
        margin-bottom: 0px;
        }
  
        /* The subnavigation menu */
        .subnav {
        float: left;
        overflow: hidden;
        }
  
        /* Subnav button */
        .subnav .subnavbtn {
        font-size: 16px;
        border: none;
        outline: none;
        color: white;
        padding: 14px 16px;
        background-color: inherit;
        font-family: inherit;
        margin: 0;
        margin-top: 10px;
        margin-bottom: 0px;
        }
  
        /* Add a red background color to navigation links on hover */
        .navbar a:hover, .subnav:hover .subnavbtn {
        background-color: #2F5D62;
        }
  
        /* Style the subnav content - positioned absolute */
        .subnav-content {
        display: none;
        position: absolute;
        left: 0;
        background-color: #064e3b;
        width: 100%;
        z-index: 1;
        }
  
        /* Style the subnav links */
        .subnav-content a {
        float: left;
        color: white;
        text-decoration: none;
        display: block;
        text-align: left;
        }
  
        /* Add a grey background color on hover */
        .subnav-content a:hover {
        background-color: #eee;
        color: black;
        }

        /* When you move the mouse over the subnav container, open the subnav content */
        .subnav:hover .subnav-content {
        display: block;
        background-color: #2F5D62;
        }

        /* Style the search box inside the navigation bar */
        .navbar .search-container {
        float: right;
        }

        .navbar input[type=text] {
        padding: 6px 10px;
        margin-top: 15px;
        margin-bottom: 0px;
        margin-right: 30px;
        font-size: 17px;
        border: none;
        border-radius: 10px;
        }

        .fill {

            position: relative;
            height: 150px;
            width: 150px;
            top : 5px;
            left: 5px;
            cursor: pointer;
        }

        .empty {
            display: inline-block;
            height: 160px;
            width: 160px;
            margin: 10px;
            border: black 2px;
            background-color:goldenrod;
        }

        .hold {
            border: solid black 2px;
        }

        .hovered {
            background:palegoldenrod;
            border-style: dashed;
        }

        .invisible {
            display: none;
        }
    </style>
