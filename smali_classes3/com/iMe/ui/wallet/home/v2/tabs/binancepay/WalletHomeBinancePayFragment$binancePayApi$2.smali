.class final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeBinancePayFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/binance/android/binancepay/api/BinancePay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/binance/android/binancepay/api/BinancePay;
    .locals 3

    .line 55
    sget-object v0, Lcom/binance/android/binancepay/api/BinancePayFactory;->Companion:Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getBinancePay(Landroid/content/Context;)Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;->invoke()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object v0

    return-object v0
.end method
