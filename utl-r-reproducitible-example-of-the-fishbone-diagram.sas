%let pgm=utl-r-reproducitible-example-of-the-fishbone-diagram;

r reproducitible example of the fishbone diagram

fishbone graphic                                                                                               
https://tinyurl.com/y2pxyspc                                                                                   
https://github.com/rogerjdeangelis/utl-r-reproducitible-example-of-the-fishbone-diagram/blob/main/fishbone.pdf 

github
https://tinyurl.com/9kyerr5p
https://github.com/rogerjdeangelis/utl-r-reproducitible-example-of-the-fishbone-diagram

source for example
https://rdrr.io/cran/qcc/man/cause.and.effect.html

 1 r fishbone
 2 r pdf to text (utility to create text version of pdf)
 3 repos

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                                           |                                                                            */
/*     PROCESS(inline data)                  |      OUTPUT (d:/pdf/fishbone.pdf)                                          */
/*                                           |                                                                            */
/*  %utlfkil(d:/pdf/fishbone.pdf);           | Measurements       Materials        Personnel                              */
/*                                           |                                                                            */
/*  %utl_rbegin;                             |     \ Micrometers      \ Alloys         \  Shifts                          */
/*  parmcards4;                              |      \                  \                \                                 */
/*  library(qcc)                             |       \                  \                \                                */
/*  pdf("d:/pdf/fishbone.pdf")               |        \ Microscopes      \ Lubricants     \  Supervisors                  */
/*  cause.and.effect(cause=list(             |         \                  \                \                              */
/*   Measurements=c("Micrometers"            |          \                  \                \                             */
/*    ,"Microscopes", "Inspectors"),         |           \ Inspectors       \ Suppliers      \  Training                  */
/*   Materials=c("Alloys", "Lubricants"      |            \                  \                \                           */
/*    ,"Suppliers"),                         |             \                  \                \                          */
/*   Personnel=c("Shifts", "Supervisors"     |              \                  \                \ Operators               */
/*    ,"Training", "Operators"),             |               \                  \                \                        */
/*   Environment=c("Condensation", "Moisture"| ----------------------------------------------------------> Surface Flaws  */
/*   Methods=c("Brake", "Engager", "Angle"), |              /                  /                /                         */
/*   Machines=c("Speed", "Lathes"            |             /                  /                / Sockets                  */
/*    , "Bits", "Sockets")),                 |            /                  /                /                           */
/*    effect="Surface Flaws")                |           /                  /                /                            */
/*  pdf();                                   |          /                  / Angle          / Bits                        */
/*  ;;;;                                     |         /                  /                /                              */
/*  %utl_rend;                               |        /                  /                /                               */
/*                                           |       / Moisture         / Engager        / Lathes                         */
/*                                           |      /                  /                /                                 */
/*                                           |     /                  /                /                                  */
/*                                           |    / Condensation     / Brake          / Speed                             */
/*                                           |                                                                            */
/*                                           | Environment        Methods          Machines                               */
/*                                           |                                                                            */
/**************************************************************************************************************************/

