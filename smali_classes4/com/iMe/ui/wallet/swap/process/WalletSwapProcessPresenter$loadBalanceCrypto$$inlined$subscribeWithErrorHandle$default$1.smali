.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n1#1,132:1\n678#2,22:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_max:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-interface {v1, p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showTokenBalance(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getAmountSubject$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 147
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 146
    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showTokenBalance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
