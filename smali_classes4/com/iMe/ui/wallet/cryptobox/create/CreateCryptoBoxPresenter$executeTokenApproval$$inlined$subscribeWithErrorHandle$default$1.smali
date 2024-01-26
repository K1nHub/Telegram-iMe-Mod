.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->executeTokenApproval()V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter\n*L\n1#1,132:1\n573#2,21:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    sget-object v0, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$setTransactionArgs$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)V

    .line 138
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$isFeeTokenTransactionArgs$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCreationRules$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    :cond_1
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    .line 146
    invoke-static {v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$isFeeTokenTransactionArgs$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 144
    invoke-static/range {v3 .. v8}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_4
    :goto_1
    return-void
.end method
