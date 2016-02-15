#Distributed collaboration: the case for the enhancement of Brainspell’s interface

AmanPreet Badhwar<sup>1,2</sup>, David Kennedy<sup>3</sup>, Jean-Baptiste Poline<sup>4</sup>, Roberto Toro<sup>5</sup>

<sup>1</sup>Centre de Recherche, Institut Universitaire de Gériatrie de Montréal, Montreal, Quebec, Canada; <sup>2</sup>Université de Montréal, <sup>3</sup>University of Massachusetts Medical School, Worcester, USA, <sup>4</sup>University of California, Berkeley, USA,  <sup>5</sup>Institut Pasteur, Paris, France

#1.	Introduction
The past several decades have seen an explosive growth in the number of published neuroimaging studies. In juxtaposition, the demand for freely available and openly accessible ‘study data’, that would facilitate future reanalysis, meta-analysis, hypothesis testing and repurposing has also soared. This need is being filled by several web-based initiatives, such as BrainMap<sup>1</sup>, NeuroVault<sup>2</sup>, Neurosynth<sup>3</sup>, and Brainspell<sup>4</sup>.

Brainspell (http://brainspell.org) is the first web-based initiatives to support manual annotation and curation of machine-parsed data, as well as the extension of the database via a crowdsourcing interface. The goal of our Brainhack project was to add and beta-test enhancements to the Brainspell interface that would (a) provide supplementary manual data edit options (b) facilitate efficient database extension, and (c) aid meaningful organization of data.

#2.	Approach
Brainspell uses GitHub to manage the client and server code, and to coordinate its development. GitHub provides tools for code versioning, project management, and allows peers to report issues such as bugs or enhancement requests.

#3.	Results
###A. Supplementary manual data edit options
For each article in Brainspell, peers were able to edit experiment/table title, caption and coordinates. We added supplementary options that provide peers with enhanced ‘edit feedback’, and allow them to perform additional edits, namely:

*	Feedback indicating when a field is editable or has been successfully saved. Editable text fields now turn light grey, while a successfully stored field loses its coloring. Storage of fields can now be triggered by a tab key or by clicking elsewhere, in addition to hitting return.
*	Title and caption fields now allow symbols.
*	Peers can remove empty tables.
*	Peers can add and remove rows from a table. 

###B. Database extension
While peers were previously able to add new articles and their coordinate tables, the process was labor- and time-intensive, since each value had to manually entered. We implemented a more efficient method to edit tables:
*	Addition of an [Import] link to each table. When clicked it opens a popup window where comma-separated text can be entered and parsed.

###C.	Meaningful organization of data
Potential shortcomings of neuroimaging databases employing automatic coordinate data extraction is their inability to segregate (i) multiple contrasts (e.g. within group, inter-group), and (ii) significant versus nonsignificant coordinates, when present in a single table. The following options were added to facilitate non-ambiguous data organization:

 
* Addition of a [Split] link to each table.
* Fine-tuning the [Split] link enhancement to allow more than ten splits. 
* Option to add articles lacking PMID (or user-specific articles).    
* Addition of a [Download] link to each article. When clicked it downloads article title, reference, abstract, and tables.
* Creation of ‘article collection’ functionality. Peers can now store the results of their search into article collections. Clicking on an existing collection brings back the corresponding articles and re-computes the 3D volume and mesh of the aggregated locations. Peers can create and edit multiple collections.

#4.	Conclusion and Discussion
We performed ten enhancements to Brainspell and provided instructions of use in Brainspell’s wiki. We tested these enhancements on Safari, Firefox and Chrome. Moreover, 25 articles were manually added to Brainspell as part of our extended beta testing phase.

GitHub provides an alternative strategy for (i) publication, (ii) peer review and (iii) impact assessment. (i) Publication: Brainspell was made public immediately after the creation of a GitHub repository. (ii) Peer-review: Peers can report concerns and suggest enhancements in a constructive way which leads to the progressive improvement of Brainspell. Peers can also submit modifications, blurring the line between reviewers and collaborators. (iii) Impact assessment: impact can be measured by the number of peers using Brainspell, actively reporting bugs and asking for enhancements. This strategy produces functional publications which can be iteratively improved by the community of peers. During January 15 to February 5, 2016 alone, Brainspell was used in 282 sessions by 133 users who watched 1421 pages. Moreover, Brainspell was forked to “BIDS-collaborative/Brainspell” which itself was forked by approximately 10 data-science students to extend the platform. 
 
Figure 1: (A)  3D volume and mesh showing the aggregated locations of a user/peer-defined collection (Aman_Metaanalysis) containing 32 articles. This user has a total of two collections (or 2 lists), as indicated on the header row. The second collection is named ‘test’. (B) Highlighted in yellow are the [Split] and [Import] links associated with each table in Brainspell. Note: With the exception of the [Download] link, peer-login is required to access all mentioned Brainspell enhancements.

### Availability of supporting data
More information about the Brainspell project can be found at https://github.com/r03ert0/brainspell.

### Competing Interests
None

### Author Contributions
RT developed Brainspell. AB, DK, and JBP suggested enhancements and performed beta testing. AB and RT wrote the report.

### Acknowledgements
The authors would like to thank the organizers and attendees of Brainhack 2015 OHBM Hackathon.

### References
1.	Fox, P. T., Mikiten, S., Davis, G. & Lancaster, J. L. BrainMap: a database of human functional brain mapping. Functional Neuroimaging: Technical Foundations 95–105 (1994).
2.	Gorgolewski, K. J. et al. NeuroVault.org: a web-based repository for collecting and sharing unthresholded statistical maps of the human brain. Front. Neuroinform. 9, (2015).
3.	Yarkoni, T., Poldrack, R. A., Nichols, T. E., Van Essen, D. C. & Wager, T. D. Large-scale automated synthesis of human functional neuroimaging data. Nat. Methods 8, 665–670 (2011).
4.	Toro, R. Brainspell. DOI: 10.6084/m9.figshare.963146.v1 (2014).
