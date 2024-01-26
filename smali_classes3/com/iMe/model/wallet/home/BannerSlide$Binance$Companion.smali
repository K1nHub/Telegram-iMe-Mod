.class public final Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;
.super Ljava/lang/Object;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBanners()[Lcom/iMe/model/wallet/home/BannerSlide$Binance;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/wallet/home/BannerSlide$Binance;

    .line 177
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 179
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 180
    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method
