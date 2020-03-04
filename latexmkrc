@default_files = ("phd_thesis.tex");
push @generated_exts, 'spl', 'run.xml', 'thm', 'tdo';

$pdf_mode = 4;
$lualatex="lualatex --shell-escape --file-line-error --interaction=nonstopmode -fmt phd_thesis %O %S";
