.class public final Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendAmountPresenter.kt\ncom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n1#1,111:1\n675#2,11:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $token$inlined:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field final synthetic this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->$token$inlined:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
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

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$setTokenBalance$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->$token$inlined:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$setTokenBalance$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 119
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
