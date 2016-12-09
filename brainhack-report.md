---
event: '2015 OHBM Hackathon (HI)'

title:  'Distributed collaboration: the case for the enhancement of Brainspell’s interface'

author:

- initials: APB
  surname: Badhwar
  firstname: AmanPreet
  affiliation: aff1, aff2
  email: rto@pasteur.fr
- initials: DNK
  surname: Kennedy
  firstname: David
  affiliation: aff3
  email: rto@pasteur.fr
- initials: DNK
  surname: Poline
  firstname: Jean-Baptiste
  affiliation: aff4
  email: rto@pasteur.fr
- initials: RT
  surname: Toro
  firstname: Roberto
  affiliation: aff5
  email: rto@pasteur.fr
  corref: aff5  
 

affiliations: 

- id: aff1
  orgname: 'Centre de Recherche, Institut Universitaire de Gériatrie de Montréal'
  city: Montréal
  state: Quebec
  country: Canada
- id: aff2
  orgname: 'Université de Montréal'
  city: Montréal
  state: Quebec
  country: Canada
- id: aff3
  orgname: 'University of Massachusetts Medical School'
  city: Worcester
  state: Massachusetts
  country: USA
- id: aff4
  orgname: 'University of California'
  city: Berkeley
  state: California
  country: USA
- id: aff5
  orgname: 'Institut Pasteur'
  city: Paris
  country: France



url: http://github.com/r03ert0/brainspell-brainhack

coi: None

acknow: The authors would like to thank the organizers and attendees of Brainhack 2015 OHBM Hackathon.

contrib: RT developed Brainspell. AB, DK, and JBP suggested enhancements and performed beta testing. AB and RT wrote the report.
  
bibliography: brainhack-report

gigascience-ref: \href{http://gigadb.org/dataset/100216}{doi:10.5524/100216}
...

#Introduction
The past several decades have seen an explosive growth in the number of published neuroimaging studies. In concert, the demand for freely available and openly accessible ‘study data’, that would facilitate future reanalysis, meta-analysis, hypothesis testing and repurposing has also soared. Here we report on developments made to Brainspell\cite{brainspell}, one of several web-based initiatives (e.g. BrainMap\cite{fox1994}, NeuroVault\cite{neurovault}, Neurosynth\cite{neurosynth}) that allow individuals to search through and organize massive numbers of neuroimaging studies and results in meaningful ways.

Distinct from other databases, Brainspell (\url{http://brainspell.org}) is the first web-based initiative to allow users to manually annotate and curate machine-parsed data, as well as manually extend the database via its crowdsourcing user interface. The goal of our Brainhack project was to improve Brainspell’s interface. We worked to (a) provide supplementary manual data edit options (b) facilitate efficient manual database extension, and (c) aid meaningful organization of data.

#Approach
We used GitHub to manage the client and server code, and to coordinate its development.

#Results
\begin{figure}[h!]
  \includegraphics[width=.47\textwidth]{fig1}
  \caption{\label{centfig}A) 3D volume and mesh showing the aggregated locations of a user/peer-defined collection (Aman\_Metaanalysis) containing 32 articles. This user has a total of two collections (or 2 lists), as indicated on the header row. The second collection is named `test'. B) Highlighted in yellow are the \emph{Split} and \emph{Import} links associated with each table in Brainspell. Note: With the exception of the \emph{Download} link, peer-login is required to access all mentioned Brainspell enhancements.}
\end{figure}

###Supplementary manual data edit options
In the original version of Brainspell, users were able to edit experiment (table) title, caption and coordinates for each article. We added four supplementary options. In particular, users are now provided with enhanced ‘edit feedback’:

\begin{itemize}
\item Feedback indicating when a field is editable or has been successfully saved. Editable text fields now turn light grey, while a successfully stored field loses its coloring. Storage of fields can now be triggered by a tab key or by clicking elsewhere, in addition to hitting return.
\end{itemize}
\vspace{1ex}
\noindent Users are also provided with additional edit options, specifically, the ability to:
\begin{itemize}
\item Add symbols to the title and caption fields.
\item Remove empty tables.
\item Add and remove rows from a table. 
\end{itemize}

###Database extension
While users were previously able to add new articles and their coordinate tables, the process was labor- and time-intensive, since each value had to manually entered. We implemented a more efficient method to edit tables:

* Addition of an \emph{Import} link to each table. When clicked it opens a popup window where comma-separated text can be entered and parsed.

###Meaningful organization of data
Potential shortcomings of neuroimaging databases employing automatic coordinate data extraction is their inability to segregate (i) multiple contrasts (e.g. within group, inter-group), and (ii) significant versus nonsignificant coordinates, when present in a single table. The following options were added to facilitate non-ambiguous data organization:
 
* Addition of a \emph{Split} link to each table.
* Fine-tuning the \emph{Split} link enhancement to allow more than ten splits.
* Option to add articles lacking PMID (or user-specific articles).
* Addition of a \emph{Download} link to each article. When clicked it downloads article title, reference, abstract, and tables.
* Creation of ‘article collection’ functionality. Users can now store the results of their search into article collections. Clicking on an existing collection brings back the corresponding articles and re-computes the 3D volume and mesh of the aggregated locations. Users can create and edit multiple collections.

#Conclusion
We performed ten enhancements to Brainspell and provided instructions of use in Brainspell’s wiki. We tested these enhancements on Safari, Firefox and Chrome. Moreover, 25 articles were manually added to Brainspell as part of our extended beta testing phase. Our goal with these enhancements was to extend the functionality, and ease of use of Brainspell for curating machine-parsed neuroimaging data from a wide database of studies.

During January 15 to February 5, 2016 alone, Brainspell was used in 282 sessions by 133 users who watched 1421 pages. Moreover, Brainspell was forked to “BIDS-collaborative/Brainspell” which itself was forked by approximately 10 data-science students to extend the platform.