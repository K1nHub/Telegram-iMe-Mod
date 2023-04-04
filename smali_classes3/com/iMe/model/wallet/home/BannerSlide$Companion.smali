.class public final Lcom/iMe/model/wallet/home/BannerSlide$Companion;
.super Ljava/lang/Object;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/home/BannerSlide$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBinancePayBanners()[Lcom/iMe/model/wallet/home/BannerSlide;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/wallet/home/BannerSlide;

    .line 118
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_INFORMATION:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_OPERATION_WITHOUT_FEE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_MARKETPLACE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getCryptoBanners()[Lcom/iMe/model/wallet/home/BannerSlide;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iMe/model/wallet/home/BannerSlide;

    .line 117
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->NON_CUSTODIAL:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->SAFE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->CRYPTO_TRANSFERS:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->SWAP:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->MULTI_NETWORKS:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->GATE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->ASCENDEEX:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->STAKING:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method
