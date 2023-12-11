.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttractorTestnet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 31
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_attractor_testnet_title:I

    .line 32
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_attractor_testnet_description:I

    .line 34
    sget v5, Lorg/telegram/messenger/R$raw;->fork_attractor:I

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v3

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
