.class final Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 7

    const-string v0, "newNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->access$setSelectedNetwork$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 64
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->access$getSelectedNetwork$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 65
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
