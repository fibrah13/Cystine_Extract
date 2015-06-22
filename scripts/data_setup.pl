use Modern::Perl;
use Path::Tiny;

my @files = glob("../devel/HackaMol-CaseStudy/Survey_PDBdisulfide/xtals_clusters/*.pdb");

foreach my $file (@files) {
  path("data/xtals_clusters")->mkpath;
  system("cp $file data/xtals_clusters");
}



