.class public final Lcom/smedialink/bots/data/repository/BotsRepository;
.super Ljava/lang/Object;
.source "BotsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/data/repository/BotsRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1849#2:443\n1850#2:446\n1547#2:447\n1618#2,3:448\n1849#2:453\n1850#2:456\n1849#2:457\n1850#2:460\n1601#2,9:462\n1849#2:471\n1850#2:473\n1610#2:474\n1547#2:475\n1618#2,3:476\n764#2:479\n855#2,2:480\n1547#2:482\n1618#2,3:483\n1849#2,2:486\n764#2:488\n855#2,2:489\n1858#2,3:491\n211#3,2:444\n211#3,2:454\n211#3,2:458\n37#4,2:451\n1#5:461\n1#5:472\n*S KotlinDebug\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository\n*L\n233#1:443\n233#1:446\n314#1:447\n314#1:448,3\n335#1:453\n335#1:456\n370#1:457\n370#1:460\n93#1:462,9\n93#1:471\n93#1:473\n93#1:474\n155#1:475\n155#1:476,3\n161#1:479\n161#1:480,2\n162#1:482\n162#1:483,3\n407#1:486,2\n416#1:488\n416#1:489,2\n416#1:491,3\n246#1:444,2\n338#1:454,2\n372#1:458,2\n314#1:451,2\n93#1:472\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/bots/data/repository/BotsRepository$Companion;


# instance fields
.field private final botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

.field private final botsDao:Lcom/smedialink/bots/data/database/BotsDao;

.field private final botsDatabase:Lcom/smedialink/bots/data/database/BotsDatabase;

.field private final categoriesDao:Lcom/smedialink/bots/data/database/BotsCategoryDao;

.field private final factory:Lcom/smedialink/bots/domain/ResourceFactory;

.field private final remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final tagsDao:Lcom/smedialink/bots/data/database/BotsTagDao;


