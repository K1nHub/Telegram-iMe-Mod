.class public final Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;
.super Ljava/lang/Object;
.source "WalletRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,173:1\n9489#2,2:174\n9639#2,4:176\n26#3:180\n26#3:182\n26#3:184\n26#3:194\n26#3:196\n26#3:197\n70#4:181\n82#4:183\n82#4:193\n70#4:195\n1547#5:185\n1618#5,3:186\n1547#5:189\n1618#5,3:190\n1547#5:198\n1618#5,3:199\n764#5:202\n855#5,2:203\n1043#5:205\n1547#5:207\n1618#5,3:208\n764#5:211\n855#5,2:212\n1043#5:214\n8#6:206\n8#6:215\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl\n*L\n41#1:174,2\n41#1:176,4\n55#1:180\n61#1:182\n97#1:184\n134#1:194\n153#1:196\n159#1:197\n60#1:181\n82#1:183\n122#1:193\n152#1:195\n103#1:185\n103#1:186,3\n117#1:189\n117#1:190,3\n71#1:198\n71#1:199,3\n72#1:202\n72#1:203,2\n73#1:205\n108#1:207\n108#1:208,3\n109#1:211\n109#1:212,2\n110#1:214\n74#1:206\n111#1:215\n*E\n"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private lastUpdateBalanceTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private final walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

.field private final walletBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;


# direct methods
.method public static synthetic $r8$lambda$WPBPgxdTD0C28XbQfVXDwSLe21M(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensBalance$lambda-14(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nQJjHnmvLEsr5q4UefasRjWtNZQ(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletBalance$lambda-5(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/WalletApi;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "walletApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletBalanceDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 31
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 32
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 33
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 34
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 35
    iput-object p6, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 36
    iput-object p7, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 41
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    .line 9489
    new-instance p2, Ljava/util/LinkedHashMap;

    array-length p3, p1

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p3

    const/16 p4, 0x10

    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9639
    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object p5, p1, p4

    const-wide/16 p6, 0x0

    .line 41
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-interface {p2, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getLastUpdateBalanceTime$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Ljava/util/HashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getWalletBalanceDao$p(Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    return-object p0
.end method

.method private final getLastUpdateBalanceTimeByNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)J
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getTokensBalance$lambda-14(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 4

    const-string v0, "balances"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    .line 108
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 109
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1043
    :cond_3
    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$lambda-14$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$lambda-14$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final getWalletBalance$lambda-5(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 4

    const-string v0, "balances"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    .line 71
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 72
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1043
    :cond_3
    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$lambda-5$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$lambda-5$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public activateWallet()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 59
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/wallet/ActivateWalletRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/smedialink/storage/data/network/model/request/wallet/ActivateWalletRequest;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/WalletApi;->activateWallet(Lcom/smedialink/storage/data/network/model/request/wallet/ActivateWalletRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$activateWallet$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$activateWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCryptoTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 53
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object v0

    .line 54
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;->getTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokensBalance(Ljava/util/List;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eqz p2, :cond_0

    .line 101
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 103
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 1547
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1619
    check-cast v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 103
    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;->getTokensBalances(JLjava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v1

    .line 105
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;

    .line 106
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    :goto_1
    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 113
    invoke-direct {p0, p3}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getLastUpdateBalanceTimeByNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->isMinutesAgo(IJ)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 133
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4

    .line 114
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1619
    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 117
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object p3

    .line 116
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;

    invoke-direct {v0, v2, p1, p3}, Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {p2, v0}, Lcom/smedialink/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance p3, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;

    invoke-direct {p3, p2, p0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :goto_4
    invoke-static {v1, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ble.empty()\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 66
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;->getAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;

    .line 69
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 76
    invoke-direct {p0, p2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getLastUpdateBalanceTimeByNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->isMinutesAgo(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 78
    new-instance v7, Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v7}, Lcom/smedialink/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/smedialink/storage/data/network/model/request/wallet/GetTokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p0, p2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :goto_1
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ble.empty()\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletTransactionHistory(ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "I",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string p1, "networkType"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p3

    .line 149
    :goto_0
    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    .line 145
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    invoke-direct {v0, p2, p4, p5, p3}, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/WalletApi;->getWalletTransactions(Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendTokens(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 157
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object p1

    .line 158
    invoke-interface {p1, p2}, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;->transfer(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
