# Created by: Lars Eggert <lars.eggert@gmx.net>
# $FreeBSD$

PORTNAME=	HTML-TokeParser-Simple
PORTVERSION=	3.16
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Subclass of HTML::TokeParser with easy-to-remember method calls

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTML-Parser>=0:www/p5-HTML-Parser \
		p5-Sub-Override>=0:devel/p5-Sub-Override
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
NO_ARCH=	yes

.include <bsd.port.mk>
