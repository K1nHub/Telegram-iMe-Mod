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
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,92:1\n252#2,4:93\n257#2,2:103\n259#2,2:109\n1549#3:97\n1620#3,3:98\n1549#3:105\n1620#3,3:106\n11#4:101\n18#5:102\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n255#1:97\n255#1:98,3\n258#1:105\n258#1:106,3\n255#1:101\n255#1:102\n*E\n"
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
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

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/common/CursoredData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/common/CursoredData;->getCursor()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-static {v0, v2}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$setCursor$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/common/CursoredData;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/common/CursoredData;->getData()Ljava/util/List;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 95
    :cond_3
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->$isIncomingDirection$inlined:Z

    const/16 v0, 0xa

    if-eqz p1, :cond_5

    .line 1549
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 96
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 1621
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getWalletInteractor$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object p1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 104
    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    .line 1621
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getNetworkId$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v2, v0, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokensBalances(Ljava/util/List;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_3

    .line 17
    :cond_7
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_3

    .line 18
    :cond_8
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
