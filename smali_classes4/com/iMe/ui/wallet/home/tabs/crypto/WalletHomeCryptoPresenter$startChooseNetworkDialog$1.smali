.class final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeCryptoPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 6

    const-string v0, "newNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getCurrentNetworkId(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 108
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    .line 109
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method
