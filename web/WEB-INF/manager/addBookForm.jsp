
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <h3 class="w-100 text-center my-5 ">Добавить новый товар</h3>
    <div class="row w-50 mx-auto">
        <a href="uploadCoverForm" class="col-5 offset-4">Загрузить фото товара</a>
    </div>
    <div class="row w-50 mx-auto mb-3">
        <a href="uploadTextForm" class="col-5 offset-4">Загрузить описание товара</a>
    </div>
    <form action="createBook" method="POST">
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">
            Название товара 
        </div>
        <div class="col-8 text-start ">
          <input class="w-100" type="text" name="name">
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">
          Производитель 
        </div>
        <div class="col-8 text-start">  
          <input class="col-8" type="text" name="author">
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">   
            Срок годности 
        </div>
        <div class="col-8 text-start">  
          <input class="col-4" type="text" name="publishedYear">
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">   
            Цена: 
        </div>
        <div class="col-8 text-start">  
          <input class="col-4" type="text" name="price">
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">
            Изображение 
        </div>
        <div class="col-8 text-start">     
          <select class="form-select" name="coverId" aria-label="Выбрать обложку">
            <option selected>Open this select menu</option>
            <c:forEach var="cover" items="${listCovers}">
                  <option value="${cover.id}">${cover.description}</option>
            </c:forEach>
          </select>
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">
            Описание товара 
        </div>
        <div class="col-8 text-start">     
          <select class="form-select" name="textId" aria-label="Выбрать файл с текстом">
            <option selected>Open this select menu</option>
            <c:forEach var="text" items="${listTexts}">
                  <option value="${text.id}">${text.description}</option>
            </c:forEach>
          </select>
        </div>
      </div>
      <div class="row w-50 my-2 mx-auto">
        <div class="col-4 text-end">
              
        </div>
        <div class="col-8 text-start mt-3">     
          <input class="w-50 bg-primary text-white" type="submit" name="submit" value="Добавить">
        </div>
      </div>
    </form>
 