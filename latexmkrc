@default_files = ("phd_thesis.tex");
push @generated_exts, 'spl', 'run.xml';

$pdf_mode = 4;
$lualatex="lualatex --shell-escape --file-line-error --interaction=nonstopmode %O %S";
