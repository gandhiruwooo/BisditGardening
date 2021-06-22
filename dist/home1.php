<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';?>
<title>Website Gardening</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

    <!-- temukan tanaman terbaik -->
    <div class="bg-gradient-to-r from-yellow-500 via-yellow-700 to-yellow-900 py-96 md:py-24">
            <div class="container px-6 mx-auto">

                <div class="text-center max-w-2xl mx-auto">
                    <h1 class="text-3xl text-white md:text-2xl font-semibold mb-2">TEMUKAN TANAMAN TERBAIK YANG KAMU INGINKAN</h1>
                    <a class="inline-flex items-center h-8 px-4 m-2 text-sm text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline hover:bg-black" href="caritanaman.html">CARI SEKARANG</a>
                    <div class="mt-4">
                        <img src="" class="d-block max-w-full">
                    </div>
                </div>
            </div>
        </div>
    </div>


<!--tanaman terlaris--> 
<h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2 py-8">Telusuri Tanaman Terlaris</h1>
    <div class="flex items-center justify-center">
      <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
          <!-- 1 card -->
          <a href="detailtanaman.html">
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
              <div class="mt-8">
                  <div class="flex space-x-2">
                      <img src="img/pilo.png" 
                      class="w-auto" style="border-radius: 5%"/>
                  </div>
                  <p class="text-xl font-semibold my-2">Philodendron Lynett</p>
                  <p class="text-l text-red-600 font-semibold my-2"> Terjual 66 </p>
                  <div class="flex space-x-2 text-black-400 text-sm">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                      <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                      <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                       <p>Rp 21.000 - 27.000 </p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>Tanaman Hias Outdoor</p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>60 - 70 cm</p> 
                  </div>
    
                  <div class="border-t-2"></div>
    
                  <div class="flex justify-between">
                      <div class="my-2">
                          <div class="flex space-x-2">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                                  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                                </svg>
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          </a>
    
          <!--card 2-->
          <a href="detailtanaman.html">
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
              <div class="mt-8">
                  <div class="flex space-x-2">
                      <img src="img/epis.png" 
                      class="w-auto" style="border-radius: 5%"/>
                  </div>
                  <p class="text-xl font-semibold my-2">Epis</p>
                  <p class="text-l text-red-600 font-semibold my-2"> Terjual 58 </p>
                  <div class="flex space-x-2 text-black-400 text-sm">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                      <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                      <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                       <p>Rp 29.500 - 33.000 </p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>Tanaman Gantung</p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p> 50 - 100 cm</p> 
                  </div>
    
                  <div class="border-t-2"></div>
    
                  <div class="flex justify-between">
                      <div class="my-2">
                          <div class="flex space-x-2">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                                  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                                </svg>
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          </a>
    
          <!--card 3-->
          <a href="detailtanaman.html">
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
              <div class="mt-8">
                  <div class="flex space-x-2">
                      <img src="img/peperomia.png" 
                      class="w-auto" style="border-radius: 5%"/>
                  </div>
                  <p class="text-xl font-semibold my-2">Peperomia</p>
                  <p class="text-l text-red-600 font-semibold my-2"> Terjual 50 </p>
                  <div class="flex space-x-2 text-black-400 text-sm">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                      <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                      <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                       <p>Rp 60.000 - 65.000 </p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>Tanaman Hias Indoor</p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>30 - 50 cm</p> 
                  </div>
    
                  <div class="border-t-2"></div>
    
                  <div class="flex justify-between">
                      <div class="my-2">
                          <div class="flex space-x-2">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                                  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                                </svg>
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          </a>
    
          <!--card 4-->
          <a href="detailtanaman.html">
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
              <div class="mt-8">
                  <div class="flex space-x-2">
                      <img src="img/keladi.png" 
                      class="w-auto" style="border-radius: 5%"/>
                  </div>
                  <p class="text-xl font-semibold my-2">Keladi</p>
                  <p class="text-l text-red-600 font-semibold my-2"> Terjual 74 </p>
                  <div class="flex space-x-2 text-black-400 text-sm">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                      <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                      <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                       <p>Rp 26.500 - 30.000 </p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>Tanaman Hias Outdoor</p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p>70 - 100 cm</p> 
                  </div>
    
                  <div class="border-t-2"></div>
    
                  <div class="flex justify-between">
                      <div class="my-2">
                          <div class="flex space-x-2">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                                  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                                </svg>
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg>
                          </div>
                      </div>
    
                  </div>
              </div>
          </div>
          </a>

      </div>
    </div>
  
