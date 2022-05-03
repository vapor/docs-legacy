cd 2.0;
mkdocs build;
cd ..;

cd 3.0;
mkdocs build;
cd ..;

cd 1.5;
couscous generate;
cd ..;

rm -rf site
mkdir -p site;

cd leaf-pygment && ./compile.sh
cd .. && pip install leaf-pygment/dist/leaf-0.1.0-dev.tar.gz

mv 2.0/site site/2.0;
mv 3.0/site site/3.0;
mv 1.5/.couscous/generated site/1.5;

echo "<meta http-equiv=\"refresh\" content=\"0; url=/3.0/\">" > site/index.html;

