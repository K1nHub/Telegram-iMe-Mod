.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swap"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 76
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_title:I

    .line 77
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_description:I

    .line 78
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_long_description:I

    .line 79
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    .line 80
    sget v5, Lorg/telegram/messenger/R$raw;->fork_swap:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
