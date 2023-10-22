.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->subscribeToCryptoBoxParamsSubject()V
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
        "Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter\n*L\n1#1,132:1\n350#2,32:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCurrentStep$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/model/staking/TransactionStep;

    move-result-object v0

    sget-object v3, Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    new-instance v3, Lcom/iMe/model/staking/TransactionStep$Idle;

    sget v4, Lorg/telegram/messenger/R$string;->common_create:I

    invoke-direct {v3, v4}, Lcom/iMe/model/staking/TransactionStep$Idle;-><init>(I)V

    invoke-static {v0, v3, v2, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 139
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;

    const/4 v1, 0x1

    .line 138
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderCryptoBoxCreationRules(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V

    .line 142
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$validatePrepareConditions(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    .line 144
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedAmount$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedCapacity$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v3, "valueOf(this.toLong())"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string v0, "this.multiply(other)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 146
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-static {v4, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$showAmountError(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Z)V

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedCapacity$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCreationRules$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getMinimalCapacity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v2

    if-ge p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$showCapacityError(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Z)V

    goto :goto_2

    .line 154
    :cond_5
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCurrentStep$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/model/staking/TransactionStep;

    move-result-object v0

    sget-object v3, Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    new-instance v3, Lcom/iMe/model/staking/TransactionStep$Idle;

    sget v4, Lorg/telegram/messenger/R$string;->common_create:I

    invoke-direct {v3, v4}, Lcom/iMe/model/staking/TransactionStep$Idle;-><init>(I)V

    invoke-static {v0, v3, v2, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$renderCryptoBoxRulesPlaceholderData(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;I)V

    .line 159
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_7
    :goto_2
    return-void
.end method
