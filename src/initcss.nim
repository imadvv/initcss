# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

when isMainModule:
  proc initialCss() =
    let rest = """
/* **************** */
/*       Rest       */
/* **************** */

*, *::before, *::after{
  box-sizing: border-box; }


body {
  margin: unset;
  line-height: 1.5;
  -webkit-font-smoothing: antialiased;
}

body, html{
  height: 100%; 
  scroll-behavior: smooth; 
}

button,
input,
textarea,
select {
font: inherit;
}

img,
picture,
svg
 {
display: block;
max-inline-size: 100%;
block-size: auto;
font-style: italic;
}

img, picture, svg, video, canvas{
background-repeat: no-repeat; 
background-size: cover;
vertical-align: middle;
}

ul[role='list'], ol[role='list']{
    list-style: none; 
}
a:not([class]){
    text-decoration-skip-ink: auto; 
}
p, h1, h2, h3, h4, h5, h6 {
  overflow-wrap: break-word;
}
@media (prefers-reduced-motion: reduce) {
    *,
    *::before,
    *::after {
      animation-duration: 0.01ms !important;
      animation-iteration-count: 1 !important;
      transition-duration: 0.01ms !important;
      scroll-behavior: auto !important;
    }
  }

    """

    let globalVars = """ 

 /* **************** */
 /* Global Variables */
 /* **************** */
 :root {

     --clr-primary: #111;
     --clr-accent: #ddd;


     }

    """
    let startHere = """

 /* **************** */
 /* Utilities        */
 /* **************** */

 /* **************** */
 /* Components       */
 /* **************** */
    """
    let css = [rest, globalVars, startHere]
    let f = open("main.css", fmWrite)
    defer: f.close()

    for line in css:
      f.writeLine(line)

initialCss()
