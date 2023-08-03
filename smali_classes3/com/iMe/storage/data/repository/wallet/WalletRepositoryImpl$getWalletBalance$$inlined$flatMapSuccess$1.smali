.class public final Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletBalance(ZLjava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n201#2,12:87\n213#2:102\n217#2,2:104\n1549#3:99\n1620#3,2:100\n1622#3:103\n18#4:106\n18#4:108\n7#5:107\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n212#1:99\n212#1:100,2\n212#1:103\n218#1:106\n84#2:108\n84#2:107\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $networkId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getLastUpdateBalanceTime$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;)Ljava/util/List;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getWalletBalanceDao$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTelegramGateway$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    .line 94
    iget-object v4, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v2, v3, v4}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->rxDeleteAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getWalletBalanceDao$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    move-result-object v2

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 102
    iget-object v6, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v6}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTelegramGateway$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v6

    invoke-interface {v6}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/iMe/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;J)Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-result-object v5

    .line 1621
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v2, v3}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletBalanceDao\n       \u2026etBalance.toObservable())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
