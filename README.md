`deef` is a data extractor for electronic forms, compatible with Microsoft Word 
files with name ending `.docx`, i.e. compatible with Microsoft Office 2007 
and later.

It is work in progress. 

It allows you to load and extract form field data from a batch of `.docx` files 
which contain certain *legacy* electronic form fields:

- Text Form Fields 
- Check Box Form Fields
- Drop-Down Form Fields

See illustration for where to find these in the Word "ribbon". 

![Compatible widgets](img/widgets.png)

Text Form Fields are currently not reliably extracted due to the complexity of
the XML underlying `.docx` files. 

Data can be copied to the clipboard or downloaded from the apps as CSV or Microsoft Excel files.
