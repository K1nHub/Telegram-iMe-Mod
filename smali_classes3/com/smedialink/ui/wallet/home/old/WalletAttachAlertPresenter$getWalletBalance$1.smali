.class final Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletBalance(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;)V"
        }
    .end annotation

    .line 105
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$configureTokens(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showBalances(Ljava/util/List;)V

    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletBalance$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
