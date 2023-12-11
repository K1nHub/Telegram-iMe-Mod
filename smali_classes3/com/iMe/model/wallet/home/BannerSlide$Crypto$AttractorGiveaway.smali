.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttractorGiveaway"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 38
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_attractor_giveaway_title:I

    .line 39
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_attractor_giveaway_description:I

    .line 41
    sget v5, Lorg/telegram/messenger/R$raw;->fork_attractor_giveaway:I

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v3

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
