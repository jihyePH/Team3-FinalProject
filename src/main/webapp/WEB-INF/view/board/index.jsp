<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="h-100" lang="ko">
  <head>
  <%@ include file="../common/heading.jsp"%>
  </head>

  <body class="bg-black text-white mt-0" data-bs-spy="scroll" data-bs-target="#navScroll">
 	<%@ include file="../common/top.jsp" %>

    <main>
  <div class="w-100 overflow-hidden position-relative bg-black text-white" data-aos="fade">
  <div class="position-absolute w-100 h-100 bg-black opacity-75 top-0 start-0 "></div>
  <div class="container py-vh-4 position-relative mt-5 px-vw-5 text-center bg-black " >
  <div class="row d-flex align-items-center justify-content-center py-vh-5 rounded-4 bg-gradient rwd-table bg-black " >
    <div class="col-12 col-xl-10">
      <span class="h5 text-white fw-lighter">Our Mission</span>
      <h1 class="display-huge mt-3 mb-3 lh-1 text-white">Find your Health mate near by you</h1>
    </div>
    <div class="col-12 col-xl-8">
      <p class="lead text-white">근처에 있는 동네 운동친구를 만들어보세요! 그룹운동 게시판을 통해서 다같이 운동을 해보세요!</p>
    </div>
    <div class="col-12 text-center">
      <a href="/user/register" class="btn btn-xl btn-light">Join us
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
</svg>
</a>
    </div>
  </div>
</div>

</div>

<div class="w-100 position-relative bg-black text-white bg-cover d-flex align-items-center">
  <div class="container-fluid px-vw-5">
    <div class="position-absolute w-100 h-50 bg-dark bottom-0 start-0"></div>
    <div class="row d-flex align-items-center position-relative justify-content-center px-0 g-5">
      <div class="col-12 col-lg-6">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9zTXkwsmkLGyYF-g_CLB0G7_hRQ4_Zu6HmA&usqp=CAU" width="2280" height="1732" alt="abstract image" class="img-fluid position-relative rounded-5 shadow" data-aos="fade-up">
      </div>
      <div class="col-12 col-md-6 col-lg-3">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnrO5Vqw80In9NHk-bXYZGwi3C82Aj4A9Ycg&usqp=CAU" width="1116" height="1578" alt="abstract image" class="img-fluid position-relative rounded-5 shadow" data-aos="fade-up" data-aos-duration="2000">
      </div>
      <div class="col-12 col-md-6 col-lg-3">
        <img src="data:image/jpeg;base64,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" width="1116" height="848" alt="abstract image" class="img-fluid position-relative rounded-5 shadow" data-aos="fade-up" data-aos-duration="3000">
      </div>
    </div>
  </div>
</div>
<div class="bg-dark">
  <div class="container px-vw-5 py-vh-5">
    <div class="row d-flex align-items-center">
      <div class="col-12 col-lg-7 text-lg-end" data-aos="fade-right">
        <span class="h5 text-secondary fw-lighter">What we do</span>
        <h2 class="display-4">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</h2>
      </div>
      <div class="col-12 col-lg-5" data-aos="fade-left">
        <h3 class="pt-5">Product Design & Strategy</h3>
        <p class="text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
          <a href="/board/list" class="link-fancy link-fancy-light me-2">게시판 작성</a>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
</svg>
</p>
        <h3 class="border-top border-secondary pt-5 mt-5">Development & Engineering</h3>
        <p class="text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
          <a href="#" class="link-fancy link-fancy-light me-2">Tell me more</a>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
</svg>
</p>
      </div>
    </div>
  </div>
</div>

<div class="bg-black py-vh-3">
  <div class="container bg-black px-vw-5 py-vh-3 rounded-5 shadow">

  <div class="row gx-5">
    <div class="col-12 col-md-6">
      <div class="card bg-transparent mb-5" data-aos="zoom-in-up">
        <div class="bg-dark shadow rounded-5 p-0">
          <img src="/img/webp/abstract3.webp" width="582" height="327" alt="abstract image" class="img-fluid rounded-5 no-bottom-radius" loading="lazy">
          <div class="p-5">
            <h2 class="fw-lighter">Ipsum dolor est</h2>
            <p class="pb-4 text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
            <a href="#" class="link-fancy link-fancy-light">Read more</a>
          </div>
        </div>
      </div>

      <div class="card bg-transparent" data-aos="zoom-in-up">
        <div class="bg-dark shadow rounded-5 p-0">
          <img src="/img/webp/abstract2.webp" width="582" height="442" alt="abstract image" class="img-fluid rounded-5 no-bottom-radius" loading="lazy">
          <div class="p-5">
            <h2 class="fw-lighter">Ipsum dolor est</h2>
            <p class="pb-4 text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
            <a href="#" class="link-fancy link-fancy-light">Read more</a>
          </div>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6">
      <div class="p-5 pt-0 mt-5" data-aos="fade">
        <span class="h5 text-secondary fw-lighter">What we don´t know</span>
        <h2 class="display-4">There is a lot we don´t know. Here is a small sneak peek</h2>
      </div>
      <div class="card bg-transparent mb-5 mt-5" data-aos="zoom-in-up">
        <div class="bg-dark shadow rounded-5 p-0">
          <img src="/img/webp/abstract17.webp" width="582" height="390" alt="abstract image" class="img-fluid rounded-5 no-bottom-radius" loading="lazy">
          <div class="p-5">
            <h2 class="fw-lighter">Ipsum dolor est</h2>
            <p class="pb-4 text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
            <a href="#" class="link-fancy link-fancy-light">Read more</a>
          </div>
        </div>
      </div>

      <div class="card bg-transparent" data-aos="zoom-in-up">
        <div class="bg-dark shadow rounded-5 p-0">
          <img src="/img/webp/abstract4.webp" width="582" height="327" alt="abstract image" class="img-fluid rounded-5 no-bottom-radius" loading="lazy">
          <div class="p-5">
            <h2 class="fw-lighter">Ipsum dolor est</h2>
            <p class="pb-4 text-secondary">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
            <a href="#" class="link-fancy link-fancy-light">Read more</a>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

