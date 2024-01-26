.class public final Lorg/ton/lite/client/LiteClient;
.super Ljava/lang/Object;
.source "LiteClient.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteClient.kt\norg/ton/lite/client/LiteClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 4 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 5 AtomicFU.kt\nkotlinx/atomicfu/AtomicLong\n+ 6 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n+ 7 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 8 base64.kt\norg/ton/crypto/Base64Kt\n+ 9 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 10 VmStackList.kt\norg/ton/block/VmStackListKt\n+ 11 VmStack.kt\norg/ton/block/VmStackKt\n*L\n1#1,501:1\n1#2:502\n87#3,3:503\n87#3,3:506\n87#3,3:509\n87#3,3:518\n87#3,3:521\n207#4,3:512\n330#5,3:515\n8#6,16:524\n20#7:540\n10#7:541\n20#7:542\n10#7:543\n10#8:544\n10#9:545\n11#9:546\n16#10:547\n19#11:548\n*S KotlinDebug\n*F\n+ 1 LiteClient.kt\norg/ton/lite/client/LiteClient\n*L\n64#1:503,3\n68#1:506,3\n69#1:509,3\n76#1:518,3\n77#1:521,3\n74#1:512,3\n75#1:515,3\n195#1:524,16\n280#1:540\n280#1:541\n314#1:542\n314#1:543\n374#1:544\n377#1:545\n450#1:546\n471#1:547\n471#1:548\n*E\n"
.end annotation


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private currentServer:I

.field private final knownBlockIds:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;"
        }
    .end annotation
.end field

.field private final lastMasterchainBlockId$delegate:Lkotlinx/atomicfu/AtomicRef;

.field private final lastMasterchainBlockIdTime$delegate:Lkotlinx/atomicfu/AtomicRef;

.field private final liteApi:Lorg/ton/lite/api/LiteApiClient;

.field private final logger:Lorg/ton/logger/Logger;

.field private final serverCapabilities$delegate:Lkotlinx/atomicfu/AtomicLong;

.field private serverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            ">;"
        }
    .end annotation
.end field

.field private final serverTime$delegate:Lkotlinx/atomicfu/AtomicRef;

.field private final serverTimeGotAt$delegate:Lkotlinx/atomicfu/AtomicRef;

.field private final serverVersion$delegate:Lkotlinx/atomicfu/AtomicInt;

