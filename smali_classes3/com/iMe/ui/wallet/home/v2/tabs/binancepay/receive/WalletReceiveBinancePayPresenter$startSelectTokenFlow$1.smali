.class final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletReceiveBinancePayPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $action:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;->$action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;->$action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$processShowSelectTokenDialog(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
