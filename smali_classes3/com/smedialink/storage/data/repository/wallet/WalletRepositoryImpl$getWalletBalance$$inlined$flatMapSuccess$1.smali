.class public final Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n83#2,5:87\n88#2:95\n90#2,3:97\n93#2,2:104\n766#3:92\n857#3,2:93\n1045#3:96\n1549#3:100\n1620#3,3:101\n18#4:106\n18#4:108\n6#5:107\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n87#1:92\n87#1:93,2\n88#1:96\n92#1:100\n92#1:101,3\n94#1:106\n84#2:108\n84#2:107\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    iput-object p3, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getLastUpdateBalanceTime$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;

    .line 90
    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;)Ljava/util/List;

    move-result-object p1

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 91
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_2
    new-instance p1, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$lambda$6$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$lambda$6$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getWalletBalanceDao$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;->rxDeleteAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getWalletBalanceDao$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

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

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 99
    iget-object v6, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v6}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v6

    invoke-interface {v6}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;J)Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-result-object v5

    .line 1621
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 99
    :cond_3
    invoke-interface {v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
    sget-object v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_3

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
