.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FAQ"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 45
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_title:I

    .line 46
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_description:I

    .line 47
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_long_description:I

    .line 48
    sget v5, Lorg/telegram/messenger/R$raw;->fork_faq:I

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
