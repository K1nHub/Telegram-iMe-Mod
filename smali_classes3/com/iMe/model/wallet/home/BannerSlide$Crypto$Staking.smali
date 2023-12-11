.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staking"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 106
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_title:I

    .line 107
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_description:I

    .line 108
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_long_description:I

    .line 109
    sget v5, Lorg/telegram/messenger/R$raw;->fork_staking_profit:I

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
