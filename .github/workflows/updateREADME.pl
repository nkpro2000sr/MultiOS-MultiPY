# To show all PY versions in README.md

sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}

for $multipy (<*/MultiPy>) {
    open pyvlist,'<',$multipy;
    for (<pyvlist>) {
        chomp;
        push(@pyvs,$_);
    }
    close pyvlist;
}

@pyvs = sort(uniq(@pyvs));
$pyvs = join("\n",@pyvs);

open readme,'<','README.md';
$README = do { local $/; <readme> };
close readme;
$README =~ s/```MultiPy\n[\s\S]*```/```MultiPy\n$pyvs\n```/;
open readme,'>','README.md';
print readme $README;
close readme;
