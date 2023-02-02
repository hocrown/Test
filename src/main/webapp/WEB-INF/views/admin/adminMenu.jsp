<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<div class="b-example-divider b-example-vr"></div>

  <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
    <a  class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">관리자 페이지</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#mem-collapse" aria-expanded="false">
          회원관리
        </button>
        <div class="collapse" id="mem-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">

            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded" onClick="location.href='/admin/adminUser'">회원정보</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded" onClick="location.href='/admin/adminHospital'">병원정보</a></li>

          </ul>
        </div>
      </li>	
   

      <li class="border-top my-3"></li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#cus-collapse" aria-expanded="false">
          고객센터
        </button>
        <div class="collapse" id="cus-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
             <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded" onClick="location.href='/admin/adminNotice'">공지사항</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded" onClick="location.href='/admin/adminQna'">Q&A</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded" onClick="location.href='/admin/adminReport'">신고</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
  

