# $FreeBSD$

PORTNAME=	portal
PORTVERSION=	0.4
PORTREVISION=	3
CATEGORIES=	ports-mgmt

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Front-end to pkg(8)

LICENSE=	BSD2CLAUSE

PLIST_FILES=	bin/${PORTNAME} \
		man/man1/${PORTNAME}.1.gz

USE_GITHUB=	yes
GH_ACCOUNT=	culot

USES=		ncurses compiler:c++11-lib
CFLAGS+=	-I${NCURSESINC}
LDFLAGS+=	-L${NCURSESLIB}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${STAGEDIR}${MANPREFIX}/man/man1

.include <bsd.port.mk>
