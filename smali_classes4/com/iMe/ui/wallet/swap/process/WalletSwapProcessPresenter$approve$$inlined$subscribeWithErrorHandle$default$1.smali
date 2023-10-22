.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approve()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n212#2,8:133\n220#2,7:144\n229#2,12:152\n1549#3:141\n1620#3,2:142\n1622#3:151\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n219#1:141\n219#1:142,2\n219#1:151\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_4

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getInputTokenApprovalData(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getTokensApprovalData$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectedInputNetworkItem$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getTokensApprovalData$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectedInputNetworkItem$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1549
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    .line 144
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    new-instance v4, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    .line 146
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    .line 147
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-direct {v4, v5, v6}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    .line 1621
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 156
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showSuccessApproveAlert()V

    goto :goto_1

    .line 160
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$handleSwapErrors(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V

    :cond_5
    :goto_1
    return-void
.end method
