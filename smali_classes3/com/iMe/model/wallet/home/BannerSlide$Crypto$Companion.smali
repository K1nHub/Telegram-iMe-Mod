.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;
.super Ljava/lang/Object;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBanners()[Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/iMe/model/wallet/home/BannerSlide$Crypto;

    .line 114
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 115
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 116
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 117
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 118
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 119
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 120
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 121
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 122
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Gate;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Gate;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 123
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 124
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method
