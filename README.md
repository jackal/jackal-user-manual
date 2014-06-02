LaTeX User Manuals
==================

This repo contains a prototype-in-progress of a LaTeX-based Clearpath Robotics
user manual, for Jackal. To build the manual, run:

    xelatex jackal.tex

The output is written to the `jackal.pdf`. You need to run the command three times
to generate the complete manual including table of contents and correct watermarks.


Setting it up
-------------

On a Mac, download and install [MacTex Basic](http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg).

On Ubuntu, run:

    sudo apt-get install texlive-xetex

Install some additional texlive packages:

    sudo tlmgr install everypage background titlesec microtype upquote

If you'd like to build the official manual, make sure that the DINPro font is available on your system.

On Windows, do:
	* Install TeXworks
	* Install DINPro font (from our server) into your system fonts
	* Install Source Tree and register accounts. Remeber BitBucket uses full email address.
	* Checkout a LaTeX document, and open it in TeXworks
	* In Texworks, in the drop down menu beside the green arrow, switch to XeLaTeX + MakeIndex + BibTex
	* Click the green start arrow

Visuals
-------

The visual components including diagrams and cover page are SVG documents created using Inkscape. [Download
this for your platform](http://www.inkscape.org/en/download/) to edit these components. When you are ready
to integrate the edited component into the manual, you must export it to a PDF in the `gen` folder.

For the cover page:
    * Full page output, including text.

For diagrams and illustrations:
    * Exclude text, also render LaTeX.