# direct methods
.method public static synthetic $r8$lambda$1DE9PpJhiNgoeCO3nNTIMMPErfM(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getSkus$lambda-1(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5yYM6CQ534Jy8zGsWG5gk8OXpxE(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda-5(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$73lcz5zXYnTYSvBeV-PKnf19ihE(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotInstallEvent$lambda-3(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AGubt3QBy5ZIfHm_PP8fscEMDfs(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda-19(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMOY8hlVNb3P_M8i0KQM2KWGrlU(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda-32$lambda-30(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$II8ztlWVZhVNmcTcqXP_JsKX6UI(Lcom/smedialink/bots/data/repository/BotsRepository;Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->fetchVotes$lambda-7(Lcom/smedialink/bots/data/repository/BotsRepository;Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IOHLLSmRCXmyivepDUQIGdWv3Z8(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->getRemoteBotUpdates$lambda-17$lambda-16(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JH1zH07vNFO4M9KfvKtZa3iWxj0(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda-32(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MEKvwQ4Aij_BKOzRzaOlECnrDgk(ILcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda-4(ILcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NXmoRsbtZ4cTaC3cNSIVgRgPa_4(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda-32$lambda-31(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XD1UAhDdcqpyrQ-neitVUUdMJjk(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateBotStatus$lambda-15(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_vZEOs3-odM_gF1MR3WBbE4MIgw(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda-27(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSoOuHWeLMxoHMZq8H36EF6L83w(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda-27$lambda-26(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dD2Qev_XIa5Xixc-QOmxn9W52SQ(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storePurchasesInfo$lambda-40(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivwdM_uU9QHkn9VZ-60TxA6oE2Y(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda-6(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j1AcSf7uTgE9Z35_76icw4ukvD0(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendAppInstallEvent$lambda-2(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j5tC5Le1k0Sdno2CergxJ7MWcu4(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda-21$lambda-20(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mf3Rz-9deO8OpA2QlRitM0R3K8k(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda-21(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tqQaXm91mkNGPy_1YyC8Rnqb4Ko(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda-19$lambda-18(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x9MyW59ajgqXXGneCxGMT2m-TY4(Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->resetDownloads$lambda-41(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yD6kzcxp4A3g14uZ4ulWxoQrcWU(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getRemoteBotUpdates$lambda-17(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ygRz6gmI_pYSA6Waj23LGTN_AAI(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda-27$lambda-25(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zN238G86CB3k2AwmmU3lhvdunWw(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getActiveBotsList$lambda-13(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/data/repository/BotsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/bots/data/repository/BotsRepository;->Companion:Lcom/smedialink/bots/data/repository/BotsRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 84
    sget-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi;->Companion:Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->getInstance()Lcom/smedialink/bots/data/network/SmartBotsApi;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    .line 85
    new-instance v0, Lcom/smedialink/bots/data/factory/JsonResourceFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "context.assets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/smedialink/bots/data/factory/JsonResourceFactory;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;)V

    iput-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    .line 86
    sget-object p2, Lcom/smedialink/bots/data/database/BotsDatabase;->Companion:Lcom/smedialink/bots/data/database/BotsDatabase$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/database/BotsDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDatabase:Lcom/smedialink/bots/data/database/BotsDatabase;

    .line 87
    invoke-virtual {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->botsDao()Lcom/smedialink/bots/data/database/BotsDao;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    .line 88
    invoke-virtual {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->tagsDao()Lcom/smedialink/bots/data/database/BotsTagDao;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->tagsDao:Lcom/smedialink/bots/data/database/BotsTagDao;

    .line 89
    invoke-virtual {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->categoryDao()Lcom/smedialink/bots/data/database/BotsCategoryDao;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->categoriesDao:Lcom/smedialink/bots/data/database/BotsCategoryDao;

    return-void
.end method

.method private final botIsPreinstalled(Ljava/lang/String;)Z
    .locals 3

    .line 439
    sget-object v0, Lcom/smedialink/bots/data/repository/BotsRepository;->Companion:Lcom/smedialink/bots/data/repository/BotsRepository$Companion;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository$Companion;->initialBotsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static final fetchVotes$lambda-7(Lcom/smedialink/bots/data/repository/BotsRepository;Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->saveRatings(Lcom/smedialink/bots/data/model/network/Response;)V

    .line 148
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method private static final getActiveBotsList$lambda-13(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/database/BotsDao;->getAll()Ljava/util/List;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 161
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v5

    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1547
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 163
    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getType()Lcom/smedialink/bots/data/model/BotType;

    move-result-object v5

    sget-object v6, Lcom/smedialink/bots/data/model/BotType;->NEURO:Lcom/smedialink/bots/data/model/BotType;

    if-ne v5, v6, :cond_4

    .line 164
    new-instance v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;

    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUseAssets()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getLang()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v2

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/smedialink/bots/data/model/bot/NeuroBot;-><init>(Ljava/lang/String;Lcom/smedialink/bots/domain/ResourceFactory;ZLcom/smedialink/bots/domain/model/BotLanguage;)V

    goto :goto_5

    .line 166
    :cond_4
    new-instance v5, Lcom/smedialink/bots/data/model/bot/HolidaysBot;

    iget-object v6, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUseAssets()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-direct {v5, v6, v2}, Lcom/smedialink/bots/data/model/bot/HolidaysBot;-><init>(Lcom/smedialink/bots/domain/ResourceFactory;Z)V

    .line 163
    :goto_5
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_6
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 170
    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private static final getCategoriesInfo$lambda-32(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "bot_categories"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 357
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 358
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda2;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final getCategoriesInfo$lambda-32$lambda-30(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getCategoriesInfo$lambda-32$lambda-31(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 360
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_0
    new-instance p1, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;

    const-string v0, "Collection bot_categories is empty"

    invoke-direct {p1, v0}, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final getRemoteBotUpdates$lambda-17(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "bots"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p0

    .line 192
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    new-instance v1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda4;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    return-void
.end method

.method private static final getRemoteBotUpdates$lambda-17$lambda-16(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 194
    invoke-interface {p0, p2}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 195
    new-instance p1, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;

    const-string p2, "Collection bots is empty"

    invoke-direct {p1, p2}, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final getSkus$lambda-1(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/database/BotsDao;->getAll()Ljava/util/List;

    move-result-object p0

    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1609
    check-cast v1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 93
    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1609
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 96
    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static final getTagsInfo$lambda-27(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 322
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 323
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final getTagsInfo$lambda-27$lambda-25(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getTagsInfo$lambda-27$lambda-26(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 325
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_0
    new-instance p1, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;

    const-string v0, "Collection tags is empty"

    invoke-direct {p1, v0}, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final resetDownloads$lambda-41(Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    sget-object v0, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/bots/data/database/BotsDao;->resetDownloads$default(Lcom/smedialink/bots/data/database/BotsDao;Lcom/smedialink/bots/data/model/BotStatus;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)V

    return-void
.end method

.method private static final sendAppInstallEvent$lambda-2(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 2

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Unknown error"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final sendBotInstallEvent$lambda-3(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 2

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/network/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Unknown error"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final sendBotRating$lambda-4(ILcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/SingleSource;
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 136
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/network/Response;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unknown error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final sendBotRating$lambda-5(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/BotsDao;->saveOwnRating(Ljava/lang/String;I)I

    return-void
.end method

.method private static final sendBotRating$lambda-6(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->getOwnRating(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final storePurchasesInfo$lambda-40(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 42

    move-object/from16 v0, p1

    const-string v1, "$products"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 408
    iget-object v5, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/ShopProduct;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smedialink/bots/data/database/BotsDao;->getBySku(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 410
    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/ShopProduct;->getPrice()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const v40, 0x6ffffff

    const/16 v41, 0x0

    .line 409
    invoke-static/range {v7 .. v41}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->copy$default(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-object v3, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v3, v4}, Lcom/smedialink/bots/data/database/BotsDao;->insertOrReplace(Lcom/smedialink/bots/data/model/database/BotsDbModel;)J

    goto :goto_0

    .line 764
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 416
    invoke-virtual {v6}, Lcom/smedialink/bots/domain/model/ShopProduct;->getReceipt()Lcom/smedialink/bots/domain/model/ShopProduct$Receipt;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1859
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    if-gez v5, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6
    check-cast v2, Lcom/smedialink/bots/domain/model/ShopProduct;

    .line 417
    iget-object v5, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopProduct;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/smedialink/bots/data/database/BotsDao;->getBySku(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v2, v4

    goto :goto_4

    .line 418
    :cond_7
    invoke-virtual {v6}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v2

    :goto_4
    sget-object v5, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    if-ne v2, v5, :cond_8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 420
    sget-object v38, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    const v39, 0x3ffffff

    const/16 v40, 0x0

    .line 419
    invoke-static/range {v6 .. v40}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->copy$default(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v2

    .line 422
    iget-object v5, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v5, v2}, Lcom/smedialink/bots/data/database/BotsDao;->insertOrReplace(Lcom/smedialink/bots/data/model/database/BotsDbModel;)J

    :cond_8
    move v5, v3

    goto :goto_3

    :cond_9
    return-void
.end method

.method private static final updateBotStatus$lambda-15(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$botId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$newStatus"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v2, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v2, v1}, Lcom/smedialink/bots/data/database/BotsDao;->getById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v36, 0x3ffffff

    const/16 v37, 0x0

    move-object v3, v1

    move-object/from16 v35, p2

    invoke-static/range {v3 .. v37}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->copy$default(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/data/database/BotsDao;->update(Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    :goto_0
    return-void
.end method

.method private static final updateRemoteBotHash$lambda-19(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->remoteDatabase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "bots"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p0

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p0

    .line 205
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    new-instance v1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;-><init>(Lio/reactivex/SingleEmitter;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    return-void
.end method

.method private static final updateRemoteBotHash$lambda-19$lambda-18(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 207
    invoke-interface {p0, p3}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 208
    new-instance p2, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is empty"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string p1, "model"

    .line 210
    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_2
    move-object p1, p3

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "hash"

    .line 211
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_4

    const-string p3, ""

    .line 212
    :cond_4
    invoke-interface {p0, p3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static final updateRemoteBotHash$lambda-21(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda14;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method private static final updateRemoteBotHash$lambda-21$lambda-20(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$remoteHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/smedialink/bots/data/database/BotsDao;->updateBot(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final fetchVotes(J)Lio/reactivex/Completable;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    invoke-interface {v0, p1, p2}, Lcom/smedialink/bots/data/network/SmartBotsApi;->getBotsVoting(J)Lio/reactivex/Single;

    move-result-object p1

    .line 146
    new-instance p2, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    .line 150
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "botsApi.getBotsVoting(us\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getActiveBotsList()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/AigramBot;",
            ">;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda10;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAllCategories()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
            ">;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->categoriesDao:Lcom/smedialink/bots/data/database/BotsCategoryDao;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/database/BotsCategoryDao;->getAll()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "categoriesDao.getAll().toObservable()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBotById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->getById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object p1

    return-object p1
.end method

.method public final getBotBySku(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->getBotBySku(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final getBotsListObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/database/BotsDao;->streamAll()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "botsDao.streamAll().toObservable()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCategoriesInfo()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda8;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRemoteBotUpdates()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSingleBotObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->streamBot(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "botsDao.streamBot(botId).toObservable()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSkus()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda7;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026nError(e)\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->tagsDao:Lcom/smedialink/bots/data/database/BotsTagDao;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/database/BotsTagDao;->getAll()Ljava/util/List;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTagsInfo()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final resetDownloads()Lio/reactivex/Completable;
    .locals 2

    .line 434
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda12;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "fromAction {\n           \u2026.AVAILABLE)\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sendAppInstallEvent(J)Lio/reactivex/Completable;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    const-string v1, "telegram_client"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/smedialink/bots/data/network/SmartBotsApi;->appInstall(Ljava/lang/String;IJ)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda22;->INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda22;

    .line 105
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "botsApi.appInstall(\n    \u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendBotInstallEvent(Ljava/lang/String;J)Lio/reactivex/Completable;
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/smedialink/bots/data/network/SmartBotsApi;->botInstall(Ljava/lang/String;IJ)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;->INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;

    .line 118
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "botsApi.botInstall(botId\u2026  }\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendBotRating(Ljava/lang/String;JI)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/smedialink/bots/data/network/SmartBotsApi;->voteForBot(Ljava/lang/String;IJ)Lio/reactivex/Single;

    move-result-object p2

    .line 131
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;

    invoke-direct {p3, p4}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-virtual {p2, p3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p2

    .line 141
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;

    invoke-direct {p3, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p2

    .line 142
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda20;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "botsApi.voteForBot(botId\u2026Dao.getOwnRating(botId) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final storeBotDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 47

    move-object/from16 v0, p0

    const-string v1, "snapshot"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v2

    const-string v3, "snapshot.documents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 234
    iget-object v5, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "document.id"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/smedialink/bots/data/database/BotsDao;->getById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v5

    const-string v6, "avatars"

    .line 235
    invoke-virtual {v3, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/util/Map;

    if-eqz v8, :cond_0

    check-cast v6, Ljava/util/Map;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v8, "model"

    .line 236
    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/util/Map;

    if-eqz v10, :cond_1

    check-cast v8, Ljava/util/Map;

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const-string v10, "sku"

    .line 237
    invoke-virtual {v3, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v10, ""

    if-nez v5, :cond_2

    :goto_3
    move-object v11, v10

    goto :goto_4

    .line 238
    :cond_2
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    if-nez v8, :cond_4

    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    const-string v12, "hash"

    .line 239
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_5
    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_5

    move-object v12, v10

    :cond_5
    if-nez v8, :cond_6

    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    const-string v14, "updated"

    .line 240
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :goto_6
    instance-of v15, v14, Lcom/google/firebase/Timestamp;

    if-eqz v15, :cond_7

    check-cast v14, Lcom/google/firebase/Timestamp;

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v14}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v14

    :goto_8
    if-nez v14, :cond_9

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    :cond_9
    move-object/from16 v40, v14

    if-nez v8, :cond_a

    const/4 v14, 0x0

    goto :goto_9

    :cond_a
    const-string v14, "lang"

    .line 241
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :goto_9
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_b

    check-cast v14, Ljava/lang/String;

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    :goto_a
    if-nez v14, :cond_c

    const-string v14, "ru"

    :cond_c
    if-nez v6, :cond_d

    :goto_b
    move-object v15, v10

    goto :goto_c

    :cond_d
    const-string v15, "original"

    .line 242
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_e

    goto :goto_b

    .line 243
    :cond_e
    :goto_c
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v44, v2

    const-string v2, "locales"

    .line 245
    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v10

    const-string v10, "description"

    move-object/from16 v45, v1

    const-string v1, "title"

    if-eqz v17, :cond_12

    .line 246
    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v14

    const-string v14, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, java.util.HashMap<kotlin.String, kotlin.String>>"

    invoke-static {v2, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 211
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    move-object/from16 v19, v2

    .line 247
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_f

    move-object/from16 v7, v18

    :cond_f
    invoke-interface {v9, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_10

    move-object/from16 v7, v18

    :cond_10
    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v19

    move-object/from16 v7, v21

    goto :goto_d

    :cond_11
    move-object/from16 v21, v7

    goto :goto_e

    :cond_12
    move-object/from16 v21, v7

    move-object/from16 v17, v14

    :goto_e
    if-nez v6, :cond_13

    :goto_f
    move-object/from16 v2, v18

    goto :goto_10

    :cond_13
    const-string v2, "rounded"

    .line 253
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_f

    :cond_14
    :goto_10
    if-eqz v6, :cond_40

    if-eqz v8, :cond_40

    .line 254
    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_40

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_40

    .line 258
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_15

    const/4 v6, 0x1

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_1a

    .line 259
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_12

    :cond_16
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_1a

    .line 260
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    if-nez v5, :cond_17

    const/4 v6, 0x0

    goto :goto_13

    .line 261
    :cond_17
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    :goto_13
    sget-object v14, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v14, :cond_19

    if-nez v5, :cond_18

    const/4 v6, 0x0

    goto :goto_14

    :cond_18
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    :goto_14
    sget-object v14, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    if-ne v6, v14, :cond_1a

    :cond_19
    const/4 v6, 0x1

    goto :goto_15

    :cond_1a
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_1b

    .line 263
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    :goto_16
    move-object/from16 v43, v6

    :goto_17
    move-object/from16 v7, v21

    goto/16 :goto_1d

    :cond_1b
    if-eqz v5, :cond_1d

    .line 265
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    sget-object v14, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v14, :cond_1c

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    sget-object v7, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v7, :cond_1c

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v43, v14

    goto :goto_17

    .line 268
    :cond_1c
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    goto :goto_16

    :cond_1d
    if-eqz v13, :cond_1f

    .line 271
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v6, 0x0

    goto :goto_19

    :cond_1f
    :goto_18
    const/4 v6, 0x1

    :goto_19
    if-nez v6, :cond_20

    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v21

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    :goto_1a
    move-object/from16 v43, v6

    goto :goto_1d

    :cond_20
    move-object/from16 v7, v21

    :cond_21
    if-eqz v13, :cond_23

    .line 272
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_22

    goto :goto_1b

    :cond_22
    const/4 v6, 0x0

    goto :goto_1c

    :cond_23
    :goto_1b
    const/4 v6, 0x1

    :goto_1c
    if-nez v6, :cond_24

    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_1a

    .line 274
    :cond_24
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 276
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_1a

    .line 278
    :cond_25
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_1a

    .line 283
    :goto_1d
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    move-object/from16 v1, v18

    .line 288
    :cond_26
    sget-object v14, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    move-object/from16 v20, v12

    move-object/from16 v12, v17

    invoke-virtual {v14, v12}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;->fromValue(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v14

    .line 291
    invoke-virtual {v3, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_27

    move-object/from16 v10, v18

    :cond_27
    const-string v12, "installs"

    .line 292
    invoke-virtual {v3, v12}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v21, 0x0

    if-nez v12, :cond_28

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :cond_28
    move-object/from16 v27, v10

    const-string v10, "priority"

    .line 293
    invoke-virtual {v3, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-nez v10, :cond_29

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_29
    move-object/from16 v28, v1

    const-string v1, "rating"

    .line 294
    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    move-object/from16 v17, v2

    goto :goto_1e

    :cond_2a
    move-object/from16 v17, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1e
    const-string v2, "reviews"

    .line 295
    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2b
    if-nez v5, :cond_2c

    const/16 v29, 0x0

    goto :goto_1f

    .line 296
    :cond_2c
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v23

    move/from16 v29, v23

    :goto_1f
    if-nez v5, :cond_2d

    move/from16 v31, v1

    const/16 v30, 0x0

    goto :goto_20

    .line 297
    :cond_2d
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstallLogged()I

    move-result v23

    move/from16 v31, v1

    move/from16 v30, v23

    .line 298
    :goto_20
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    if-nez v5, :cond_2f

    const/4 v0, 0x1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_21

    :cond_2f
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2e

    const/4 v1, 0x1

    :goto_21
    if-nez v1, :cond_31

    const/4 v1, 0x1

    goto :goto_22

    :cond_30
    const/4 v0, 0x1

    :cond_31
    const/4 v1, 0x0

    :goto_22
    if-nez v5, :cond_32

    const/16 v32, 0x0

    goto :goto_23

    .line 299
    :cond_32
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v19

    move/from16 v32, v19

    :goto_23
    const-string v0, "tags"

    .line 300
    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v33, v1

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_33

    check-cast v0, Ljava/util/List;

    goto :goto_24

    :cond_33
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_34

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_34
    const-string v1, "file"

    .line 301
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_35

    move-object/from16 v1, v18

    .line 302
    :cond_35
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_36

    const/16 v18, 0x1

    goto :goto_25

    :cond_36
    const/16 v18, 0x0

    :goto_25
    if-eqz v18, :cond_37

    move-object/from16 v34, v20

    goto :goto_26

    :cond_37
    move-object/from16 v34, v11

    :goto_26
    const-string v11, "phrases"

    .line 303
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_38

    move-wide/from16 v35, v21

    goto :goto_27

    :cond_38
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-wide/from16 v35, v23

    :goto_27
    const-string v11, "themes"

    .line 304
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_39

    move-wide/from16 v37, v21

    goto :goto_28

    :cond_39
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v37, v20

    :goto_28
    const-string v8, "created"

    .line 305
    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTimestamp(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v8

    if-nez v8, :cond_3a

    const/4 v8, 0x0

    goto :goto_29

    :cond_3a
    invoke-virtual {v8}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v8

    :goto_29
    if-nez v8, :cond_3b

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    :cond_3b
    move-object/from16 v39, v8

    if-eqz v13, :cond_3d

    .line 307
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3c

    goto :goto_2a

    :cond_3c
    const/16 v16, 0x0

    goto :goto_2b

    :cond_3d
    :goto_2a
    const/16 v16, 0x1

    :goto_2b
    if-eqz v16, :cond_3e

    :goto_2c
    const/16 v41, 0x0

    goto :goto_2d

    :cond_3e
    if-nez v5, :cond_3f

    goto :goto_2c

    :cond_3f
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v5

    .line 308
    :goto_2d
    sget-object v5, Lcom/smedialink/bots/data/model/BotType;->Companion:Lcom/smedialink/bots/data/model/BotType$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/smedialink/bots/data/model/BotType$Companion;->resolveById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/BotType;

    move-result-object v42

    .line 282
    new-instance v3, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-object v11, v3

    const-string v5, "id"

    .line 283
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 293
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 295
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object v12, v6

    move-object/from16 v16, v17

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move/from16 v27, v31

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v33

    move/from16 v31, v32

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    .line 282
    invoke-direct/range {v11 .. v43}, Lcom/smedialink/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V

    move-object/from16 v0, v45

    .line 311
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_40
    move-object/from16 v0, v45

    :goto_2e
    move-object v1, v0

    move-object/from16 v2, v44

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_41
    move-object/from16 v46, v1

    move-object v1, v0

    move-object/from16 v0, v46

    .line 314
    iget-object v2, v1, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    .line 1547
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1619
    check-cast v5, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 314
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_42
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 38
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 314
    invoke-virtual {v2, v3}, Lcom/smedialink/bots/data/database/BotsDao;->deleteByIgnored([Ljava/lang/String;)V

    .line 315
    iget-object v2, v1, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v2, v0}, Lcom/smedialink/bots/data/database/BotsDao;->insertOrReplace(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public final storeCategoryDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 10

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    const-string v1, "snapshot.documents"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 371
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "locales"

    .line 372
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/HashMap;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/HashMap;

    goto :goto_1

    :cond_0
    move-object v2, v4

    :goto_1
    const-string v3, ""

    const-string v5, "title"

    if-nez v2, :cond_1

    goto :goto_3

    .line 211
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    move-object v6, v3

    :cond_2
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 376
    :cond_3
    :goto_3
    new-instance v8, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;

    .line 377
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v2, "document.id"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v5, v3

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    const-string v2, "priority"

    .line 379
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    move v9, v3

    :goto_5
    const-string v2, "tags"

    .line 380
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_6

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    :cond_6
    if-nez v4, :cond_7

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v4

    :goto_6
    move-object v2, v8

    move-object v3, v6

    move-object v4, v5

    move v5, v9

    move-object v6, v1

    .line 376
    invoke-direct/range {v2 .. v7}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 375
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    :cond_8
    iget-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->categoriesDao:Lcom/smedialink/bots/data/database/BotsCategoryDao;

    invoke-virtual {p1, v0}, Lcom/smedialink/bots/data/database/BotsCategoryDao;->insertOrReplace(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public final storePurchasesInfo(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopProduct;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "fromAction {\n           \u2026          }\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final storeTagDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 9

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    const-string v1, "snapshot.documents"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v2, "hidden"

    .line 336
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 337
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "locales"

    .line 338
    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, ""

    const-string v6, "title"

    if-nez v4, :cond_2

    goto :goto_3

    .line 211
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v5

    :cond_3
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_4
    :goto_3
    new-instance v4, Lcom/smedialink/bots/data/model/database/TagDbModel;

    .line 343
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "document.id"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v1

    .line 342
    :goto_4
    invoke-direct {v4, v7, v5, v2, v3}, Lcom/smedialink/bots/data/model/database/TagDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_6
    iget-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->tagsDao:Lcom/smedialink/bots/data/database/BotsTagDao;

    invoke-virtual {p1, v0}, Lcom/smedialink/bots/data/database/BotsTagDao;->insertOrReplace(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public final updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda13;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "fromAction {\n           \u2026pdate(it) }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateRemoteBotHash(Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda11;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 218
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda19;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "create<String> { emitter\u2026  }\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
