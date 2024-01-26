.class public final Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;
.super Ljava/lang/Object;
.source "WalletRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/wallet/WalletRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,382:1\n1549#2:383\n1620#2,3:384\n1271#2,2:387\n1285#2,4:389\n1747#2,3:413\n1549#2:417\n1620#2,3:418\n1549#2:421\n1620#2,3:422\n1549#2:433\n1620#2,3:434\n1045#2:437\n1559#2:438\n1590#2,4:439\n26#3:393\n26#3:395\n26#3:397\n26#3:399\n26#3:401\n26#3:403\n26#3:405\n26#3:407\n26#3:409\n26#3:411\n26#3:416\n26#3:426\n26#3:429\n26#3:430\n26#3:432\n70#4:394\n70#4:396\n70#4:398\n70#4:400\n70#4:402\n70#4:404\n70#4:406\n82#4:408\n82#4:410\n82#4:412\n82#4:425\n70#4:428\n70#4:431\n1#5:427\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n*L\n64#1:383\n64#1:384,3\n65#1:387,2\n65#1:389,4\n263#1:413,3\n285#1:417\n285#1:418,3\n298#1:421\n298#1:422,3\n361#1:433\n361#1:434,3\n368#1:437\n369#1:438\n369#1:439,4\n77#1:393\n83#1:395\n89#1:397\n105#1:399\n111#1:401\n122#1:403\n128#1:405\n142#1:407\n168#1:409\n214#1:411\n269#1:416\n313#1:426\n334#1:429\n340#1:430\n346#1:432\n82#1:394\n88#1:396\n104#1:398\n110#1:400\n121#1:402\n127#1:404\n135#1:406\n156#1:408\n191#1:410\n223#1:412\n302#1:425\n331#1:428\n345#1:431\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private lastUpdateBalanceTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

.field private final walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;


