.class public final Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;
.super Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marketplace"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 160
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_title:I

    .line 161
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_description:I

    .line 162
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_long_description:I

    .line 163
    sget v4, Lorg/telegram/messenger/R$string;->common_next:I

    .line 164
    sget v5, Lorg/telegram/messenger/R$raw;->fork_binance_pay_marketplace:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Binance;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
