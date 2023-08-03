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
    value = "SMAP\nWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,323:1\n1549#2:324\n1620#2,3:325\n1271#2,2:328\n1285#2,4:330\n1549#2:352\n1620#2,3:353\n1549#2:356\n1620#2,3:357\n1549#2:368\n1620#2,3:369\n1045#2:372\n1559#2:373\n1590#2,4:374\n26#3:334\n26#3:336\n26#3:338\n26#3:340\n26#3:342\n26#3:344\n26#3:346\n26#3:348\n26#3:351\n26#3:361\n26#3:364\n26#3:365\n26#3:367\n70#4:335\n70#4:337\n70#4:339\n70#4:341\n70#4:343\n70#4:345\n70#4:347\n82#4:349\n82#4:350\n82#4:360\n70#4:363\n70#4:366\n1#5:362\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n*L\n64#1:324\n64#1:325,3\n65#1:328,2\n65#1:330,4\n227#1:352\n227#1:353,3\n239#1:356\n239#1:357,3\n303#1:368\n303#1:369,3\n310#1:372\n311#1:373\n311#1:374,4\n79#1:334\n85#1:336\n91#1:338\n107#1:340\n113#1:342\n124#1:344\n130#1:346\n144#1:348\n221#1:351\n252#1:361\n271#1:364\n277#1:365\n283#1:367\n84#1:335\n90#1:337\n106#1:339\n112#1:341\n123#1:343\n129#1:345\n137#1:347\n158#1:349\n200#1:350\n243#1:360\n270#1:363\n282#1:366\n*E\n"
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

.method public static synthetic $r8$lambda$e96WlfEHQFfp8Gg2Nwvgb-yuexA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getWalletBalance$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eLkRhLoi9bropcGdpeMEKI14TGI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensBalance$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 52
    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 53
    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 54
    iput-object p4, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 55
    iput-object p5, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 56
    iput-object p6, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 57
    iput-object p7, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 58
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

    .line 50
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getLastUpdateBalanceTime$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Ljava/util/HashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletBalanceDao$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    return-object p0
.end method

.method private final getLastUpdateBalanceTimeByNetworkType(Ljava/lang/String;)J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->lastUpdateBalanceTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 291
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static final getTokensBalance$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private static final getTokensSettings$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
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

    .line 149
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

    .line 297
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt;->mapToTokensSettings(Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;)Ljava/util/List;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 299
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

    .line 305
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

    .line 306
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

    .line 305
    :goto_1
    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    if-eqz v4, :cond_3

    .line 307
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

    .line 304
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

    .line 312
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

.method private static final getWalletBalance$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
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

    .line 127
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 128
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->detachCustomToken(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 129
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

    .line 130
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

    .line 76
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 77
    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object p4

    .line 78
    invoke-interface {p4, p1, p2, p3}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;->getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
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

    .line 88
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 89
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

    .line 90
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

    .line 91
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

    .line 133
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 135
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getDisplayedTokens(Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
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

    .line 144
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

    .line 280
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 281
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getSupportedNetworks()Lio/reactivex/Observable;

    move-result-object v0

    .line 282
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

    .line 283
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

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 83
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getTokenInfo(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
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

    .line 85
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

    .line 110
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 111
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getTokenListsData(Lcom/iMe/storage/data/network/model/request/wallet/TokenCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
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

    .line 113
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

    .line 225
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 227
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

    .line 227
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1621
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->getTokensBalances(JLjava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v1

    .line 229
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;

    new-instance v3, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    :goto_1
    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 235
    invoke-direct {p0, p3}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getLastUpdateBalanceTimeByNetworkType(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isMinutesAgo(IJ)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 251
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_4

    .line 236
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

    .line 239
    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object v0

    .line 1621
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 238
    :cond_4
    new-instance p1, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;

    invoke-direct {p1, v2, p3}, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 237
    invoke-interface {p2, p1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 243
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

    .line 224
    :goto_4
    invoke-static {v1, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ble.empty()\n            )"

    .line 230
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
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

    .line 149
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$2;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$2;

    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 156
    new-instance v2, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;

    invoke-direct {v2, p1}, Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-interface {v1, v2}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getDisplayedTokens(Lcom/iMe/storage/data/network/model/request/wallet/DisplayedTokensRequest;)Lio/reactivex/Observable;

    move-result-object v1

    .line 158
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

    .line 147
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "concat(\n                \u2026          }\n            )"

    .line 150
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

    .line 182
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;

    .line 183
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao;->getAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$1;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getWalletBalance$1;

    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 195
    invoke-direct {p0, p2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getLastUpdateBalanceTimeByNetworkType(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isMinutesAgo(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 197
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, p2, v2, v3}, Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTokensBalance(Lcom/iMe/storage/data/network/model/request/wallet/TokensBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 200
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

    .line 181
    :goto_1
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ble.empty()\n            )"

    .line 186
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
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

    .line 261
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    if-eqz p3, :cond_0

    .line 266
    invoke-static {p3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 263
    :goto_0
    new-instance v0, Lcom/iMe/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    invoke-direct {v0, p2, p4, p5, p3}, Lcom/iMe/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 262
    invoke-interface {p1, v0}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getWalletTransactions(Lcom/iMe/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 270
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

    .line 271
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

    .line 98
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 100
    new-instance v8, Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-interface {v0, v8}, Lcom/iMe/storage/data/network/api/own/WalletApi;->searchTokens(Lcom/iMe/storage/data/network/model/request/wallet/TokensSearchRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 106
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

    .line 107
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
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->dataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 275
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object v0

    .line 276
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;->transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 277
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

    .line 116
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 118
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;

    .line 119
    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    .line 118
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Z)V

    .line 117
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->setTokenVisibility(Lcom/iMe/storage/data/network/model/request/wallet/SetTokenVisibilityRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 123
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

    .line 124
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
