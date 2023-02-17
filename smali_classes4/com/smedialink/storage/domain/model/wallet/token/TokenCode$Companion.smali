.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;
.super Ljava/lang/Object;
.source "TokenCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenCode.kt\ncom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBSCCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 108
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 109
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 110
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 107
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
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getEthereumCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getBSCCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getPolygonCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getFantomCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTonCodes()Ljava/util/List;

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
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x35

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 100
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OLCF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OKB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 101
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PRQ:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TRU:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->HAPI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TARA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BCUG:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SIG:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DHV:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ATD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 102
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 103
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 104
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFantomCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPolygonCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 114
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SAND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DAI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->QUICK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->AAVE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GNS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MANA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 115
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GHST:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 113
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTonCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getFantomCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getPolygonCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getBSCCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getEthereumCodes()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getTonCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 5

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->values()[Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

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

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    :cond_2
    return-object v3
.end method
