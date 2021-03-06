(: find authors present only in fuzzy results by comparing two sequences :)
let $f := ("aa-vv-carm-occ-vd.xml",
"aa-vv-carmina-vgc.xml",
"aa-vv-epitaph-maruli.xml",
"andreis-f-carm-h46.xml",
"andreis-f-carmina-vd.xml",
"andreis-f-philos.xml",
"andreis-f-thurc-her.xml",
"andreis-m-epith.xml",
"babulak-o-elegos-matzek.xml",
"babulak-o-proseucticon.xml",
"baricev-aa-eclog.xml",
"benesa-d-dmc.xml",
"benesa-d-epiced-bun.xml",
"bolica-i-desc.xml",
"boskovic-b-ecl.xml",
"boskovic-r-dsld.xml",
"boskovic-r-ecl.xml",
"boskovic-r-el-2-carm.xml",
"boskovic-r-epigr.xml",
"brezov-t-recursus.xml",
"brodaric-s-epigr-tomick.xml",
"bunic-j-de-r.xml",
"bunic-j-vgc.xml",
"cipiko-a-naenia.xml",
"cipiko-a-paneg.xml",
"cobarnic-j-dioclias.xml",
"crijev-i-carm-1678.xml",
"crijev-i-epidauro.xml",
"crijevic-s-biblioth.xml",
"didacus-p-blasio.xml",
"didacus-p-cato.xml",
"didacus-p-paul.xml",
"divnic-ik-epigr.xml",
"djurdjev-i-epinicium.xml",
"djurdjev-i-kostka.xml",
"djurdjev-i-magdalidos.xml",
"djurdjev-i-margarita.xml",
"djurdjev-i-poe.xml",
"dragisic-j-oratio.xml",
"dumanic-m-synopsis.xml",
"feric-d-carnovalis.xml",
"feric-d-el-t.xml",
"feric-d-fab.xml",
"feric-d-periegesis.xml",
"flacius-m-clavis-1.xml",
"flacius-m-clavis-2.xml",
"galopa-a-c.xml",
"getaldic-v-osmanides.xml",
"getaldic-v-ugolino.xml",
"gradic-s-epist-palmot.xml",
"gradic-s-vener.xml",
"grisogono-f-speculum.xml",
"ian-pan-diomed.xml",
"ian-pan-epigr-eleg.xml",
"katancic-mp-fructus.xml",
"kiton-i-dir-meth.xml",
"kunic-r-epigr.xml",
"kunic-r-hymnus-cererem.xml",
"kunic-r-ilias-elegia.xml",
"kunic-r-ilias-libri.xml",
"kunic-r-ilias-operis.xml",
"kunic-r-tasso.xml",
"lipavic-eleg.xml",
"marul-mar-carmina.xml",
"marul-mar-dante.xml",
"marul-mar-dauid.xml",
"matiasev-caraman-carmen.xml",
"matiasev-caraman-ferocia.xml",
"matiasev-caraman-nauplia.xml",
"mazuranic-bakovic-mors.xml",
"mazuranic-i-kukuljevic.xml",
"milasin-f-met.xml",
"milasin-f-viator.xml",
"milet-versus.xml",
"mladinic-s-vita.xml",
"modr-n-cons.xml",
"muzic-f-vd.xml",
"nardin-p-elegia.xml",
"natalis-f-carmina.xml",
"natalis-f-vita-maruli.xml",
"niger-t-divin.xml",
"niger-t-epigrammata-cricium.xml",
"palmotic-j-carm.xml",
"paskalic-l-c.xml",
"perceval-prohem.xml",
"petrovic-v-amissa-ux.xml",
"petrovic-v-obit-ux.xml",
"pima-b-epig.xml",
"pridojev-i-spalat.xml",
"pucic-k-libellus.xml",
"rastic-dz-c.xml",
"razmilovic-b-eleg.xml",
"rogacic-b-euthym.xml",
"rogacic-b-proseuct.xml",
"rozan-a-vauz.xml",
"severitan-ip-feretr.xml",
"severitan-ip-solimaidos.xml",
"sisgor-g-eleg.xml",
"sisgor-g-epigr-m.xml",
"sisgor-g-odae.xml",
"sisgor-g-prosopopeya.xml",
"sivrich-a-pricize.xml",
"sivrich-anacreont.xml",
"sorkocevic-m-fam.xml",
"stay-b-phil-rec.xml",
"stay-b-philos.xml",
"stulli-l-vaccin.xml",
"vicic-k-jess.xml",
"vicic-k-thien.xml",
"vitezov-ritter-p-epist-marsil.xml",
"vitezov-ritter-p-plorantis.xml",
"vrancic-a-c-vd.xml",
"vrancic-m-error.xml",
"vrancic-m-tomiciana.xml",
"zamagna-b-echo.xml",
"zamagna-b-epist.xml",
"zamagna-b-hesiod.xml",
"zamagna-b-idyllia.xml",
"zamagna-b-navis.xml",
"zamagna-b-odyssea.xml",
"zamagna-b-osmanidos.xml")
let $f2 := ("crijev-i-carm-1678.xml","rogacic-b-euthym.xml","stay-b-phil-rec.xml","djurdjev-i-magdalidos.xml","kunic-r-epigr.xml","bunic-j-vgc.xml","stay-b-philos.xml","djurdjev-i-poe.xml","paskalic-l-c.xml","marul-mar-dante.xml","vicic-k-jess.xml","getaldic-v-osmanides.xml","didacus-p-blasio.xml","rastic-dz-c.xml","vrancic-m-tomiciana.xml","palmotic-j-carm.xml","kunic-r-hymnus-cererem.xml","didacus-p-cato.xml","cobarnic-j-dioclias.xml","bunic-j-de-r.xml","zamagna-b-hesiod.xml","zamagna-b-odyssea.xml","kunic-r-ilias-libri.xml","mazuranic-bakovic-mors.xml","kunic-r-ilias-elegia.xml","andreis-m-epith.xml","benesa-d-dmc.xml","didacus-p-paul.xml","boskovic-r-dsld.xml","zamagna-b-navis.xml","feric-d-periegesis.xml","andreis-f-carmina-vd.xml","marul-mar-dauid.xml","boskovic-b-ecl.xml","zamagna-b-echo.xml","zamagna-b-epist.xml","zamagna-b-idyllia.xml","mazuranic-i-kukuljevic.xml","vitezov-ritter-p-plorantis.xml","vicic-k-thien.xml","feric-d-el-t.xml","gradic-s-vener.xml","perceval-prohem.xml","severitan-ip-solimaidos.xml","severitan-ip-feretr.xml","divnic-ik-epigr.xml","rogacic-b-proseuct.xml","boskovic-r-epigr.xml","rozan-a-vauz.xml","sisgor-g-eleg.xml","natalis-f-carmina.xml","andreis-f-epigr.xml","bolica-i-desc.xml","boskovic-r-ecl.xml","ian-pan-epigr-eleg.xml","cipiko-a-paneg.xml","modr-n-cons.xml","marul-mar-carmina.xml","milet-versus.xml","dumanic-m-synopsis.xml","niger-t-divin.xml","aa-vv-epigr-tres.xml","djurdjev-i-epinicium.xml","vrancic-f-carm-epist.xml","selimbric-s-vit.xml","ian-pan-diomed.xml","andreis-f-carm-h46.xml","kiton-i-dir-meth.xml","feric-d-carnovalis.xml","razmilovic-b-eleg.xml","milasin-f-met.xml","lazea-p-carm.xml","muzic-f-vd.xml","nn-gregorius.xml","grisogono-f-speculum.xml","hektor-p-nn-inscr.xml","benesa-d-epiced-bun.xml","flacius-m-clavis-1.xml","babulak-o-elegos-matzek.xml","feric-d-fab.xml","mladinic-s-vita.xml","andreis-f-thurc-her.xml","djurdjev-i-margarita.xml","gradic-s-palmotta.xml","matiasev-caraman-carmen.xml","marul-mar-in-epigr.xml","babulak-o-ode-matzek.xml","vrancic-m-error.xml","crijev-i-epidauro.xml","baricev-aa-eclog.xml","flacius-m-clavis-2.xml","matiasev-caraman-ferocia.xml","sivrich-anacreont.xml","niger-t-epigrammata-cricium.xml","sisgor-g-odae.xml","kunic-r-tasso.xml","petrovic-v-obit-ux.xml","cipiko-a-naenia.xml","boskovic-r-el-2-carm.xml","lipavic-eleg.xml","pucic-k-libellus.xml","stulli-l-vaccin.xml","natalis-f-vita-maruli.xml","aa-vv-epitaph-maruli.xml","sorkocevic-m-fam.xml","milasin-f-viator.xml","dragisic-j-oratio.xml","petrovic-v-amissa-ux.xml","hektor-p-carm.xml","babulak-o-proseucticon.xml","aa-vv-carmina-vgc.xml","sisgor-g-epigr-m.xml","nn-leonis-spalatensis-epit.xml","katancic-mp-fructus.xml","zamagna-b-osmanidos.xml","andreis-f-thurc-germ.xml","aa-vv-carm-occ-vd.xml","matiasev-caraman-nauplia.xml","vitezov-ritter-p-croatia.xml","slavat-v-epigr.xml","sisgor-g-prosopopeya.xml","pribojev-v-or.xml","matiasev-caraman-in-budae.xml","andreis-f-ode.xml","brodaric-s-epigr-tomick.xml","brezov-t-recursus.xml","vitezov-ritter-p-epist-marsil.xml","tolimer-i-laud.xml","aa-vv-epigr-natal.xml","pridojev-i-spalat.xml","getaldic-v-ugolino.xml","djurdjev-i-kostka.xml","crijevic-s-biblioth.xml","crijev-i-sorgo-1509.xml","vrancic-a-c-vd.xml","niger-t-epigramma-statil.xml","crnkovic-p-epist.xml","nn-crescentius.xml","pima-b-epig.xml","andreis-f-philos.xml","nardin-p-elegia.xml","kunic-r-ilias-operis.xml","krsava-j-epigram.xml","sivrich-a-pricize.xml","andreis-f-epist.xml","marul-mar-vita.xml","galopa-a-c.xml","rozan-a-epigr-nalis-1572.xml","cibel-v-pannonia.xml","nn-laus-spal.xml","nn-vekenega.xml","andronic-trag-elegia.xml","gradic-s-epist-palmot.xml")
for $a in distinct-values($f2[not(.=$f)])
order by $a
return substring-before($a,'.xml')