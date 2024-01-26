.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AscendeEX"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 99
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_title:I

    .line 100
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_description:I

    .line 101
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_long_description:I

    .line 102
    sget v5, Lorg/telegram/messenger/R$raw;->fork_ascendeex:I

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    .line 98
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
