.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonCustodial"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 52
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_title:I

    .line 53
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_description:I

    .line 54
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_long_description:I

    .line 55
    sget v4, Lorg/telegram/messenger/R$string;->wallet_eth_backup_info_start_dialog_title:I

    .line 56
    sget v5, Lorg/telegram/messenger/R$raw;->fork_non_custodial:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