.field private final zeroStateId$delegate:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;)V
    .locals 7

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liteClientConfigGlobal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p2}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->getLiteServers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lorg/ton/logger/PrintLnLogger;

    const/4 v1, 0x2

    const-string v2, "LiteClient"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/ton/logger/PrintLnLogger;-><init>(Ljava/lang/String;Lorg/ton/logger/Logger$Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    .line 62
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 63
    new-instance p1, Lkotlin/collections/ArrayDeque;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    .line 65
    new-instance p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->lastMasterchainBlockId$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 68
    sget-object p1, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {p1}, Lkotlinx/datetime/Instant$Companion;->getDISTANT_PAST()Lkotlinx/datetime/Instant;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->lastMasterchainBlockIdTime$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 70
    new-instance p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    .line 71
    invoke-virtual {p2}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->getValidator()Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->getZeroState()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    .line 69
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->zeroStateId$delegate:Lkotlinx/atomicfu/AtomicRef;

    const/4 p1, 0x0

    .line 74
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->serverVersion$delegate:Lkotlinx/atomicfu/AtomicInt;

    const-wide/16 v0, 0x0

    .line 75
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->serverCapabilities$delegate:Lkotlinx/atomicfu/AtomicLong;

    .line 76
    sget-object p1, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverTime$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 77
    invoke-virtual {p1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->serverTimeGotAt$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 78
    invoke-virtual {p2}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->getLiteServers()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->serverList:Ljava/util/List;

    .line 81
    new-instance p1, Lorg/ton/lite/client/LiteClient$liteApi$1;

    invoke-direct {p1, p0}, Lorg/ton/lite/client/LiteClient$liteApi$1;-><init>(Lorg/ton/lite/client/LiteClient;)V

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient;->liteApi:Lorg/ton/lite/api/LiteApiClient;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No lite servers provided"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getCurrentServer$p(Lorg/ton/lite/client/LiteClient;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/ton/lite/client/LiteClient;->currentServer:I

    return p0
.end method

.method public static final synthetic access$getKnownBlockIds$p(Lorg/ton/lite/client/LiteClient;)Lkotlin/collections/ArrayDeque;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$getServerCapabilities(Lorg/ton/lite/client/LiteClient;)J
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerCapabilities()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getServerList$p(Lorg/ton/lite/client/LiteClient;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/ton/lite/client/LiteClient;->serverList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getServerTime(Lorg/ton/lite/client/LiteClient;)Lkotlinx/datetime/Instant;
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerTime()Lkotlinx/datetime/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getServerTimeGotAt(Lorg/ton/lite/client/LiteClient;)Lkotlinx/datetime/Instant;
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerTimeGotAt()Lkotlinx/datetime/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getServerVersion(Lorg/ton/lite/client/LiteClient;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerVersion()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCurrentServer$p(Lorg/ton/lite/client/LiteClient;I)V
    .locals 0

    .line 43
    iput p1, p0, Lorg/ton/lite/client/LiteClient;->currentServer:I

    return-void
.end method

.method public static synthetic getLastBlockId$default(Lorg/ton/lite/client/LiteClient;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    .line 142
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerCapabilities()J

    move-result-wide p3

    const-wide/16 v0, 0x2

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/client/LiteClient;->getLastBlockId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getLastMasterchainBlockId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->lastMasterchainBlockId$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method private final getServerCapabilities()J
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverCapabilities$delegate:Lkotlinx/atomicfu/AtomicLong;

    .line 330
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getServerTime()Lkotlinx/datetime/Instant;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverTime$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/datetime/Instant;

    return-object v0
.end method

.method private final getServerTimeGotAt()Lkotlinx/datetime/Instant;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverTimeGotAt$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/datetime/Instant;

    return-object v0
.end method

.method private final getServerVersion()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverVersion$delegate:Lkotlinx/atomicfu/AtomicInt;

    .line 207
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v0

    return v0
.end method

.method private final getZeroStateId()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->zeroStateId$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    return-object v0
.end method

.method private final registerBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 496
    :cond_1
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->knownBlockIds:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private final setLastMasterchainBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->lastMasterchainBlockId$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 89
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setLastMasterchainBlockIdTime(Lkotlinx/datetime/Instant;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->lastMasterchainBlockIdTime$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 89
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setServerCapabilities(J)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverCapabilities$delegate:Lkotlinx/atomicfu/AtomicLong;

    .line 332
    invoke-virtual {v0, p1, p2}, Lkotlinx/atomicfu/AtomicLong;->setValue(J)V

    return-void
.end method

.method private final setServerTime(Lkotlinx/datetime/Instant;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverTime$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 89
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setServerTimeGotAt(Lkotlinx/datetime/Instant;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverTimeGotAt$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 89
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setServerVersion(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->serverVersion$delegate:Lkotlinx/atomicfu/AtomicInt;

    .line 209
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    return-void
.end method

.method private final setZeroStateId(Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->zeroStateId$delegate:Lkotlinx/atomicfu/AtomicRef;

    .line 89
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final toLiteServer(Lorg/ton/block/AddrStd;)Lorg/ton/lite/api/liteserver/LiteServerAccountId;
    .locals 5

    .line 499
    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result v1

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 477
    new-instance v0, Lorg/ton/lite/client/LiteClient$close$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ton/lite/client/LiteClient$close$1;-><init>(Lorg/ton/lite/client/LiteClient;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAccountState(Lorg/ton/block/AddrStd;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/AddrStd;",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/client/internal/FullAccountState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ton/lite/client/LiteClient$getAccountState$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;

    iget v1, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;

    invoke-direct {v0, p0, p3}, Lorg/ton/lite/client/LiteClient$getAccountState$2;-><init>(Lorg/ton/lite/client/LiteClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 340
    iget v2, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object p1, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/ton/block/AddrStd;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    iget-object p3, p0, Lorg/ton/lite/client/LiteClient;->liteApi:Lorg/ton/lite/api/LiteApiClient;

    new-instance v2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    invoke-direct {p0, p1}, Lorg/ton/lite/client/LiteClient;->toLiteServer(Lorg/ton/block/AddrStd;)Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    move-result-object v4

    invoke-direct {v2, p2, v4}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/lite/api/liteserver/LiteServerAccountId;)V

    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v4

    iput-object p1, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lorg/ton/lite/client/LiteClient$getAccountState$2;->label:I

    invoke-interface {p3, v2, v4, v0}, Lorg/ton/lite/api/LiteApiClient;->invoke(Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 340
    :cond_3
    :goto_1
    check-cast p3, Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    .line 345
    :try_start_0
    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getState()[B

    move-result-object v0

    invoke-static {v0}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells([B)Lorg/ton/boc/BagOfCells;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/cell/Cell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_8

    .line 353
    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->isValidFull()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 356
    sget-object p2, Lorg/ton/api/tonnode/Shard;->Companion:Lorg/ton/api/tonnode/Shard$Companion;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/ton/api/tonnode/Shard$Companion;->extractShard(Lorg/ton/bitstring/BitString;)J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/ton/api/tonnode/Shard$Companion;->containsShard(JJ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 360
    sget-object p2, Lorg/ton/lite/client/CheckProofUtils;->INSTANCE:Lorg/ton/lite/client/CheckProofUtils;

    .line 361
    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getProof()[B

    move-result-object v1

    .line 362
    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p3

    .line 360
    invoke-virtual {p2, v1, p3, p1, v0}, Lorg/ton/lite/client/CheckProofUtils;->checkAccountProof([BLorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/cell/Cell;)Lorg/ton/lite/client/internal/FullAccountState;

    move-result-object p1

    return-object p1

    .line 357
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received data from shard block "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p3

    invoke-virtual {p3}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " that can\'t contain requested account: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 354
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shard block id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in answer is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 351
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Obtained different reference block: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " instead of requested "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 347
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Can\'t deserialize account state"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getLastBlockId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;

    iget v1, v0, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;

    invoke-direct {v0, p0, p2}, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;-><init>(Lorg/ton/lite/client/LiteClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 142
    iget v1, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/ton/lite/client/LiteClient;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/ton/lite/client/LiteClient;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-gez p1, :cond_5

    .line 148
    iget-object v1, p0, Lorg/ton/lite/client/LiteClient;->liteApi:Lorg/ton/lite/api/LiteApiClient;

    .line 149
    sget-object v4, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    .line 150
    sget-object p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 148
    iput-object p0, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->L$0:Ljava/lang/Object;

    iput v3, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->label:I

    move-object v2, v4

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery$default(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, p0

    .line 142
    :goto_1
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    .line 153
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v0

    .line 154
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object p2

    const/4 v1, 0x0

    goto :goto_3

    .line 157
    :cond_5
    iget-object v1, p0, Lorg/ton/lite/client/LiteClient;->liteApi:Lorg/ton/lite/api/LiteApiClient;

    .line 158
    sget-object p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;

    .line 159
    sget-object v3, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;

    .line 160
    new-instance v4, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-direct {v4, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;-><init>(I)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 157
    iput-object p0, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->L$0:Ljava/lang/Object;

    iput v2, v6, Lorg/ton/lite/client/LiteClient$getLastBlockId$1;->label:I

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery$default(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    return-object v0

    :cond_6
    move-object p1, p0

    .line 142
    :goto_2
    move-object v1, p2

    check-cast v1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    .line 162
    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v0

    .line 163
    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object p2

    .line 166
    :goto_3
    iget-object v2, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v3, Lorg/ton/lite/client/LiteClient$getLastBlockId$2;

    invoke-direct {v3, v0}, Lorg/ton/lite/client/LiteClient$getLastBlockId$2;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    invoke-interface {v2, v3}, Lorg/ton/logger/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 168
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_9

    .line 170
    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getVersion()I

    move-result v3

    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getCapabilities()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/ton/lite/client/LiteClient;->setServerVersion(IJ)V

    .line 171
    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getNow()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/ton/lite/client/LiteClient;->setServerTime-5sfh64U(I)J

    .line 172
    sget-object v3, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getNow()I

    move-result v4

    int-to-long v5, v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v10}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds$default(Lkotlinx/datetime/Instant$Companion;JJILjava/lang/Object;)Lkotlinx/datetime/Instant;

    move-result-object v11

    .line 173
    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getLastUtime()I

    move-result v1

    int-to-long v5, v1

    invoke-static/range {v4 .. v10}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds$default(Lkotlinx/datetime/Instant$Companion;JJILjava/lang/Object;)Lkotlinx/datetime/Instant;

    move-result-object v1

    .line 174
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 175
    invoke-virtual {v1, v11}, Lkotlinx/datetime/Instant;->compareTo(Lkotlinx/datetime/Instant;)I

    move-result v3

    if-lez v3, :cond_7

    .line 176
    iget-object v3, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v4, Lorg/ton/lite/client/LiteClient$getLastBlockId$3;

    invoke-direct {v4, v0, v1, v11}, Lorg/ton/lite/client/LiteClient$getLastBlockId$3;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;)V

    invoke-interface {v3, v4}, Lorg/ton/logger/Logger;->warn(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 179
    :cond_7
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v4, 0x3c

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lkotlinx/datetime/Instant;->minus-LRDsOJo(J)Lkotlinx/datetime/Instant;

    move-result-object v5

    invoke-virtual {v1, v5}, Lkotlinx/datetime/Instant;->compareTo(Lkotlinx/datetime/Instant;)I

    move-result v5

    if-gez v5, :cond_8

    .line 180
    iget-object v3, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v4, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;

    invoke-direct {v4, v0, v1, v11}, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;)V

    invoke-interface {v3, v4}, Lorg/ton/logger/Logger;->warn(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 183
    :cond_8
    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getServerTimeGotAt()Lkotlinx/datetime/Instant;

    move-result-object v5

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lkotlinx/datetime/Instant;->minus-LRDsOJo(J)Lkotlinx/datetime/Instant;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlinx/datetime/Instant;->compareTo(Lkotlinx/datetime/Instant;)I

    move-result v3

    if-gez v3, :cond_9

    .line 184
    iget-object v3, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v4, Lorg/ton/lite/client/LiteClient$getLastBlockId$5;

    invoke-direct {v4, v0, v1, v11, p1}, Lorg/ton/lite/client/LiteClient$getLastBlockId$5;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lorg/ton/lite/client/LiteClient;)V

    invoke-interface {v3, v4}, Lorg/ton/logger/Logger;->warn(Lkotlin/jvm/functions/Function0;)V

    .line 190
    :cond_9
    :goto_4
    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getZeroStateId()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->isValid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 192
    invoke-direct {p1, p2}, Lorg/ton/lite/client/LiteClient;->setZeroStateId(Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V

    .line 193
    iget-object v1, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v3, Lorg/ton/lite/client/LiteClient$getLastBlockId$6;

    invoke-direct {v3, p2}, Lorg/ton/lite/client/LiteClient$getLastBlockId$6;-><init>(Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V

    invoke-interface {v1, v3}, Lorg/ton/logger/Logger;->info(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 194
    :cond_a
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    :goto_5
    invoke-direct {p1, v0}, Lorg/ton/lite/client/LiteClient;->registerBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    .line 201
    new-instance p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v4, -0x1

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, 0x0

    .line 202
    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getZeroStateId()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->getRootHash()Lorg/ton/tl/ByteString;

    move-result-object v8

    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getZeroStateId()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->getFileHash()Lorg/ton/tl/ByteString;

    move-result-object v9

    move-object v3, p2

    .line 201
    invoke-direct/range {v3 .. v9}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(IJILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    .line 200
    invoke-direct {p1, p2}, Lorg/ton/lite/client/LiteClient;->registerBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    .line 205
    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getLastMasterchainBlockId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->isValid()Z

    move-result p2

    if-nez p2, :cond_b

    .line 206
    invoke-direct {p1, v0}, Lorg/ton/lite/client/LiteClient;->setLastMasterchainBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    .line 207
    sget-object p2, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p2}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ton/lite/client/LiteClient;->setLastMasterchainBlockIdTime(Lkotlinx/datetime/Instant;)V

    goto :goto_6

    .line 208
    :cond_b
    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getLastMasterchainBlockId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result p2

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 209
    invoke-direct {p1, v0}, Lorg/ton/lite/client/LiteClient;->setLastMasterchainBlockId(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    .line 210
    sget-object p2, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p2}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ton/lite/client/LiteClient;->setLastMasterchainBlockIdTime(Lkotlinx/datetime/Instant;)V

    .line 212
    :cond_c
    :goto_6
    iget-object p1, p1, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance p2, Lorg/ton/lite/client/LiteClient$getLastBlockId$8;

    invoke-direct {p2, v0, v2}, Lorg/ton/lite/client/LiteClient$getLastBlockId$8;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p1, p2}, Lorg/ton/logger/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    return-object v0

    .line 196
    :cond_d
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "masterchain zero state id suddenly changed: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p1}, Lorg/ton/lite/client/LiteClient;->getZeroStateId()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    .line 15
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 17
    :try_start_2
    invoke-static {p2, p1}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 20
    :goto_7
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 23
    throw p1
.end method

.method public final getLiteApi()Lorg/ton/lite/api/LiteApiClient;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ton/lite/client/LiteClient;->liteApi:Lorg/ton/lite/api/LiteApiClient;

    return-object v0
.end method

.method public final latency-UwyO8pc()J
    .locals 2

    .line 105
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerTimeGotAt()Lkotlinx/datetime/Instant;

    move-result-object v0

    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerTime()Lkotlinx/datetime/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/datetime/Instant;->minus-5sfh64U(Lkotlinx/datetime/Instant;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setServerTime-5sfh64U(I)J
    .locals 7

    .line 116
    sget-object v0, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds$default(Lkotlinx/datetime/Instant$Companion;JJILjava/lang/Object;)Lkotlinx/datetime/Instant;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/lite/client/LiteClient;->setServerTime(Lkotlinx/datetime/Instant;)V

    .line 117
    sget-object p1, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/lite/client/LiteClient;->setServerTimeGotAt(Lkotlinx/datetime/Instant;)V

    .line 118
    invoke-virtual {p0}, Lorg/ton/lite/client/LiteClient;->latency-UwyO8pc()J

    move-result-wide v0

    .line 119
    iget-object p1, p0, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance v2, Lorg/ton/lite/client/LiteClient$setServerTime$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/ton/lite/client/LiteClient$setServerTime$1;-><init>(Lorg/ton/lite/client/LiteClient;J)V

    invoke-interface {p1, v2}, Lorg/ton/logger/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    return-wide v0
.end method

.method public final setServerVersion(IJ)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerVersion()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lorg/ton/lite/client/LiteClient;->getServerCapabilities()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lorg/ton/lite/client/LiteClient;->setServerVersion(I)V

    .line 110
    invoke-direct {p0, p2, p3}, Lorg/ton/lite/client/LiteClient;->setServerCapabilities(J)V

    .line 111
    iget-object p2, p0, Lorg/ton/lite/client/LiteClient;->logger:Lorg/ton/logger/Logger;

    new-instance p3, Lorg/ton/lite/client/LiteClient$setServerVersion$1;

    invoke-direct {p3, p1, p0}, Lorg/ton/lite/client/LiteClient$setServerVersion$1;-><init>(ILorg/ton/lite/client/LiteClient;)V

    invoke-interface {p2, p3}, Lorg/ton/logger/Logger;->info(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method