<!-- telusuri alat berkebun-->
<div class="pt-20 pb-10">
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Telusuri Alat Berkebun</h1>
    <div class="pt-6 flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
        <!--PUPUK-->
            <a href="pupuk.html">
            <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex">
                        <p class="inline-flex text-right items-center h-14 px-14 m-2 text-lg text-gray-50 font-bold"> PUPUK </p>
                    </div>
                </div>
            </div>  
            </a> 
        <!--POT-->
        <a href="pot.html">
            <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex">
                        <p class="inline-flex items-center h-14 px-16 m-2 text-lg text-gray-50 font-bold my-2"> POT </p>
                    </div>
                </div>
            </div>  
            </a> 
        <!--MEDIA TANAM-->
        <a href="mediatanam.html">
            <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex">
                        <p class="inline-flex items-center h-14 px-4 m-2 text-lg text-gray-50 font-bold my-2"> MEDIA TANAM </p>
                    </div>
                </div>
            </div>  
            </a> 
        <!--ALAT-->
        <a href="alatalat.html">
            <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex">
                        <p class="inline-flex items-center h-14 px-8 m-2 text-lg text-gray-50 font-bold my-2"> ALAT-ALAT </p>
                    </div>
                </div>
            </div>  
            </a> 
    </div>
    </div>
</div>

<!-- telusuri mitra-->
<div class="pt-12 pb-20">
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Telusuri UMKM Berkebun di Surabaya</h1>
    <div class="flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
            <!-- 1 card -->
            <a href="profilmitra.html">
            <div class="relative bg-white rounded-3xl w-40 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex space-x-2">
                        <img src="img/plantsraw.jpg" class= "w-auto" style="border-radius: 5%">

                    </div>
                </div>
            </div>  
            </a>  

             <!-- 2 card -->
             <a href="profilmitra.html">
             <div class="relative bg-white rounded-3xl w-40 my-4 shadow-xl">
                <div class="mt-8">
                    
                    <div class="flex space-x-2">
                        <img src="img/tamanku.jpg" class= "w-auto" style="border-radius: 5%">
                    </div>
                </div>
            </div> 
            </a>   

             <!-- 3 card -->
             <a href="profilmitra.html">
                <div class="relative bg-white rounded-3xl w-40 my-4 shadow-xl">
                   <div class="mt-8">
                       
                       <div class="flex space-x-2">
                           <img src="img/lombokorchid.jpg" class= "w-auto" style="border-radius: 5%">
                       </div>
                   </div>
               </div> 
               </a>   

             <!-- 4 card -->
             <a href="profilmitra.html">
                <div class="relative bg-white rounded-3xl w-40 my-4 shadow-xl">
                   <div class="mt-8">
                       
                       <div class="flex space-x-2">
                           <img src="img/mitraflora.jpg" class= "w-auto" style="border-radius: 5%">
                       </div>
                   </div>
               </div> 
               </a>
        </div>
    </div>
</div>
    
<!-- galeri pajangan -->
<div class="pb-20"> 
<h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Galeri Pajangan</h1>
<div class="flex items-center justify-center">
<div class="empty">
    <div class="fill" draggable="true" style="background-image: url('https://source.unsplash.com/miziNqvJx5M/150x150');">
    </div>
</div>
<div class="empty">
    <div class="fill" draggable="true" style="background-image: url('https://source.unsplash.com/iylxQ1e6sOA/150x150');">
    </div>
</div>
<div class="empty"></div>
<div class="empty"></div>     
</div>
</div>


    <?php include_once 'layout/footer.php';?>
</body>
</html>
