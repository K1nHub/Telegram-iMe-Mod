.class public final Lcom/smedialink/model/wallet/home/BannerSlide$Companion;
.super Ljava/lang/Object;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/home/BannerSlide;
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

    invoke-direct {p0}, Lcom/smedialink/model/wallet/home/BannerSlide$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBinancePayBanners()[Lcom/smedialink/model/wallet/home/BannerSlide;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/BannerSlide;

    .line 118
    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->BINANCE_PAY_INFORMATION:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->BINANCE_PAY_OPERATION_WITHOUT_FEE:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->BINANCE_PAY_MARKETPLACE:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->BINANCE_PAY_FAQ:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getCryptoBanners()[Lcom/smedialink/model/wallet/home/BannerSlide;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/BannerSlide;

    .line 117
    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->FAQ:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->NON_CUSTODIAL:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->SAFE:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->CRYPTO_TRANSFERS:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->SWAP:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->MULTI_NETWORKS:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->GATE:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->ASCENDEEX:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/BannerSlide;->STAKING:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method
