FROM centos:7

ENV VERSION=2.13.950

COPY FutuOpenD_2.13.950_Centos7.tar.gz /tmp/FutuOpenD_2.13.950_Centos7.tar.gz

RUN cd /tmp && \
	tar -vzxf FutuOpenD_2.13.950_Centos7.tar.gz && \
	mv ./FutuOpenD_2.13.950_Centos7/* /usr/local/bin/ && \
	rm FutuOpenD_2.13.950_Centos7.tar.gz

#RUN cd /tmp && \
#	curl -o FutuOpenD_${VERSION}_Centos7.tar.gz https://softwarefile.futunn.com/FutuOpenD_${VERSION}_Centos7.tar.gz && \
#	tar -vzxf FutuOpenD_${VERSION}_Centos7.tar.gz && \
#	mv ./FutuOpenD_${VERSION}_Centos7/FutuOpenD_${VERSION}_Centos7/* /usr/local/bin/ && \
#	rm FutuOpenD_${VERSION}_Centos7.tar.gz

#RUN sed -i "s/<login_account>.\+<\/login_account>/<login_account>${FUTU_ACCOUNT}<\/login_account>/g" /usr/local/bin/FutuOpenD.xml && \
#	sed -i "s/<\!-- <login_pwd_md5>.\+<\/login_pwd_md5> -->/<login_pwd_md5>${FUTU_PWD_MD5}<\/login_pwd_md5>/g" /usr/local/bin/FutuOpenD.xml

EXPOSE 11111 11111

ENTRYPOINT ["FutuOpenD"]
