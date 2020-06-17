# NOTE(mrksr): No arbitrary linebreaks in logs
$ENV{max_print_line} = $log_wrap = 10000;
# NOTE(mrksr): Fixed timestamp for reproducible builds
$ENV{SOURCE_DATE_EPOCH} = 0;

@default_files = ("phd_thesis.tex");
push @generated_exts, 'spl', 'run.xml', 'thm', 'tdo';

$pdf_mode = 4;
$lualatex="lualatex --shell-escape --file-line-error --interaction=nonstopmode -fmt phd_thesis %O %S";
