.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiNetworks"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 84
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_title:I

    .line 85
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_description:I

    .line 86
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_long_description:I

    .line 87
    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 88
    sget v5, Lorg/telegram/messenger/R$raw;->fork_multi_networking:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