/*           __ _     _     _
/ |  _ __   / _(_)___| |__ | |__   ___  _ __   ___
| | | `__| | |_| / __| `_ \| `_ \ / _ \| `_ \ / _ \
| | | |    |  _| \__ \ | | | |_) | (_) | | | |  __/
|_| |_|    |_| |_|___/_| |_|_.__/ \___/|_| |_|\___|
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utl_rbegin;
parmcards4;
library(qcc)
pdf("d:/pdf/fishbone.pdf")
  effect = "Surface Flaws"
  causes = list(
    "Measurements" = c("Micrometers", "Microscopes", "Inspectors"),
    "Materials" = c("Alloys", "Lubricants", "Suppliers"),
    "Personnel" = c("Forecasters", "Supervisors", "Training", "Operators"),
    "Environment" = c("Condensation", "Moisture"),
    "Methods" = c("Brakes", "Jigger", "Angle"),
    "Machines" = c("Speed", "Belts", "Sockets")
  )
cause.and.effect(effect, causes)
pdf()
;;;;
%utl_rend;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*      OUTPUT (d:/pdf/fishbone.pdf)                                                                                      */
/*                                                                                                                        */
/* Measurements       Materials        Personnel                                                                          */
/*                                                                                                                        */
/*     \ Micrometers      \ Alloys         \  Shifts                                                                      */
/*      \                  \                \                                                                             */
/*       \                  \                \                                                                            */
/*        \ Microscopes      \ Lubricants     \  Supervisors                                                              */
/*         \                  \                \                                                                          */
/*          \                  \                \                                                                         */
/*           \ Inspectors       \ Suppliers      \  Training                                                              */
/*            \                  \                \                                                                       */
/*             \                  \                \                                                                      */
/*              \                  \                \ Operators                                                           */
/*               \                  \                \                                                                    */
/* ----------------------------------------------------------> Surface Flaws                                              */
/*              /                  /                /                                                                     */
/*             /                  /                / Sockets                                                              */
/*            /                  /                /                                                                       */
/*           /                  /                /                                                                        */
/*          /                  / Angle          / Bits                                                                    */
/*         /                  /                /                                                                          */
/*        /                  /                /                                                                           */
/*       / Moisture         / Engager        / Lathes                                                                     */
/*      /                  /                /                                                                             */
/*     /                  /                /                                                                              */
/*    / Condensation     / Brake          / Speed                                                                         */
/*                                                                                                                        */
/* Environment        Methods          Machines                                                                           */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___              _  __   _          _            _
|___ \   _ __   __| |/ _| | |_ ___   | |_ _____  _| |_
  __) | | `_ \ / _` | |_  | __/ _ \  | __/ _ \ \/ / __|
 / __/  | |_) | (_| |  _| | || (_) | | ||  __/>  <| |_
|_____| | .__/ \__,_|_|    \__\___/   \__\___/_/\_\\__|
        |_|
*/

%utlfkil(d:/txt/fish.txt);

%utl_rbegin;
parmcards4;
%utl_submit_r64("
library('tm');
library('pdftools');
file <- 'd:/pdf/fishbone.pdf';
Rpdf <- readPDF(control = list(text = '-layout'));
corpus <- VCorpus(URISource(file),
      readerControl = list(reader = Rpdf));
want <- content(content(corpus)[[1]]);
want;
write(want,file='d:/txt/fish.txt');
;;;;
%utl_rend;

/*____
|___ /   _ __ ___ _ __   ___  ___
  |_ \  | `__/ _ \ `_ \ / _ \/ __|
 ___) | | | |  __/ |_) | (_) \__ \
|____/  |_|  \___| .__/ \___/|___/
                 |_|
*/

REPO
-----------------------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-convert-pdf-to-text-using-python-and-r
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters
https://github.com/rogerjdeangelis/utl-create-a-simple-n-percent-clinical-table-in-r-sas-wps-python-output-pdf-rtf-xlsx-html-list
https://github.com/rogerjdeangelis/utl-create-mutiple-pdf-files-from-one-table-dosubl-ods-newfile-option
https://github.com/rogerjdeangelis/utl-creating-identical-pdf-and-powerpoint-slides
https://github.com/rogerjdeangelis/utl-example-rtf-excel-and-pdf-reports-using-all-sas-provided-style-templates
https://github.com/rogerjdeangelis/utl-forever-free-for-now-pdfgear-edit-split-combine-delete-pages-substitute-for-acrobat-pro
https://github.com/rogerjdeangelis/utl-identical-side-by-side-text-and-graphics-in-pdf-and-powerpoint
https://github.com/rogerjdeangelis/utl-overlaying-histograms-and-scatterplots-in-powerpoint-pdf-and-jpeg
https://github.com/rogerjdeangelis/utl-putting-a-frame-around-text-in-doc-rtf-and-pdf-ods-destinations-with-and-without-layout
https://github.com/rogerjdeangelis/utl-r-one-liner-scatter-plot-with-densities-along-vertical-and-horizontal-axes-in-pdf-and-ppt
https://github.com/rogerjdeangelis/utl-removing-unwanted-bookmarks-in-pdf-table-of-contents-toc
https://github.com/rogerjdeangelis/utl-sas-ods-bidirectional-hyperlinked-table-of-contents-in-ods-pdf-html-and-excel
https://github.com/rogerjdeangelis/utl-sas-ods-underlining-text-in-html-pdf-and-rtf
https://github.com/rogerjdeangelis/utl-scraping-pdf-output-for-pdf-tables-and-lists
https://github.com/rogerjdeangelis/utl-search-all-pdfs-for-an-arbitrary-word-in-mutuiple-pdf-file
https://github.com/rogerjdeangelis/utl-side-by-side-proc-report-output-in-pdf-html-and-excel
https://github.com/rogerjdeangelis/utl_combine_pdf_files_and_delete_pages_from_a_pdf_pyPDF_ghostscript
https://github.com/rogerjdeangelis/utl_combining_all_pdf_files_in_a_directory
https://github.com/rogerjdeangelis/utl_convert_pdf_tables_to_SAS_WPS_datasets
https://github.com/rogerjdeangelis/utl_convert_pdf_tables_to_sas_tables
https://github.com/rogerjdeangelis/utl_dropping-down-to-R-and-converting-pdfs-to-sas-tables-and-text
https://github.com/rogerjdeangelis/utl_dropping-down-to-powershell-and-converting-doc-and-rtf-files-to-pdfs
https://github.com/rogerjdeangelis/utl_ods_pdf_and_rtf_two_different_page_titles_on_the_same_page
https://github.com/rogerjdeangelis/utl_pdf_graphics_top_40_a_sas_ods_graphics_look_at_chicago_public_schools_salaries_by_job
https://github.com/rogerjdeangelis/utl_report_does_not_show_group_variable_across_new_pages_in_rtf_and_pdf

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
