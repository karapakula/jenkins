
oldbuild="$(cat manifest.xml | grep fileUri | grep ear | cut -f8 -d '/')"
oldenv="$(cat manifest.xml | grep fileUri | grep ear | cut -f7 -d '/')"
newenv="dev3"
newbuild="5.6.3.0.43.0-T9"

echo " the old build number is $oldbuild and new build number is $newbuild
echo " the old env is $oldenv and new env is $newenv

sed -ie "s/\b$oldbuild\b/$newbuild/" manifest.xml

git branch
git add manifest.xml
git commit -am " adding new build number $newbuild and new region $newenv"
git push
