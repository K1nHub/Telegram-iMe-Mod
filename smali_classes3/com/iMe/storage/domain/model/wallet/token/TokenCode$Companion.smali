.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;
.super Ljava/lang/Object;
.source "TokenCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenCode.kt\ncom/iMe/storage/domain/model/wallet/token/TokenCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBitcoinCodes(Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;)Ljava/util/List;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getBitcoinCodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFantomCodes(Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;)Ljava/util/List;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getFantomCodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTonCodes(Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;)Ljava/util/List;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTonCodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTronCodes(Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;)Ljava/util/List;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTronCodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBitcoinCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getFantomCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getTonCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getTronCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 109
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TRX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBSCCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 127
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 128
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 129
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PPM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SIN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BTCMT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 126
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCryptoCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getEthereumCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getBSCCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getPolygonCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getFantomCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTonCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEthereumCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x36

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 119
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OLCF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OKB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 120
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PRQ:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TRU:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HAPI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TARA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BCUG:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SIG:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DHV:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ATD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 121
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 122
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 123
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 118
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPolygonCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 133
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SAND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DAI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->QUICK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->AAVE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GNS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MANA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 134
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GHST:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTokensByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 145
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getBitcoinCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTonCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTronCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getFantomCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getPolygonCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 140
    :pswitch_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getBSCCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 139
    :pswitch_6
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getEthereumCodes()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 5

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->values()[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    :cond_2
    return-object v3
.end method
