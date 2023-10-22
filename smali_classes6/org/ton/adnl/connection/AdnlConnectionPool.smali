.class public final Lorg/ton/adnl/connection/AdnlConnectionPool;
.super Ljava/lang/Object;
.source "AdnlConnectionPool.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlConnectionPool.kt\norg/ton/adnl/connection/AdnlConnectionPool\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,42:1\n215#2,2:43\n*S KotlinDebug\n*F\n+ 1 AdnlConnectionPool.kt\norg/ton/adnl/connection/AdnlConnectionPool\n*L\n37#1:43,2\n*E\n"
.end annotation


# instance fields
.field private final connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

.field private final connections:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineContext$delegate:Lkotlin/Lazy;

.field private final dispatcher$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;->INSTANCE:Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->dispatcher$delegate:Lkotlin/Lazy;

    .line 16
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;

    invoke-direct {v0, p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;-><init>(Lorg/ton/adnl/connection/AdnlConnectionPool;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->coroutineContext$delegate:Lkotlin/Lazy;

    .line 20
    new-instance v0, Lio/ktor/util/collections/ConcurrentMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connections:Lio/ktor/util/collections/ConcurrentMap;

    .line 21
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnectionFactory;

    invoke-direct {v0}, Lorg/ton/adnl/connection/AdnlConnectionFactory;-><init>()V

    iput-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

    return-void
.end method

.method public static final synthetic access$getConnectionFactory$p(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lorg/ton/adnl/connection/AdnlConnectionFactory;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

    return-object p0
.end method

.method public static final synthetic access$getConnections$p(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lio/ktor/util/collections/ConcurrentMap;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connections:Lio/ktor/util/collections/ConcurrentMap;

    return-object p0
.end method

.method public static final synthetic access$getDispatcher(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/ton/adnl/connection/AdnlConnectionPool;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method private final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->dispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connections:Lio/ktor/util/collections/ConcurrentMap;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/adnl/connection/AdnlConnection;

    .line 38
    invoke-virtual {v1}, Lorg/ton/adnl/connection/AdnlConnection;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->coroutineContext$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final selectConnection(Lorg/ton/api/liteserver/LiteServerDesc;)Lorg/ton/adnl/connection/AdnlConnection;
    .locals 2

    const-string v0, "liteServerDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool;->connections:Lio/ktor/util/collections/ConcurrentMap;

    new-instance v1, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;

    invoke-direct {v1, p1, p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;-><init>(Lorg/ton/api/liteserver/LiteServerDesc;Lorg/ton/adnl/connection/AdnlConnectionPool;)V

    invoke-virtual {v0, p1, v1}, Lio/ktor/util/collections/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlConnection;

    return-object p1
.end method
