.class final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeBinancePayFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/binance/android/opensdk/api/BinanceAPI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/binance/android/opensdk/api/BinanceAPIFactory;->createAPI(Landroid/app/Activity;)Lcom/binance/android/opensdk/api/BinanceAPI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;->invoke()Lcom/binance/android/opensdk/api/BinanceAPI;

    move-result-object v0

    return-object v0
.end method
