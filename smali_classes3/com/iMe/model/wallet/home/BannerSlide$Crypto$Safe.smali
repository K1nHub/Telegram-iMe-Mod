.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Safe"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 60
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_title:I

    .line 61
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_description:I

    .line 62
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_long_description:I

    .line 63
    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 64
    sget v5, Lorg/telegram/messenger/R$raw;->fork_safe:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
