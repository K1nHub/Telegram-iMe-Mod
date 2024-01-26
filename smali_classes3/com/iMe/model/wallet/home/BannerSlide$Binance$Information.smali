.class public final Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;
.super Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Information"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 144
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_title:I

    .line 145
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_description:I

    .line 146
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_long_description:I

    .line 147
    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 148
    sget v5, Lorg/telegram/messenger/R$raw;->fork_binance_pay_information:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Binance;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
