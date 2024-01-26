.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->getSearchObservable()Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/common/CursoredData<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n275#2,5:102\n282#2,2:109\n284#2:115\n285#2,2:119\n288#2:122\n292#2,2:125\n294#2,2:131\n18#3:107\n18#3:123\n18#4:108\n18#4:124\n1549#5:111\n1620#5,3:112\n1549#5:116\n1620#5,2:117\n1622#5:121\n1549#5:127\n1620#5,3:128\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n279#1:107\n288#1:123\n279#1:108\n288#1:124\n283#1:111\n283#1:112,3\n284#1:116\n284#1:117,2\n284#1:121\n293#1:127\n293#1:128,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $isIncomingDirection$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->$isIncomingDirection$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 102
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/model/common/CursoredData;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/common/CursoredData;->getCursor()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-static {v2, v4}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$setCursor$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/common/CursoredData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/common/CursoredData;->getData()Ljava/util/List;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 105
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string/jumbo v2, "just(this)"

    if-eqz v1, :cond_4

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 18
    sget-object v3, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v3, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 109
    :cond_4
    iget-boolean v1, v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->$isIncomingDirection$inlined:Z

    const/16 v4, 0xa

    if-eqz v1, :cond_7

    .line 110
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getTokensRates$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/Map;

    move-result-object v1

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1621
    check-cast v7, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    .line 110
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v7

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 1621
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_5
    invoke-static {v1, v5}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    .line 119
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 120
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1b

    const/16 v16, 0x0

    .line 119
    invoke-static/range {v7 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v4

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_6
    sget-object v3, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v3, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 125
    :cond_7
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getWalletInteractor$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    .line 126
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v4

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    .line 132
    iget-object v4, v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v4}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getNetworkId$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokensBalances(Ljava/util/List;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_4

    .line 19
    :cond_9
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_4

    .line 20
    :cond_a
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
