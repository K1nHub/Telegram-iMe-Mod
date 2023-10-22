.class public final Lorg/ton/adnl/connection/AdnlConnectionFactory;
.super Ljava/lang/Object;
.source "AdnlConnectionFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final connect(Lorg/ton/api/liteserver/LiteServerDesc;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/network/TcpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;

    iget v1, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;

    invoke-direct {v0, p0, p2}, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;-><init>(Lorg/ton/adnl/connection/AdnlConnectionFactory;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget v2, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/ton/adnl/network/TcpClientImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    :try_start_1
    new-instance p2, Lorg/ton/adnl/network/TcpClientImpl;

    invoke-direct {p2}, Lorg/ton/adnl/network/TcpClientImpl;-><init>()V

    .line 14
    sget-object v2, Lorg/ton/adnl/network/IPAddress;->Companion:Lorg/ton/adnl/network/IPAddress$Companion;

    invoke-virtual {p1}, Lorg/ton/api/liteserver/LiteServerDesc;->getIp()I

    move-result v4

    invoke-virtual {p1}, Lorg/ton/api/liteserver/LiteServerDesc;->getPort()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Lorg/ton/adnl/network/IPAddress$Companion;->ipv4(II)Lorg/ton/adnl/network/IPAddress;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lorg/ton/adnl/network/IPAddress;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/ton/adnl/network/IPAddress;->getPort()I

    move-result p1

    iput-object p2, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lorg/ton/adnl/connection/AdnlConnectionFactory$connect$1;->label:I

    invoke-virtual {p2, v2, p1, v0}, Lorg/ton/adnl/network/TcpClientImpl;->connect(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    throw p1
.end method