</div>
<div class="bg-dark position-relative">
  <div class="container px-vw-5 py-vh-5">
    <div class="row d-flex align-items-center">

      <div class="col-12 col-lg-7">
        <img class="img-fluid rounded-5 mb-n5 shadow" src="/img/webp/person9.webp" width="512" height="512" alt="a nice person" loading="lazy" data-aos="zoom-in-right">
        <img class="img-fluid rounded-5 ms-5 mb-n5 shadow" src="/img/webp/person11.webp" width="512" height="512" alt="another nice person" loading="lazy" data-aos="zoom-in-up">
      </div>
      <div class="col-12 col-lg-5 bg-dark rounded-5 py-5" data-aos="fade">
        <span class="h5 text-secondary fw-lighter">Do you like faces?</span>
        <h2 class="display-4">We constantly adding new images to our website. Does it make sense? No!</h2>
      </div>
    </div>
  </div>
</div>

<div class="bg-black">
<div class="container px-vw-5 py-vh-5">
  <div class="row d-flex align-items-center">
    <div class="col-12 col-lg-5 text-center text-lg-end" data-aos="zoom-in-right">
      <span class="h5 text-secondary fw-lighter">What we charge</span>
      <h2 class="display-4">You get all our knowledge for one simple price</h2>
    </div>
    <div class="col-12 col-lg-7 bg-dark rounded-5 py-vh-3 text-center my-5" data-aos="zoom-in-up">
      <h2 class="display-huge mb-5">
        <span class="fs-4 me-2 fw-light">$</span><span class="border-bottom border-5">499</span><span class="fs-6 fw-light">/day</span></h2>
      <p class="lead text-secondary">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <a href="#" class="btn btn-xl btn-light">Sign up
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
</svg>
</a>
    </div>
  </div>
</div>

</div>
<div class="container-fluid px-vw-5 position-relative" data-aos="fade">
<div class="position-absolute w-100 h-50 bg-black top-0 start-0"></div>
<div class="position-relative py-vh-5 bg-cover bg-center rounded-5" style="background-image: url(/img/webp/abstract12.webp)">
  <div class="container bg-black px-vw-5 py-vh-3 rounded-5 shadow">
  <div class="row d-flex align-items-center">

  <div class="col-6 d-flex align-items-center bg-dark shadow rounded-5 p-0" data-aos="zoom-in-up">
    <div class="row d-flex justify-content-center">
      <div class="col-12">
    <img src="/img/webp/person103.webp" width="684" height="457" alt="our CEO with some nice numbers" class="img-fluid rounded-5" loading="lazy">
  </div>
  <div class="col-12 col-lg-10 col-xl-8 text-center my-5">
    <p class="lead border-bottom pb-4 border-secondary">"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."</p>
    <p class="text-secondary text-center">Jane Doe, CEO</p>
</div>
</div>
</div>
  <div class="col-5 offset-1">
    <span class="h5 text-secondary fw-lighter">The numbers</span>
    <h2 class="display-huge fw-bolder" data-aos="zoom-in-left">+400</h2>
<p class="h4 fw-lighter text-secondary">
    Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
</p>

<h2 class="display-huge fw-bolder border-top border-secondary pt-5 mt-5" data-aos="zoom-in-left">78.981</h2>
<p class="h4 fw-lighter text-secondary">
Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
</p>
<h2 class="display-huge fw-bolder border-top border-secondary pt-5 mt-5" data-aos="zoom-in-left">98%</h2>
<p class="h4 fw-lighter text-secondary">
Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
</p>
</div>
  </div>
</div>

