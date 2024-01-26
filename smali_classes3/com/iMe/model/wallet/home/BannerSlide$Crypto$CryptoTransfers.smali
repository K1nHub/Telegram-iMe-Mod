.class public final Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;
.super Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoTransfers"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 68
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_title:I

    .line 69
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_description:I

    .line 70
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_long_description:I

    .line 71
    sget v4, Lorg/telegram/messenger/R$string;->transfer_via_wallet_action_item:I

    .line 72
    sget v5, Lorg/telegram/messenger/R$raw;->fork_crypto_transfers:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
