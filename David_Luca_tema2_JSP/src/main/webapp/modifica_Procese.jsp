<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page language="java"
import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>

<!DOCTYPE html>
<html style="font-size: 16px" lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta
      name="keywords"
      content="Proiect PIBD: Crearea si gestionarea&nbsp;bazelor de date"
    />
    <meta name="description" content="" />
    <title>Judecatori</title>
    <link rel="stylesheet" href="nicepage.css" media="screen" />
    <link rel="stylesheet" href="Judecatori.css" media="screen" />
    <script
      class="u-script"
      type="text/javascript"
      src="jquery.js"
      defer=""
    ></script>
    <script
      class="u-script"
      type="text/javascript"
      src="nicepage.js"
      defer=""
    ></script>
    <meta name="generator" content="Nicepage 6.3.1, nicepage.com" />
    <meta name="theme-color" content="#478ac9" />
    <meta property="og:title" content="Judecatori" />
    <meta property="og:type" content="website" />
    <meta data-intl-tel-input-cdn-path="intlTelInput/" />
  </head>

  <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
  <jsp:setProperty name="jb" property="*" />
  <style>
    body {
      background-image: url("img/still-life-with-scales-justice\ \(1\).jpg");
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
      text-align: center;
    }
    div {
      display: table;
      margin-right: auto;
      margin-left: auto;
    }
  </style>

  <body
    data-home-page="index.html"
    data-home-page-title="Judecatori"
    data-path-to-root="./"
    data-include-products="true"
    class="u-body u-xl-mode"
    data-lang="en"
  >
    <body
      data-home-page="index.html"
      data-home-page-title="Judecatori"
      data-path-to-root="./"
      data-include-products="true"
      class="u-body u-xl-mode"
      data-lang="en"
    >
      <section class="u-align-center u-clearfix u-section-1" id="sec-612e">
        <div class="u-clearfix u-sheet u-sheet-1">
          <h3
            class="u-custom-font u-font-montserrat u-text u-text-custom-color-3 u-text-1"
          >
            Tabela Procese
          </h3>
          <h5 class="u-text u-text-custom-color-3 u-text-2">
            Aici se pot gasi informatii despre procesele inregistrate in baza
            de date
          </h5>
          <div
            class="custom-expanded u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xs u-expanded-width-xl u-table u-table-responsive u-table-1"
          >
            <form action="m1_Procese.jsp" method="post">
              <table class="u-table-entity" bgcolor="#f6f0ed">
                <colgroup>
                  <col width="6.5%" />
                  <col width="4.1%" />
                  <col width="17.2%" />
                  <col width="17.4%" />
                  <col width="16.4%" />
                  <col width="13.3%" />
                  <col width="12.7%" />
                  <col width="12.399999999999986%" />
                </colgroup>
                <tbody
                  class="u-align-center u-custom-color-5 u-table-body u-text-custom-color-3 u-table-body-1"
                >
                  <tr style="height: 64px">
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-1"
                    >
                      Mark
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-2"
                    >
                      ID Proces
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-3"
                    >
                      Nume​ reclamant
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-4"
                    >
                      Prenume reclamant
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-5"
                    >
                      Nume parat
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-6"
                    >
                      Prenume<br />parat
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-7"
                    >
                      Data proces
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-custom-color-4 u-table-cell u-table-cell-8"
                    >
                      Obiectul cauzei
                    </td>
                  </tr>
                  <% jb.connect(); ResultSet rs = jb.vedeTabela("procese"); long
                  x; while (rs.next()) { x = rs.getInt("idproces"); %>
                  <tr>
                    <td                       class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <input
                        type="checkbox"
                        name="primarykey"
                        value="<%= x%>"
                      />
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= x%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("nume_reclamant")%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("prenume_reclamant")%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("nume_parat")%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("prenume_parat")%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("data_proces")%>
                    </td>
                    <td
                      class="u-border-2 u-border-custom-color-3 u-table-cell u-table-cell-6"
                    >
                      <%= rs.getString("obiectul_cauzei")%>
                    </td>
                    <% } %>
                  </tr>
                </tbody>
              </table>
              <br />
              <p align="center">
                <input
                  class="u-align-center u-border-none u-btn u-button-style u-custom-color-4 u-hover-custom-color-2 u-btn-1"
                  type="submit"
                  value="Modifica liniile marcate"
                />
              </p>
            </form>
            <% rs.close(); jb.disconnect(); %>
            <br />
          </div>
        </div>
      </section>
      <section class="u-clearfix u-section-2" id="sec-b77e">
        <div class="u-clearfix u-sheet u-sheet-1">
          <div
            class="u-align-center u-container-align-center u-container-style u-expanded-width u-group u-shape-rectangle u-group-1"
            style="width: 800px; margin: 0 auto"
          >
            <div
              class="u-container-layout u-valign-middle u-container-layout-1"
            >
              <a
                href="index.html"
                class="u-align-center u-border-none u-btn u-button-style u-custom-color-4 u-hover-custom-color-2 u-btn-2"
                >Pagina principala</a
              >
              <a
                href="nou_Proces.jsp"
                class="u-align-center u-border-none u-btn u-button-style u-custom-color-4 u-hover-custom-color-2 u-btn-3"
                >Adaugare inregistrare noua</a
              >
            </div>
          </div>
        </div>
      </section>
      <% rs.close(); jb.disconnect(); %>
      <footer
        class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
        id="sec-60d7"
      >
        <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
          <p class="u-text u-text-default u-text-1">
            Acest proiect a fost realizat in anul universitar 2023-2024
          </p>
        </div>
      </footer>
    </body>
  </body>
</html>
