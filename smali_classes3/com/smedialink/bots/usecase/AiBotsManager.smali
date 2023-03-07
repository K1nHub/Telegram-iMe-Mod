.class public final Lcom/smedialink/bots/usecase/AiBotsManager;
.super Ljava/lang/Object;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/usecase/AiBotsManager$Companion;,
        Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;,
        Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;,
        Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;,
        Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiBotsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiBotsManager.kt\ncom/smedialink/bots/usecase/AiBotsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n1#2:435\n211#3,2:436\n764#4:438\n855#4,2:439\n1052#4:441\n*S KotlinDebug\n*F\n+ 1 AiBotsManager.kt\ncom/smedialink/bots/usecase/AiBotsManager\n*L\n414#1:436,2\n168#1:438\n168#1:439,2\n200#1:441\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/bots/usecase/AiBotsManager$Companion;

.field private static volatile INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager;


# instance fields
.field private final activeBots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/AigramBot;",
            ">;"
        }
    .end annotation
.end field

.field private final answersRepository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

.field private botDisableCallback:Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;

.field private final botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

.field private final categoriesMapper:Lcom/smedialink/bots/data/mapper/BotCategoryMapper;

.field private currentTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation
.end field

.field private final destinationPath:Ljava/io/File;

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final downloadManager:Landroid/app/DownloadManager;

.field private final downloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/bots/domain/model/DownloadSession;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadsPath:Ljava/io/File;

.field private final replier:Lcom/smedialink/bots/domain/Replier;

.field private final responseMapper:Lcom/smedialink/bots/data/mapper/ResponseMapper;

.field private final shopItemMapper:Lcom/smedialink/bots/data/mapper/ShopItemMapper;


