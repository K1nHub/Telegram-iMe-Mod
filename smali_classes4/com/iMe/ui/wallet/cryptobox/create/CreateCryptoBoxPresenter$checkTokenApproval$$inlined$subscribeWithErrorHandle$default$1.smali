.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V
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
        "Lkotlin/Pair<",
        "+",
        "Lcom/iMe/model/staking/TransactionStep;",
        "+",
        "Lcom/iMe/model/wallet/crypto/send/fee/FeeType;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter\n*L\n1#1,132:1\n505#2,12:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isFeeToken$inlined:Z

.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$isFeeToken$inlined:Z

    iput-boolean p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/iMe/model/staking/TransactionStep;",
            "+",
            "Lcom/iMe/model/wallet/crypto/send/fee/FeeType;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    .line 135
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$isFeeToken$inlined:Z

    .line 136
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/model/staking/TransactionStep;

    .line 137
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    .line 134
    invoke-static {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$onApprovalCheckSuccess(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZLcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    goto :goto_0

    .line 140
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$isFeeToken$inlined:Z

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-static {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$onApprovalCheckError(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZZLcom/iMe/storage/domain/model/Result$Error;)V

    :cond_1
    :goto_0
    return-void
.end method
