UPDATE SKRSColumns SET dataType=4 WHERE viewMap=(SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit') AND tableColumnName='code';