</div>
</div>
<div class="bg-dark py-vh-5">
<div class="container px-vw-5">
  <div class="row d-flex gx-5 align-items-center">
    <div class="col-12 col-lg-6">
      <div class="rounded-5 bg-black p-5 shadow" data-aos="zoom-in-right">
        <div class="fs-1">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


        </div>
        <p class="text-secondary lead">"Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat."</p>
        <div class="d-flex justify-content-start align-items-center border-top border-secondary pt-3">
          <img src="/img/webp/person14.webp" width="96" height="96" class="rounded-circle me-3" alt="a nice person" data-aos="fade" loading="lazy">
          <div>
            <span class="h6 fw-5">Jane Doemunsky</span><br>
            <small class="text-secondary">COO, The Boo Corp.</small>
          </div>
        </div>
      </div>
      <div class="rounded-5 bg-black p-5 shadow mt-5" data-aos="zoom-in-right">
        <div class="fs-1">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
  <path d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z"/>
</svg>

        </div>
        <p class="text-secondary lead">"Lorem ipsum dolor sit amet, consectetur tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."</p>
        <div class="d-flex justify-content-start align-items-center border-top border-secondary pt-3">
          <img src="/img/webp/person13.webp" width="96" height="96" class="rounded-circle me-3" alt="a nice person" data-aos="fade" loading="lazy">
          <div>
            <span class="h6 fw-5">Jane Doemunsky</span><br>
            <small class="text-secondary">COO, The Boo Corp.</small>
          </div>
        </div>
      </div>

    </div>
    <div class="col-12 col-lg-6">
      <div class="p-5 pt-0" data-aos="fade">
        <span class="h5 text-secondary fw-lighter">What others have to say</span>
        <h2 class="display-4">Invidunt ut labore et dolore magna aliquyam erat.</h2>
      </div>
      <div class="rounded-5 bg-black p-5 shadow mt-5 gradient" data-aos="zoom-in-left">
        <div class="fs-1">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>


        </div>
        <p class="lead">"Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."</p>
        <div class="d-flex justify-content-start align-items-center border-top pt-3">
          <img src="/img/webp/person16.webp" width="96" height="96" class="rounded-circle me-3" alt="a nice person" data-aos="fade" loading="lazy">
          <div>
            <span class="h6 fw-5">Jane Doemunsky</span><br>
            <small>COO, The Boo Corp.</small>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</div>

    </main>

    <footer class="bg-black border-top border-dark">
  <div class="container py-vh-4 text-secondary fw-lighter">
    <div class="row">
      <div class="col-12 col-lg-5 py-4 text-center text-lg-start">
            <a class="navbar-brand pe-md-4 fs-4 col-12 col-md-auto text-center" href="index.html">
  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-stack" viewBox="0 0 16 16">
    <path d="m14.12 10.163 1.715.858c.22.11.22.424 0 .534L8.267 15.34a.598.598 0 0 1-.534 0L.165 11.555a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.66zM7.733.063a.598.598 0 0 1 .534 0l7.568 3.784a.3.3 0 0 1 0 .535L8.267 8.165a.598.598 0 0 1-.534 0L.165 4.382a.299.299 0 0 1 0-.535L7.733.063z"/>
    <path d="m14.12 6.576 1.715.858c.22.11.22.424 0 .534l-7.568 3.784a.598.598 0 0 1-.534 0L.165 7.968a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.659z"/>
  </svg>
  <span class="ms-md-1 mt-1 fw-bolder me-md-5">Klar</span>
</a>

      </div>
      <div class="col border-end border-dark">
        <span class="h6">Company</span>
<ul class="nav flex-column">
  <li class="nav-item">
    <a href="#" class="link-fancy link-fancy-light">About us</a>
  </li>
  <li class="nav-item">
    <a href="#" class="link-fancy link-fancy-light">Legal</a>
  </li>

  <li class="nav-item">
    <a href="#" class="link-fancy link-fancy-light">Career</a>
  </li>
  <li class="nav-item">
    <a href="#" class="link-fancy link-fancy-light">Contact</a>
  </li>
</ul>
      </div>
      <div class="col border-end border-dark">
                <span class="h6">Services</span>
                <ul class="nav flex-column">
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Pricing</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Products</a>
                  </li>

                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Customers</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Portfolio</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Success Stories</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">More</a>
                  </li>
                </ul>
      </div>
      <div class="col">
                <span class="h6">Support</span>
                <ul class="nav flex-column">
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">About us</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Legal</a>
                  </li>

                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Career</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="link-fancy link-fancy-light">Contact</a>
                  </li>
                </ul>
      </div>
    </div>
  </div>
  <div class="container text-center small py-vh-2 border-top border-dark">Made by
    <a href="https://templatedeck.com" class="link-fancy link-fancy-light" target="_blank">templatedeck.com</a>
  </div>
</footer>








<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/aos.js"></script>
<script>
AOS.init({
 duration: 800, // values from 0 to 3000, with step 50ms
});
</script>
<script>
  let scrollpos = window.scrollY
  const header = document.querySelector(".navbar")
  const header_height = header.offsetHeight

  const add_class_on_scroll = () => header.classList.add("scrolled", "shadow-sm")
  const remove_class_on_scroll = () => header.classList.remove("scrolled", "shadow-sm")

  window.addEventListener('scroll', function() {
    scrollpos = window.scrollY;

    if (scrollpos >= header_height) { add_class_on_scroll() }
    else { remove_class_on_scroll() }

    console.log(scrollpos)
  })
</script>

  </body>
</html>
