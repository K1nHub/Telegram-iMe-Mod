.class public Lcom/stripe/android/net/StripeSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "StripeSSLSocketFactory.java"


# static fields
.field private static final TLSv11Proto:Ljava/lang/String; = "TLSv1.1"

.field private static final TLSv12Proto:Ljava/lang/String; = "TLSv1.2"


# instance fields
.field private final tlsv11Supported:Z

.field private final tlsv12Supported:Z

.field private final under:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 30
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v0, [Ljava/lang/String;

    .line 42
    :goto_0
    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v5, v1, v0

    const-string v6, "TLSv1.1"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v3, v7

    goto :goto_2

    :cond_0
    const-string v6, "TLSv1.2"

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_2
    iput-boolean v3, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv11Supported:Z

    .line 51
    iput-boolean v4, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv12Supported:Z

    return-void
.end method

.method private fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2

    .line 103
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    return-object p1

    .line 107
    :cond_0
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-boolean v1, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv11Supported:Z

    if-eqz v1, :cond_1

    const-string v1, "TLSv1.1"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    iget-boolean v1, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv12Supported:Z

    if-eqz v1, :cond_2

    const-string v1, "TLSv1.2"

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    .line 99
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
