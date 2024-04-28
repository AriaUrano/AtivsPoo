<%-- 
    Document   : index
    Created on : 27 de abr. de 2024, 20:36:12
    Author     : ariad
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    </head>
    <body>
      
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Index</h1>
          
      <h2>Dados do JSON:</h2>
      
  <div id="app">
    <ul>
        <li v-for="(value, key) in items" :key="key">
            {{ key }}: {{ value }}
        </li>
    </ul>
</div>

<script>
    const { createApp } = Vue;

    createApp({
        data() {
            return {
                items: {}
            };
        },
        methods: {
            async fetchData() {
                const url = 'ariadne.json';
                const response = await fetch(url);
                this.items = await response.json();
            }
        },
        mounted() {
            this.fetchData();
        }
    }).mount('#app');
</script>
          

          
       
        
          
    </body>
</html>
