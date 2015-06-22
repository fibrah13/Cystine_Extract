use Modern::Perl;
use Path::Tiny;

my @xray_files = glob("../devel/HackaMol-CaseStudy/Survey_PDBdisulfide/xtals_clusters/*.pdb");

foreach my $file (@xray_files) {
  path("data/xtals_clusters")->mkpath;
  system("cp $file data/xtals_clusters");
}


my @nmr_files = glob("../devel/HackaMol-CaseStudy/Survey_PDBdisulfide/nmrs_clusters/*.pdb");

foreach my $file (@nmr_files) {
  path("data/nmrs_clusters")->mkpath;
  system("cp $file data/nmrs_clusters");
}


