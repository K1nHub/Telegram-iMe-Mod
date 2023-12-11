.class public final Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;
.super Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationWithoutFee"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 152
    sget v1, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_title:I

    .line 153
    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_description:I

    .line 154
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_long_description:I

    .line 155
    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 156
    sget v5, Lorg/telegram/messenger/R$raw;->fork_binance_pay_operation_without_fee:I

    const/4 v6, 0x0

    move-object v0, p0

    .line 151
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Binance;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