# direct methods
.method public static synthetic $r8$lambda$2jWgbtguoWWIVdnVRb7FmCGaBEo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettings$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GXxWXhw9V0JfL_u3i3nx01GQVtI(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettings$lambda$9(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K5koo8-8SiAww9BqcOeMlf6do3Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletMultiChainBalance$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ke6Q3S2nyZF25UpqeiXXadPo3K0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensBalance$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LISlSisiS07sE1kvK4DK3ni-i2Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletBalance$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/data/network/api/own/WalletApi;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSourceFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletBalanceDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 53
    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 54
    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 55
    iput-object p4, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 56
    iput-object p5, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 57
    iput-object p6, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 58
    iput-object p7, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 59
    iput-object p8, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 63
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1621
    check-cast p4, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 64
    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p4

    .line 1621
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1271
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p3

    const/16 p4, 0x10

    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1285
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1286
    move-object p4, p3

    check-cast p4, Ljava/lang/String;

    const-wide/16 p4, 0x0

    .line 65
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 1286
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getLastUpdateBalanceTime$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Ljava/util/HashMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletBalanceDao$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    return-object p0
.end method

.method private final getLastUpdateBalanceTimeByNetworkType(Ljava/lang/String;)J
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static final getTokensBalance$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private static final getTokensSettings$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getTokensSettings$lambda$9(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt;->mapToTokensSettings(Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;)Ljava/util/List;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 357
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1549
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 363
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 364
    invoke-virtual {v5}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getTokenAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getTokenAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 363
    :goto_1
    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    if-eqz v4, :cond_3

    .line 365
    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result v2

    goto :goto_2

    :cond_3
    const v2, 0x7fffffff

    :goto_2
    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 362
    invoke-static/range {v3 .. v8}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;IZLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    move-result-object v2

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_4
    new-instance p1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettingsFromDisplayResponse$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettingsFromDisplayResponse$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 1559
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v7, v2, 0x1

    if-gez v2, :cond_5

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 370
    invoke-static/range {v1 .. v6}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;IZLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    move-result-object v0

    .line 1592
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_3

    :cond_6
    move-object p1, p2

    :goto_4
    return-object p1
.end method

.method private static final getWalletBalance$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getWalletMultiChainBalance$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final isUpdateTimeoutReached(Ljava/lang/String;)Z
    .locals 4

    .line 376
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getLastUpdateBalanceTimeByNetworkType(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isMinutesAgo(JJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public detachCustomToken(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 126
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->detachCustomToken(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$detachCustomToken$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$detachCustomToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$detachCustomToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$detachCustomToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCryptoTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 75
    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object p4

    .line 76
    invoke-interface {p4, p1, p2, p3}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;->getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCryptoTransferMetadata$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCryptoTransferMetadata$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCustomTokens(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;>;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 87
    new-instance v7, Lcom/iMe/storage/data/network/model/request/wallet/CustomTokensRequest;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/request/wallet/CustomTokensRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getCustomTokens(Lcom/iMe/storage/data/network/model/request/wallet/CustomTokensRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCustomTokens$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCustomTokens$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCustomTokens$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getCustomTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDisplayedTokens(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 133
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getDisplayedTokens(Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getDisplayedTokens$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getDisplayedTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSupportedNetworks()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;>;>;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 344
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getSupportedNetworks()Lio/reactivex/Observable;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getSupportedNetworks$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getSupportedNetworks$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getSupportedNetworks$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getSupportedNetworks$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTokenInfo(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 81
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getTokenInfo(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenInfo$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenInfo$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenInfo$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenInfo$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokenListsData(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 109
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getTokenListsData(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenListsData$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenListsData$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenListsData$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokenListsData$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokensBalance(Ljava/util/List;ZLjava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eqz p2, :cond_0

    .line 279
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 283
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 285
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1621
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->getTokensBalances(JLjava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v1

    .line 287
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;

    new-instance v3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    :goto_1
    if-nez p2, :cond_3

    .line 294
    invoke-direct {p0, p3}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->isUpdateTimeoutReached(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 311
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4

    .line 295
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 298
    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object v0

    .line 1621
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 297
    :cond_4
    new-instance p1, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;

    invoke-direct {p1, p3, v2}, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 296
    invoke-interface {p2, p1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 302
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;

    invoke-direct {p3, p2, p0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    :goto_4
    invoke-static {v1, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n            if (\u2026)\n            }\n        )"

    .line 288
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokensSettings(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$2;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$2;

    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 154
    new-instance v2, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;

    invoke-direct {v2, p1}, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-interface {v1, v2}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getDisplayedTokens(Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;)Lio/reactivex/Observable;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;

    invoke-direct {v3, v2, p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "concat(\n            Obse\u2026              }\n        )"

    .line 148
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletBalance(ZLjava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 176
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->getBalancesByNetwork(JLjava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$1;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$1;

    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-nez p1, :cond_1

    .line 188
    invoke-direct {p0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->isUpdateTimeoutReached(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 190
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3, v2, v3}, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 191
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :goto_1
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n            wall\u2026)\n            }\n        )"

    .line 179
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletMultiChainBalance(ZLjava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networksIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 222
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/MultiChainBalanceRequest;

    invoke-direct {v1, p2}, Lcom/iMe/storage/data/network/model/request/wallet/MultiChainBalanceRequest;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletMultiChainBalance(Lcom/iMe/storage/data/network/model/request/wallet/MultiChainBalanceRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p2, p0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Ljava/util/List;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_2

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 249
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    .line 248
    invoke-virtual {p1, v1, v2, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->getBalancesByMultipleNetworks(JLjava/util/List;)Lio/reactivex/Single;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 253
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 254
    sget-object v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$1;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$1;

    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1747
    instance-of v1, p2, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1748
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-direct {p0, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->isUpdateTimeoutReached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    .line 266
    :cond_4
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    .line 246
    :goto_1
    invoke-static {p1, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "{\n            Observable\u2026}\n            )\n        }"

    .line 254
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    :goto_2
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$$inlined$handleError$1;

    invoke-direct {p2, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletMultiChainBalance$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, p2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletTransactionHistory(ZLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string p1, "networkId"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    if-eqz p3, :cond_0

    .line 327
    invoke-static {p3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 324
    :goto_0
    new-instance v0, Lcom/iMe/storage/data/network/model/request/wallet/WalletTransactionsRequest;

    invoke-direct {v0, p2, p4, p5, p3}, Lcom/iMe/storage/data/network/model/request/wallet/WalletTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 323
    invoke-interface {p1, v0}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTransactions(Lcom/iMe/storage/data/network/model/request/wallet/WalletTransactionsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 331
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletTransactionHistory$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public searchTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 98
    new-instance v8, Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    invoke-interface {v0, v8}, Lcom/iMe/storage/data/network/api/own/WalletApi;->searchTokens(Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$searchTokens$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$searchTokens$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$searchTokens$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$searchTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 338
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object v0

    .line 339
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;->transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$sendTokens$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$sendTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setTokenVisibility(Lcom/iMe/storage/domain/model/wallet/token/Token;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 116
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;

    .line 117
    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    .line 116
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Z)V

    .line 115
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->setTokenVisibility(Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$setTokenVisibility$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$setTokenVisibility$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$setTokenVisibility$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$setTokenVisibility$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
