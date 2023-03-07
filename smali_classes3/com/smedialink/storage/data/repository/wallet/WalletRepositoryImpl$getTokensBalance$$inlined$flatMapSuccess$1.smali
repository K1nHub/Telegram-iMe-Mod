.class public final Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "FirebaseExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensBalance(Ljava/util/List;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n123#2,3:87\n126#2:93\n128#2,2:95\n130#2,2:101\n764#3:90\n855#3,2:91\n1043#3:94\n1547#3:97\n1618#3,3:98\n18#4:103\n18#4:105\n6#5:104\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n125#1:90\n125#1:91,2\n126#1:94\n129#1:97\n129#1:98,3\n131#1:103\n84#2:105\n84#2:104\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TR;>;>;"
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
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;

    .line 88
    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;)Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 89
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

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_2
    new-instance p1, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$lambda-19$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$lambda-19$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getWalletBalanceDao$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    move-result-object v0

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1619
    check-cast v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 96
    iget-object v5, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v5}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v5

    invoke-interface {v5}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;J)Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0, v2}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

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

    .line 102
    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletBalanceDao\n       \u2026etBalance.toObservable())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1$1;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_3

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

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

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