# direct methods
.method public static synthetic $r8$lambda$2-0NKsppKHd7BNOPOW96kIdk2aI(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getSingleBotObservable$lambda-18(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2F5XyEpbzhXEnQKapC09qJLPCjc(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->rebuildActiveBotsList$lambda-1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2O87AD0ZLmO-mM8zhcPx6O9HLN8(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda-14(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4Hpwz0nTAB31xHzyH5H6Q_hOTFI(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda-32(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5V9FLm-rhGtF5zdd0B6JX0dIm6Y(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;JLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading$lambda-47(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;JLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$67MY2S4u2pqOXbH5Aw30ZFVfbsw(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendAppInstalledEvent$lambda-4(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6iVVjwzGrdHM8OIEzxa8CLryP0Q(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading$lambda-49(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Wl0M7C_lrIxTjOfaerO26Om1sY(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->listenForRemoteBotUpdates$lambda-27(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bqnep9XzBaXz_mx13HhWWaGsiTc(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchTags$lambda-34(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_fzcu7-uOF_ptmUjBeiOZtcExA(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda-16(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D8TdlrAXCQb5q5RzNQYOb3PClUc(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda-17(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E3FtKbBDqBB6KlWIKb88mBsL5Sk(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleDownloadCompletion$lambda-53(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FcGFNDqZpnrR9sQfVZYZfqVL3GQ(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableCategories$lambda-19(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IewEL9HsT7WswCuUgQ2dmPLX6SE(Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleDownloadCompletion$lambda-52(Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KLdha1Gy9jdX4hdICPuYA8Ymkp0(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->rebuildActiveBotsList$lambda-0(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kx4TcoXW_cNxmOLSPLtYXjvZiKs(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->unzip$lambda-59(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLd4nTuWN5vEmMAcZCiplXTKLA0(Ljava/lang/String;IJLjava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendBotRatingEvent$lambda-9(Ljava/lang/String;IJLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5wboo8WsRAHQIgjqUWq-z75x5c(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchCategories$lambda-37(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODG2yu6GE66IG94MAy3HpkOzivs(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchTags$lambda-35(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OEiaIqNOZUK_o0a2p_7jBkalt3k(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->disableBot$lambda-45(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCRk1QaSiNQhFGvRYKy2X3N5bzo(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableCategories$lambda-21(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SfZZ882AcpmOqULy7CG2oNgKkNc(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda-15(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WEKjPdta_priM4omL6LmnFHl56o(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchVotes$lambda-25(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wjof3aqkmiTOOhuvDHBJI3Oegx4(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanupData$lambda-55(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYq7K9n-13CMZyay00zyeSY6X8o(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCategories$lambda-23(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zxe0l1zCiaMkJO3mhmXYa50dMRM()V
    .locals 0

    invoke-static {}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanDownloads$lambda-62()V

    return-void
.end method

.method public static synthetic $r8$lambda$_K8Ucf6oaWQeZvdLsN7VXhIB-jg()V
    .locals 0

    invoke-static {}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda-31()V

    return-void
.end method

.method public static synthetic $r8$lambda$atbrolXIdzMjjbBg-b7P5xzZ0Ac()V
    .locals 0

    invoke-static {}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchVotes$lambda-24()V

    return-void
.end method

.method public static synthetic $r8$lambda$dgBstaWwjaABpAQIyKWwt64oIS0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanDownloads$lambda-63(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9TZFvH01GRCbryJymbTIyBsq7A(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendBotInstalledEvent$lambda-7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ggBj5XsJGc33LZn0F5oed3eh8eU(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCategories$lambda-22(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hfi81rQkOX5o68nhkfsVgmupPVY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->listenForRemoteBotUpdates$lambda-28(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijpINR5vAQHOt-JOgCqaaeoEM68(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanupData$lambda-56(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXPDDOXpJgbeXbAEaOdT0DRxtcE(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->disableBot$lambda-44(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWr4cimiIf2es5mSLHhlduyKcwQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanupData$lambda-57(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oySQAxSqnm5mL4ELvNjZRtJxa00(Ljava/lang/String;Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/lang/String;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda-30(Ljava/lang/String;Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXF94oHOfg8HVhrekJC6VDuLmqs(Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendAppInstalledEvent$lambda-3(Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZ9ustGhyPsC_1EWjlICxf0_IsM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendBotRatingEvent$lambda-10(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAmK1W_I6loUq-4_Pra8XIuJpLY(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda-13(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$spI1vUEJSrvBUpuUrgemSj9zOmc(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadPurchase$lambda-41(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIy4G626Pcy_NK3gQ0_E5_HAyRg(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchCategories$lambda-38(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vbtRTHDh-vO4LzLrWkn1v1WkHZw(Lcom/smedialink/bots/usecase/AiBotsManager;JLcom/smedialink/bots/data/model/database/BotsDbModel;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadPurchase$lambda-40(Lcom/smedialink/bots/usecase/AiBotsManager;JLcom/smedialink/bots/data/model/database/BotsDbModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w6khUKBs9ghkdn7uaKEXRQvIy4k(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanDownloads$lambda-61(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$woRuauEPOD5cTuk1PmQtvKsLdfM(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendBotInstalledEvent$lambda-6(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$yeJg1dVwCPwrTwQZ4lgabOlZqys(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->updateBotStatus$lambda-43(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFEyuWYnIH_fKJX-wl9lJMHex_E(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading$lambda-48(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/usecase/AiBotsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/bots/usecase/AiBotsManager;->Companion:Lcom/smedialink/bots/usecase/AiBotsManager$Companion;

    const-string v2, "ru_MD"

    const-string v3, "ru_UA"

    const-string v4, "ru_RU"

    const-string v5, "ru_KZ"

    const-string v6, "ru_KG"

    const-string v7, "ru_BY"

    const-string v8, "ru"

    const-string v9, "hy_AM"

    const-string v10, "hy"

    const-string v11, "uz_Cyrl_UZ"

    const-string v12, "uz_Cyrl"

    const-string v13, "tg_Cyrl_TJ"

    const-string v14, "tg_Cyrl"

    const-string v15, "az_Cyrl_AZ"

    const-string v16, "az_Cyrl"

    .line 59
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    const-string v1, "7"

    const-string v2, "373"

    const-string v3, "374"

    const-string v4, "375"

    const-string v5, "380"

    const-string v6, "992"

    const-string v7, "994"

    const-string v8, "996"

    const-string v9, "998"

    .line 64
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

    iput-object p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->activeBots:Ljava/util/List;

    .line 92
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    .line 94
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

    .line 95
    new-instance p2, Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-direct {p2, p1}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->answersRepository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    .line 96
    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-direct {v0, p1, p3}, Lcom/smedialink/bots/data/repository/BotsRepository;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    .line 97
    new-instance p3, Lcom/smedialink/bots/data/mapper/ResponseMapper;

    invoke-direct {p3, v0, p1}, Lcom/smedialink/bots/data/mapper/ResponseMapper;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->responseMapper:Lcom/smedialink/bots/data/mapper/ResponseMapper;

    .line 98
    new-instance v0, Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    invoke-direct {v0}, Lcom/smedialink/bots/data/mapper/ShopItemMapper;-><init>()V

    iput-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    .line 99
    new-instance v0, Lcom/smedialink/bots/data/mapper/BotCategoryMapper;

    invoke-direct {v0}, Lcom/smedialink/bots/data/mapper/BotCategoryMapper;-><init>()V

    iput-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->categoriesMapper:Lcom/smedialink/bots/data/mapper/BotCategoryMapper;

    .line 100
    new-instance v0, Lcom/smedialink/bots/data/SmartReplier;

    invoke-direct {v0, p0, p3, p2}, Lcom/smedialink/bots/data/SmartReplier;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/data/mapper/ResponseMapper;Lcom/smedialink/bots/data/repository/UserAnswersRepository;)V

    iput-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->replier:Lcom/smedialink/bots/domain/Replier;

    const-string p2, "download"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.DownloadManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

    .line 103
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getDisposables$p(Lcom/smedialink/bots/usecase/AiBotsManager;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/smedialink/bots/usecase/AiBotsManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/smedialink/bots/usecase/AiBotsManager;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager;

    return-void
.end method

.method private final cleanDownloads(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    .line 211
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 414
    iget-object v2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->resetDownloads()Lio/reactivex/Completable;

    move-result-object v0

    .line 417
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 418
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda11;

    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda29;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda29;

    .line 420
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 423
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final cleanDownloads$lambda-61(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$finallyCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final cleanDownloads$lambda-62()V
    .locals 2

    const-string v0, "BotsDownloader"

    const-string v1, "Downloads cleared"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final cleanDownloads$lambda-63(Ljava/lang/Throwable;)V
    .locals 0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final cleanupData(Ljava/io/File;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "botId"

    .line 388
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {p0, v0, v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object v1

    .line 389
    new-instance v2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 390
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 391
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 392
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda32;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda32;

    invoke-virtual {p1, v1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final cleanupData$lambda-55(Ljava/io/File;)V
    .locals 0

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static final cleanupData$lambda-56(Ljava/lang/String;)V
    .locals 1

    const-string v0, " installed"

    .line 393
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BotsDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final cleanupData$lambda-57(Ljava/lang/Throwable;)V
    .locals 0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final disableBot$lambda-44(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$botId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " disabled"

    .line 315
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BotsDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final disableBot$lambda-45(Ljava/lang/Throwable;)V
    .locals 0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final downloadPurchase$lambda-40(Lcom/smedialink/bots/usecase/AiBotsManager;JLcom/smedialink/bots/data/model/database/BotsDbModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p3}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static final downloadPurchase$lambda-41(Ljava/lang/Throwable;)V
    .locals 0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final fetchCategories()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo()Lio/reactivex/Single;

    move-result-object v0

    .line 273
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 274
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda15;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    sget-object v2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda35;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda35;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final fetchCategories$lambda-37(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storeCategoryDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    :cond_0
    return-void
.end method

.method private static final fetchCategories$lambda-38(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final fetchTags()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo()Lio/reactivex/Single;

    move-result-object v0

    .line 258
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 259
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda14;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    sget-object v2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda26;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda26;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final fetchTags$lambda-34(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storeTagDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    .line 263
    invoke-direct {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchCategories()V

    :cond_0
    return-void
.end method

.method private static final fetchTags$lambda-35(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final fetchVotes$lambda-24()V
    .locals 0

    return-void
.end method

.method private static final fetchVotes$lambda-25(Ljava/lang/Throwable;)V
    .locals 0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final getAllBotsObservable$lambda-13(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "$botLanguage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    .line 168
    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getLang()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static final getAllBotsObservable$lambda-14(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/smedialink/bots/data/mapper/ShopItemMapper;->mapList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda-15(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 170
    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$1;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$2;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda-16(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->setCurrentTags(Ljava/util/List;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/smedialink/bots/data/mapper/ShopItemMapper;->mapList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda-17(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 182
    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getAvailableCategories$lambda-19(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->categoriesMapper:Lcom/smedialink/bots/data/mapper/BotCategoryMapper;

    invoke-virtual {p0, p2, p1}, Lcom/smedialink/bots/data/mapper/BotCategoryMapper;->mapList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getAvailableCategories$lambda-21(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$lambda-21$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$lambda-21$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getCategories$lambda-22(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storeCategoryDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    :cond_0
    return-object p1
.end method

.method private static final getCategories$lambda-23(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableCategories(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final getSingleBotObservable$lambda-18(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->setCurrentTags(Ljava/util/List;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p2, p0, p1}, Lcom/smedialink/bots/data/mapper/ShopItemMapper;->mapItem(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/util/List;Ljava/lang/String;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p0

    return-object p0
.end method

.method private static final handleChosenBotAnswer$lambda-30(Ljava/lang/String;Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/lang/String;I)V
    .locals 1

    const-string v0, "$botId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holidays"

    .line 245
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p1, Lcom/smedialink/bots/usecase/AiBotsManager;->answersRepository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-virtual {p0, p2, p3, p4}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->saveHolidayGreeting(JLjava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p1, Lcom/smedialink/bots/usecase/AiBotsManager;->answersRepository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-virtual {p1, p0, p4, p5}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->increaseResponseCounter(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static final handleChosenBotAnswer$lambda-31()V
    .locals 0

    return-void
.end method

.method private static final handleChosenBotAnswer$lambda-32(Ljava/lang/Throwable;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final handleDownloadCompletion$lambda-52(Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/io/File;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BotsDownloader"

    const-string v1, "Unzip completed, deletion started"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getDownloads()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanupData(Ljava/io/File;)V

    return-void
.end method

.method private static final handleDownloadCompletion$lambda-53(Ljava/lang/Throwable;)V
    .locals 0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final launchDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 344
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p2

    const-string p3, "Downloading..."

    .line 345
    invoke-virtual {p2, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p2

    const/4 p3, 0x0

    .line 346
    invoke-virtual {p2, p3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object p2

    .line 347
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    move-result-object p2

    const/4 p3, 0x1

    .line 348
    invoke-virtual {p2, p3}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    move-result-object p2

    .line 349
    invoke-virtual {p2, p3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object p2

    .line 352
    iget-object p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p3, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p2

    .line 353
    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/smedialink/bots/domain/model/DownloadSession;

    invoke-direct {p3, v0, p1}, Lcom/smedialink/bots/domain/model/DownloadSession;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenForRemoteBotUpdates$lambda-27(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->storeBotDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    .line 233
    invoke-interface {p1}, Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;->onSuccess()V

    .line 234
    invoke-direct {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->fetchTags()V

    .line 235
    invoke-direct {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->rebuildActiveBotsList()V

    :cond_0
    return-void
.end method

.method private static final listenForRemoteBotUpdates$lambda-28(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final rebuildActiveBotsList()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getActiveBotsList()Lio/reactivex/Single;

    move-result-object v0

    .line 122
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 123
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda16;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    sget-object v2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda21;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda21;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final rebuildActiveBotsList$lambda-0(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getActiveBots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getActiveBots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotDisableCallback()Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;->onSuccess()V

    :goto_0
    return-void
.end method

.method private static final rebuildActiveBotsList$lambda-1(Ljava/lang/Throwable;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final sendAppInstalledEvent$lambda-3(Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;J)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0}, Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;->onSuccess()V

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "App installed event, user id "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Remote event"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final sendAppInstalledEvent$lambda-4(Ljava/lang/Throwable;)V
    .locals 0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final sendBotInstalledEvent(Ljava/lang/String;J)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotInstallEvent(Ljava/lang/String;J)Lio/reactivex/Completable;

    move-result-object v0

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;J)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda30;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda30;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final sendBotInstalledEvent$lambda-6(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "$botId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " installed event, user id "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Remote event"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final sendBotInstalledEvent$lambda-7(Ljava/lang/Throwable;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final sendBotRatingEvent$lambda-10(Ljava/lang/Throwable;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final sendBotRatingEvent$lambda-9(Ljava/lang/String;IJLjava/lang/Integer;)V
    .locals 1

    const-string p4, "$botId"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bot "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rating "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " event, user id "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Remote event"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final startBotDownloading$lambda-47(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;JLio/reactivex/disposables/Disposable;)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$botId"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->sendBotInstalledEvent(Ljava/lang/String;J)V

    return-void
.end method

.method private static final startBotDownloading$lambda-48(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$downloadLink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager;->launchDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final startBotDownloading$lambda-49(Ljava/lang/Throwable;)V
    .locals 0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final unzip(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    .line 400
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final unzip$lambda-59(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    const-string v0, "$destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 406
    :cond_0
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 408
    invoke-interface {p2, p0}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final updateBotStatus$lambda-43(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->rebuildActiveBotsList()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 429
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;

    invoke-direct {v0, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    invoke-direct {p0, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->cleanDownloads(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final disableBot(Ljava/lang/String;)V
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {p0, p1, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object v0

    .line 312
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 313
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda27;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda27;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final downloadPurchase(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getBotBySku(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 296
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 297
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 298
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;J)V

    sget-object p2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda34;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda34;

    invoke-virtual {p1, v0, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final fetchVotes(J)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->fetchVotes(J)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda13;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda13;

    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda28;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda28;

    invoke-virtual {p1, p2, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getActiveBots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/AigramBot;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->activeBots:Ljava/util/List;

    return-object v0
.end method

.method public final getAllBotsObservable(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "botLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getBotsListObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;-><init>(Lcom/smedialink/bots/domain/model/BotLanguage;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 169
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda40;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda45;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda45;

    .line 170
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "botsRepository.getBotsLi\u2026rity, ShopItem::title)) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAllBotsObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    .line 175
    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getBotsListObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda41;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda43;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda43;

    .line 182
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "botsRepository\n         \u2026rity, ShopItem::title)) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAvailableCategories(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    .line 198
    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getAllCategories()Lio/reactivex/Observable;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;

    .line 200
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "botsRepository\n         \u2026cending { it.priority } }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAvailableResponses(Ljava/lang/String;JLcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;)V
    .locals 1

    const-string v0, "sentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartReplierCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->replier:Lcom/smedialink/bots/domain/Replier;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/smedialink/bots/domain/Replier;->getResponsesFromBots(Ljava/lang/String;JLcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;)V

    return-void
.end method

.method public final getAvailableSkus()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getSkus()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final getBotDisableCallback()Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botDisableCallback:Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;

    return-object v0
.end method

.method public final getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    return-object v0
.end method

.method public final getCategories(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getCategoriesInfo()Lio/reactivex/Single;

    move-result-object v0

    .line 206
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 207
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda38;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "botsRepository.getCatego\u2026  .distinctUntilChanged()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCurrentTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

    return-object v0
.end method

.method public final getDownloads()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/bots/domain/model/DownloadSession;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    return-object v0
.end method

.method public final getSingleBotObservable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    .line 187
    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getSingleBotObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "botsRepository\n         \u2026ge)\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final handleChosenBotAnswer(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda9;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p4

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/lang/String;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 251
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda12;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda12;

    sget-object p3, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda22;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda22;

    .line 252
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final handleDownloadCompletion(J)V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/bots/domain/model/DownloadSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/bots/domain/model/DownloadSession;->getFile()Ljava/io/File;

    move-result-object v0

    .line 359
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BotsDownloader"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v4, "File downloaded to "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 361
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    const-string v4, "File exists? "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_3

    .line 362
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    const-string v4, "File last modified: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    const-string v4, "Unzip to "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    move-object v2, v1

    goto :goto_4

    .line 366
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v3, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destinationPath.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/smedialink/bots/usecase/AiBotsManager;->unzip(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v2

    .line 367
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 368
    iget-object v3, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/bots/domain/model/DownloadSession;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/DownloadSession;->getBotId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_7

    .line 370
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v1

    const-string v3, "complete()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :cond_7
    invoke-virtual {v2, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    .line 371
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 372
    new-instance v2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;JLjava/io/File;)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda25;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda25;

    invoke-virtual {v1, v2, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final listenForRemoteBotUpdates(Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->getRemoteBotUpdates()Lio/reactivex/Observable;

    move-result-object v0

    .line 228
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 229
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda31;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda31;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final sendAppInstalledEvent(JLcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendAppInstallEvent(J)Lio/reactivex/Completable;

    move-result-object v0

    .line 137
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager$AppInstalledCallback;J)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda23;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda23;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final sendBotRatingEvent(Ljava/lang/String;JI)V
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smedialink/bots/data/repository/BotsRepository;->sendBotRating(Ljava/lang/String;JI)Lio/reactivex/Single;

    move-result-object v0

    .line 158
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;IJ)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda33;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda33;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final setBotDisableCallback(Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botDisableCallback:Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;

    return-void
.end method

.method public final setCurrentTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/TagDbModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

    return-void
.end method

.method public final startBotDownloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadLink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotsDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

    const-string v2, "Download path "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v0, Lcom/smedialink/bots/data/model/BotStatus;->DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {p0, p1, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p4

    .line 332
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p4

    .line 333
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p4

    .line 334
    new-instance p5, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda24;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda24;

    invoke-virtual {p4, p5, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 337
    iget-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final storeActualPurchases(Ljava/util/List;)Lio/reactivex/Completable;
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

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storePurchasesInfo(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager;->botsRepository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object p1

    .line 307
    new-instance p2, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "botsRepository.updateBot\u2026rebuildActiveBotsList() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
