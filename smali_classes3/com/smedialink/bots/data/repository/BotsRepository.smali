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
    value = "SMAP\nBotsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1855#2:443\n1856#2:446\n1549#2:447\n1620#2,3:448\n1855#2:453\n1856#2:456\n1855#2:457\n1856#2:460\n1603#2,9:462\n1855#2:471\n1856#2:473\n1612#2:474\n766#2:475\n857#2,2:476\n1549#2:478\n1620#2,3:479\n1855#2,2:482\n766#2:484\n857#2,2:485\n1864#2,3:487\n215#3,2:444\n215#3,2:454\n215#3,2:458\n37#4,2:451\n1#5:461\n1#5:472\n*S KotlinDebug\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository\n*L\n233#1:443\n233#1:446\n314#1:447\n314#1:448,3\n335#1:453\n335#1:456\n370#1:457\n370#1:460\n93#1:462,9\n93#1:471\n93#1:473\n93#1:474\n161#1:475\n161#1:476,2\n162#1:478\n162#1:479,3\n407#1:482,2\n416#1:484\n416#1:485,2\n416#1:487,3\n246#1:444,2\n338#1:454,2\n372#1:458,2\n314#1:451,2\n93#1:472\n*E\n"
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
.method public static synthetic $r8$lambda$-wbAFC6Sc5irZN91pOSvphrobAY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->fetchVotes$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0RdN8zBfdvV9t77hqdr34tzd_RQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0YNLYMJWnYLF4nCJ-ctFaizzNVc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotInstallEvent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2Ll7pp4OOHKehPr5hkJrAyhIU3U(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda$25(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4AbrwbCXhH2etEde1Lnx_jRHPwE(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateBotStatus$lambda$14(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJqOm4x6XhY1liUUetkXD83N5gk(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda$25$lambda$23(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKvFR5YNM1bl2EEbIzV8e95E44w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GHTPIcCRCFr0z37ZjZtL9JTdMeg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda$30$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDDc4xJ8aM_Bsx5mJ9dUCaTsByg(Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->resetDownloads$lambda$39(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Liyo-05APEy1QeD0MpjDHpC4GG4(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda$30(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ll26-QwKgAx2xMilUnHuKTUUKp4(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getActiveBotsList$lambda$12(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qs_mNbIcS7TsFOmm_j9dnGrJ7Fw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo$lambda$25$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vlaw6NHnmn1GWRH4xSU_m2t5PqU(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda$18$lambda$17(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wa0nYJ2qa0jXyadfDkiSIls_GyU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendAppInstallEvent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cL-G8iAlaovABdbtAlcMIesz1sQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTPg9VH8qlr_JkCh7EbwM0IU1pk(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getSkus$lambda$1(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dq2uYyrbT_QQvlGdPETUz2TL9cA(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->getRemoteBotUpdates$lambda$16$lambda$15(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hiHjL1gyf5-JdO0AvXi775A61yw(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getRemoteBotUpdates$lambda$16(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mr-yUqn5Y7Qcwp9NbT9pbflFZbQ(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo$lambda$30$lambda$28(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sD2IDMlND9Iry_NUU0ujMzHdDIo(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash$lambda$18(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ut4BKorrUcBBsCoGZfAW6TGAnoY(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storePurchasesInfo$lambda$38(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1l8cVPuTldLyDdGt7W9KkrMNOg(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating$lambda$6(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
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

.method public static final synthetic access$getBotsDao$p(Lcom/smedialink/bots/data/repository/BotsRepository;)Lcom/smedialink/bots/data/database/BotsDao;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    return-object p0
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

.method private static final fetchVotes$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableSource;

    return-object p0
.end method

.method private static final getActiveBotsList$lambda$12(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
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

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
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

    .line 1621
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

.method private static final getCategoriesInfo$lambda$30(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 358
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$getCategoriesInfo$1$2;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$getCategoriesInfo$1$2;-><init>(Lio/reactivex/SingleEmitter;)V

    new-instance p1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final getCategoriesInfo$lambda$30$lambda$28(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getCategoriesInfo$lambda$30$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getRemoteBotUpdates$lambda$16(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/ObservableEmitter;)V
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

.method private static final getRemoteBotUpdates$lambda$16$lambda$15(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
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

.method private static final getSkus$lambda$1(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
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

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1611
    check-cast v1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 93
    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1611
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

.method private static final getTagsInfo$lambda$25(Lcom/smedialink/bots/data/repository/BotsRepository;Lio/reactivex/SingleEmitter;)V
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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 323
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;

    invoke-direct {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;-><init>(Lio/reactivex/SingleEmitter;)V

    new-instance p1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final getTagsInfo$lambda$25$lambda$23(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getTagsInfo$lambda$25$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final resetDownloads$lambda$39(Lcom/smedialink/bots/data/repository/BotsRepository;)V
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

.method private static final sendAppInstallEvent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableSource;

    return-object p0
.end method

.method private static final sendBotInstallEvent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableSource;

    return-object p0
.end method

.method private static final sendBotRating$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleSource;

    return-object p0
.end method

.method private static final sendBotRating$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final sendBotRating$lambda$6(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;
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

.method private static final storePurchasesInfo$lambda$38(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 42

    move-object/from16 v0, p1

    const-string v1, "$products"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
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

    if-eqz v7, :cond_1

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

    :cond_1
    if-eqz v4, :cond_0

    .line 412
    iget-object v3, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v3, v4}, Lcom/smedialink/bots/data/database/BotsDao;->insertOrReplace(Lcom/smedialink/bots/data/model/database/BotsDbModel;)J

    goto :goto_0

    .line 766
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
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

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1865
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
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

    if-eqz v6, :cond_7

    .line 418
    invoke-virtual {v6}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v4

    :goto_3
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

    goto :goto_2

    :cond_9
    return-void
.end method

.method private static final updateBotStatus$lambda$14(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V
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

    if-eqz v1, :cond_0

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

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsDao:Lcom/smedialink/bots/data/database/BotsDao;

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/data/database/BotsDao;->update(Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    :cond_0
    return-void
.end method

.method private static final updateRemoteBotHash$lambda$18(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
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

.method private static final updateRemoteBotHash$lambda$18$lambda$17(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 207
    invoke-interface {p0, p3}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

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

    goto :goto_1

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
    if-eqz p1, :cond_3

    const-string p2, "hash"

    .line 211
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_4

    const-string p3, ""

    .line 212
    :cond_4
    invoke-interface {p0, p3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final updateRemoteBotHash$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableSource;

    return-object p0
.end method


# virtual methods
.method public final fetchVotes(J)Lio/reactivex/Completable;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository;->botsApi:Lcom/smedialink/bots/data/network/SmartBotsApi;

    invoke-interface {v0, p1, p2}, Lcom/smedialink/bots/data/network/SmartBotsApi;->getBotsVoting(J)Lio/reactivex/Single;

    move-result-object p1

    .line 146
    new-instance p2, Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;

    invoke-direct {p2, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;

    invoke-direct {v0, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    .line 150
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "fun fetchVotes(userId: L\u2026scribeOn(Schedulers.io())"

    .line 146
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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda10;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda7;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V

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

    .line 105
    sget-object p2, Lcom/smedialink/bots/data/repository/BotsRepository$sendAppInstallEvent$1;->INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$sendAppInstallEvent$1;

    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

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

    .line 118
    sget-object p2, Lcom/smedialink/bots/data/repository/BotsRepository$sendBotInstallEvent$1;->INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$sendBotInstallEvent$1;

    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda19;

    invoke-direct {p3, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

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
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$sendBotRating$1;

    invoke-direct {p3, p4}, Lcom/smedialink/bots/data/repository/BotsRepository$sendBotRating$1;-><init>(I)V

    new-instance p4, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda20;

    invoke-direct {p4, p3}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p4}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p2

    .line 141
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$sendBotRating$2;

    invoke-direct {p3, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$sendBotRating$2;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    new-instance p4, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda15;

    invoke-direct {p4, p3}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p4}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p2

    .line 142
    new-instance p3, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;

    invoke-direct {p3, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "fun sendBotRating(botId:\u2026Dao.getOwnRating(botId) }"

    .line 141
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

    .line 1855
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

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    :cond_2
    move-object v11, v10

    :cond_3
    if-eqz v8, :cond_4

    const-string v12, "hash"

    .line 239
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_5

    move-object v12, v10

    :cond_5
    if-eqz v8, :cond_6

    const-string v14, "updated"

    .line 240
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    instance-of v15, v14, Lcom/google/firebase/Timestamp;

    if-eqz v15, :cond_7

    check-cast v14, Lcom/google/firebase/Timestamp;

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v14

    if-nez v14, :cond_9

    :cond_8
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    :cond_9
    move-object v15, v14

    const-string v14, "(model?.get(KEY_MODEL_UP\u2026tamp)?.toDate() ?: Date()"

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_a

    const-string v14, "lang"

    .line 241
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    instance-of v9, v14, Ljava/lang/String;

    if-eqz v9, :cond_b

    check-cast v14, Ljava/lang/String;

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_c

    const-string v14, "ru"

    :cond_c
    if-eqz v6, :cond_d

    const-string v9, "original"

    .line 242
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_e

    :cond_d
    move-object v9, v10

    .line 243
    :cond_e
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v44, v2

    .line 244
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v17, v10

    const-string v10, "locales"

    .line 245
    invoke-virtual {v3, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v15

    const-string v15, "description"

    move-object/from16 v45, v1

    const-string v1, "title"

    if-eqz v18, :cond_12

    .line 246
    invoke-virtual {v3, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v14

    const-string v14, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, java.util.HashMap<kotlin.String, kotlin.String>>"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/util/HashMap;

    .line 215
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    move-object/from16 v20, v10

    .line 247
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v21, v1

    if-nez v7, :cond_f

    move-object/from16 v7, v17

    :cond_f
    const-string v1, "entry.value[FIELD_TITLE] ?: \"\""

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_10

    move-object/from16 v7, v17

    :cond_10
    const-string v10, "entry.value[FIELD_DESCRIPTION] ?: \"\""

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v20

    move-object/from16 v1, v21

    move-object/from16 v7, v22

    goto :goto_8

    :cond_11
    move-object/from16 v21, v1

    move-object/from16 v22, v7

    goto :goto_9

    :cond_12
    move-object/from16 v21, v1

    move-object/from16 v22, v7

    move-object/from16 v18, v14

    :goto_9
    if-eqz v6, :cond_13

    const-string v1, "rounded"

    .line 253
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_14

    :cond_13
    move-object/from16 v1, v17

    :cond_14
    if-eqz v6, :cond_40

    if-eqz v8, :cond_40

    .line 254
    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_40

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_40

    .line 258
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_15

    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_1a

    .line 259
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_1a

    .line 260
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    if-eqz v5, :cond_17

    .line 261
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    :goto_c
    sget-object v10, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v10, :cond_19

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    sget-object v10, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    if-ne v6, v10, :cond_1a

    :cond_19
    const/4 v6, 0x1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1b

    .line 263
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    :goto_f
    move-object/from16 v43, v6

    :goto_10
    move-object/from16 v10, v22

    goto/16 :goto_16

    :cond_1b
    if-eqz v5, :cond_1d

    .line 265
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    sget-object v10, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v10, :cond_1c

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    sget-object v14, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v6, v14, :cond_1c

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v43, v10

    goto :goto_10

    .line 268
    :cond_1c
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v6

    goto :goto_f

    :cond_1d
    if-eqz v13, :cond_1f

    .line 271
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v6, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v6, 0x1

    :goto_12
    if-nez v6, :cond_20

    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v22

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    :goto_13
    move-object/from16 v43, v6

    goto :goto_16

    :cond_20
    move-object/from16 v10, v22

    :cond_21
    if-eqz v13, :cond_23

    .line 272
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_22

    goto :goto_14

    :cond_22
    const/4 v6, 0x0

    goto :goto_15

    :cond_23
    :goto_14
    const/4 v6, 0x1

    :goto_15
    if-nez v6, :cond_24

    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_13

    .line 274
    :cond_24
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 276
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_13

    .line 278
    :cond_25
    sget-object v6, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_13

    .line 283
    :goto_16
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v14, v21

    .line 287
    invoke-virtual {v3, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_26

    move-object/from16 v14, v17

    .line 288
    :cond_26
    sget-object v7, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    move-object/from16 v21, v12

    move-object/from16 v12, v18

    invoke-virtual {v7, v12}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;->fromValue(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v7

    .line 291
    invoke-virtual {v3, v15}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_27

    move-object/from16 v15, v17

    goto :goto_17

    :cond_27
    move-object v15, v12

    :goto_17
    const-string v12, "installs"

    .line 292
    invoke-virtual {v3, v12}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v22, 0x0

    if-nez v12, :cond_28

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :cond_28
    move-object/from16 v18, v2

    const-string v2, "priority"

    .line 293
    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_29

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_29
    move-object/from16 v27, v4

    const-string v4, "rating"

    .line 294
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v28, v1

    move-object/from16 v24, v2

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_18

    :cond_2a
    const/4 v1, 0x0

    :goto_18
    const-string v2, "reviews"

    .line 295
    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2b
    if-eqz v5, :cond_2c

    .line 296
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v4

    goto :goto_19

    :cond_2c
    const/4 v4, 0x0

    :goto_19
    if-eqz v5, :cond_2d

    .line 297
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstallLogged()I

    move-result v25

    move/from16 v30, v4

    move/from16 v29, v25

    goto :goto_1a

    :cond_2d
    move/from16 v30, v4

    const/16 v29, 0x0

    .line 298
    :goto_1a
    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/smedialink/bots/data/repository/BotsRepository;->botIsPreinstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_2f

    const/4 v4, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_31

    const/4 v4, 0x1

    goto :goto_1c

    :cond_30
    const/4 v0, 0x1

    :cond_31
    const/4 v4, 0x0

    :goto_1c
    if-eqz v5, :cond_32

    .line 299
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v20

    move/from16 v31, v20

    goto :goto_1d

    :cond_32
    const/16 v31, 0x0

    :goto_1d
    const-string v0, "tags"

    .line 300
    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v32, v4

    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_33

    check-cast v0, Ljava/util/List;

    goto :goto_1e

    :cond_33
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_34

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_34
    const-string v4, "file"

    .line 301
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_35

    move-object/from16 v33, v17

    goto :goto_1f

    :cond_35
    move-object/from16 v33, v4

    .line 302
    :goto_1f
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_36

    const/4 v4, 0x1

    goto :goto_20

    :cond_36
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_37

    move-object/from16 v34, v21

    goto :goto_21

    :cond_37
    move-object/from16 v34, v11

    :goto_21
    const-string v4, "phrases"

    .line 303
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-wide/from16 v35, v25

    goto :goto_22

    :cond_38
    move-wide/from16 v35, v22

    :goto_22
    const-string v4, "themes"

    .line 304
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-wide/from16 v37, v21

    goto :goto_23

    :cond_39
    move-wide/from16 v37, v22

    :goto_23
    const-string v4, "created"

    .line 305
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTimestamp(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3b

    :cond_3a
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    :cond_3b
    if-eqz v13, :cond_3d

    .line 307
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3c

    goto :goto_24

    :cond_3c
    const/16 v16, 0x0

    goto :goto_25

    :cond_3d
    :goto_24
    const/16 v16, 0x1

    :goto_25
    if-eqz v16, :cond_3f

    :cond_3e
    const/16 v41, 0x0

    goto :goto_26

    :cond_3f
    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v5

    .line 308
    :goto_26
    sget-object v5, Lcom/smedialink/bots/data/model/BotType;->Companion:Lcom/smedialink/bots/data/model/BotType$Companion;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/smedialink/bots/data/model/BotType$Companion;->resolveById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/BotType;

    move-result-object v42

    .line 282
    new-instance v3, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-object v11, v3

    const-string v5, "id"

    .line 283
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "document.getString(FIELD_TITLE) ?: \"\""

    .line 287
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "document.getString(FIELD_DESCRIPTION) ?: \"\""

    .line 291
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "document.getLong(FIELD_INSTALLS) ?: 0"

    .line 292
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-string v5, "document.getLong(FIELD_PRIORITY) ?: 0"

    move-object/from16 v8, v24

    .line 293
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-string v5, "document.getLong(FIELD_REVIEWS) ?: 0"

    .line 295
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-string v2, "document.getTimestamp(FI\u2026ATED)?.toDate() ?: Date()"

    .line 305
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v6

    move-object v2, v14

    move-object v14, v7

    move-object v6, v15

    move-object/from16 v5, v19

    move-object v15, v9

    move-object/from16 v16, v28

    move-object/from16 v17, v27

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move/from16 v27, v1

    move/from16 v28, v30

    move/from16 v30, v32

    move-object/from16 v32, v0

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    .line 282
    invoke-direct/range {v11 .. v43}, Lcom/smedialink/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V

    move-object/from16 v0, v45

    .line 311
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_40
    move-object/from16 v0, v45

    :goto_27
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

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 314
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1621
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_42
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 38
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

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

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

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

    if-eqz v2, :cond_2

    .line 215
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

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

    if-nez v6, :cond_1

    move-object v6, v3

    :cond_1
    const-string v9, "entry.value[\"title\"] ?: \"\""

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 376
    :cond_2
    new-instance v8, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;

    .line 377
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v2, "document.id"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    const-string v2, "document.getString(CATEGORIES_FIELD_TITLE) ?: \"\""

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "priority"

    .line 379
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    move v9, v3

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_4
    const-string v2, "tags"

    .line 380
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_5

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    :cond_5
    if-nez v4, :cond_6

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v4

    :goto_5
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
    :cond_7
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
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;Lcom/smedialink/bots/data/repository/BotsRepository;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "fromAction {\n           \u2026          }\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final storeTagDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 10

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

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

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
    const-string v3, "document.getBoolean(TAGS_FIELD_HIDDEN) ?: false"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    if-eqz v4, :cond_3

    .line 215
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

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

    if-nez v7, :cond_2

    move-object v7, v5

    :cond_2
    const-string v9, "entry.value[\"title\"] ?: \"\""

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_3
    new-instance v4, Lcom/smedialink/bots/data/model/database/TagDbModel;

    .line 343
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "document.id"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    const-string v1, "document.getString(TAGS_FIELD_TITLE) ?: \"\""

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {v4, v7, v5, v2, v3}, Lcom/smedialink/bots/data/model/database/TagDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 350
    :cond_5
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
    new-instance v1, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;

    invoke-direct {p1, v1}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "fun updateRemoteBotHash(\u2026  }\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
