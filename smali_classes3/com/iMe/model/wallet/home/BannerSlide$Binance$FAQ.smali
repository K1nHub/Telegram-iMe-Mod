.class public final Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;
.super Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FAQ"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 168
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_title:I

    .line 169
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_description:I

    .line 170
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_long_description:I

    .line 171
    sget v4, Lorg/telegram/messenger/R$string;->common_next:I

    .line 172
    sget v5, Lorg/telegram/messenger/R$raw;->fork_binance_pay_faq:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Binance;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
