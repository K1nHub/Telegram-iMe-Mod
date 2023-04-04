.class public final Lcom/iMe/bots/usecase/AiBotsManager;
.super Ljava/lang/Object;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;,
        Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;,
        Lcom/iMe/bots/usecase/AiBotsManager$Companion;,
        Lcom/iMe/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;,
        Lcom/iMe/bots/usecase/AiBotsManager$SmartReplierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiBotsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiBotsManager.kt\ncom/iMe/bots/usecase/AiBotsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,434:1\n1#2:435\n215#3,2:436\n*S KotlinDebug\n*F\n+ 1 AiBotsManager.kt\ncom/iMe/bots/usecase/AiBotsManager\n*L\n414#1:436,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/bots/usecase/AiBotsManager$Companion;

.field private static volatile INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager;


# instance fields
.field private final activeBots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/AigramBot;",
            ">;"
        }
    .end annotation
.end field

.field private final answersRepository:Lcom/iMe/bots/data/repository/UserAnswersRepository;

.field private botDisableCallback:Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;

.field private final botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

.field private final categoriesMapper:Lcom/iMe/bots/data/mapper/BotCategoryMapper;

.field private currentTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
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
            "Lcom/iMe/bots/domain/model/DownloadSession;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadsPath:Ljava/io/File;

.field private final replier:Lcom/iMe/bots/domain/Replier;

.field private final responseMapper:Lcom/iMe/bots/data/mapper/ResponseMapper;

.field private final shopItemMapper:Lcom/iMe/bots/data/mapper/ShopItemMapper;


# direct methods
.method public static synthetic $r8$lambda$-Y-5eB1WyYsaxx2SAgN2TakKlFQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->listenForRemoteBotUpdates$lambda$26(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0psrdgIKlvIk2hCLTrjLpUNR6sk(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotInstalledEvent$lambda$6(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1gtXx5T8PtW1pPzLS4IIaLiriL8(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanDownloads$lambda$59(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2yJ0sdbF_2qGBIEl-fwJiCoiZ3Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getCategories$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6Pdl9J9IVdYf2Ppt50Z8qu0I6sw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchTags$lambda$32(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8mUc-GQk2hLpDZp7Hf2c-TxG4LE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAvailableCategories$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AJ50KW--9pM498AtQyxfGqsESSk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchTags$lambda$33(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-qy2HUCJxccw0UzfB6qisi_UQk()V
    .locals 0

    invoke-static {}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanDownloads$lambda$60()V

    return-void
.end method

.method public static synthetic $r8$lambda$D31S7_W-kcl7f8czzp5WyVyqMTc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotRatingEvent$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETpyEcJEtvBGw46gd9vCvzvLfmI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EfiGtaTT1tF9MBYSQVygl63IyfM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->downloadPurchase$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdSI6bwl_SeebOCMexi5paQHx1g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->handleDownloadCompletion$lambda$51(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFhk49QyGbIAja9OjJZOfArgoqk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanDownloads$lambda$61(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G_zqmfH6uXZu3QXGi9KnShqbRoI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->rebuildActiveBotsList$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I9MNSPIPGG07B3wsc8lp-lKNCGw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->sendAppInstalledEvent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IGETYUQANpkOcF_SswJgy5u2dAg(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanupData$lambda$54(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J-w_w86gfforkuz9zPp8mvbRFfM(Lcom/iMe/bots/usecase/AiBotsManager;JLjava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager;->handleDownloadCompletion$lambda$50(Lcom/iMe/bots/usecase/AiBotsManager;JLjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KuUTC2jKXs4BWyr427QEECffwm4(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->disableBot$lambda$42(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NH9KqILwWJPYFgcAGSdOoAczOUc(Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/bots/usecase/AiBotsManager;->sendAppInstalledEvent$lambda$3(Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NOGXYQ0MyvSBemY1GiNhQtqoJeo()V
    .locals 0

    invoke-static {}, Lcom/iMe/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$Od6Jy7Nw38qp3dMXGQAF64Bspws(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchCategories$lambda$35(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwgCYEZUC51wlmJByYnTLFLfDU4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PShfaavbRPJKyUIwN3fKHuvc9iY(Ljava/lang/String;Lcom/iMe/bots/usecase/AiBotsManager;JLjava/lang/String;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda$28(Ljava/lang/String;Lcom/iMe/bots/usecase/AiBotsManager;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RkX7wEthMjj1o9EfvwgKrTpSwWs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VX_VK6IZREG6e70OCtj5T5npiyc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->downloadPurchase$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4og5UomZZTTtDMiNE7cz7DpQ5o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchVotes$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJjhO10h0Ub7vk4qHGJk3LQwwBw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->startBotDownloading$lambda$47(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YxQxXVuQqirsM0yhYX1hJDFxmbw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchCategories$lambda$36(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_JZ06kJtHiBspeq951E0mhcZj0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getCategories$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/google/firebase/firestore/QuerySnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_XT-vTctHCRQjSeDjUQV2S8UVxA(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->updateBotStatus$lambda$41(Lcom/iMe/bots/usecase/AiBotsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ccyYUW2SfnKRiTNiGnO_3hucnRI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/bots/domain/model/ShopItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getSingleBotObservable$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/bots/domain/model/ShopItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cvfTWvi9vcAU48AZCMR5gKmG26s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanupData$lambda$55(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1rdN6mga-zWMMxAM-AVwpcRN5c(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/bots/usecase/AiBotsManager;->unzip$lambda$57(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h48D15nOWaXo1qKpz5WKCkLPLVY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->handleChosenBotAnswer$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h7TRrNzm9ADlOziKqHC52eEa4W8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->rebuildActiveBotsList$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLvUnve1imlQHyUIP-N6rdLOruo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->listenForRemoteBotUpdates$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1iPGFXN_a5_HaF1UeidKeJUDb4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotRatingEvent$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUrCSDWqecYwO2HvDVc_cfPecWk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rgy_RgFTW7RFPzs81QIN1-EckZE(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager;->startBotDownloading$lambda$46(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rsyppCMh7pBipN1rth-CeUQRKj8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->startBotDownloading$lambda$45(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tgHUFMLvU0DTokz9Kn0df02YPWU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAvailableCategories$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ulhwnp6zDdcFur8-Qt06HKOboSw()V
    .locals 0

    invoke-static {}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchVotes$lambda$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$uuGIvM9kZPUyIZD69lewDevPDOs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wH_0YpaUwn1QbxBJHYGYvmPxrFw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotInstalledEvent$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xyr05R0kNtotlmK9V34XD9K1RWI(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanupData$lambda$53(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xz2tsCmurfIgnqx-tVVDkVavroY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager;->disableBot$lambda$43(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/usecase/AiBotsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/bots/usecase/AiBotsManager;->Companion:Lcom/iMe/bots/usecase/AiBotsManager$Companion;

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

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

    iput-object p3, p0, Lcom/iMe/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->activeBots:Ljava/util/List;

    .line 92
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    .line 94
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

    .line 95
    new-instance p2, Lcom/iMe/bots/data/repository/UserAnswersRepository;

    invoke-direct {p2, p1}, Lcom/iMe/bots/data/repository/UserAnswersRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->answersRepository:Lcom/iMe/bots/data/repository/UserAnswersRepository;

    .line 96
    new-instance v0, Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-direct {v0, p1, p3}, Lcom/iMe/bots/data/repository/BotsRepository;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    .line 97
    new-instance p3, Lcom/iMe/bots/data/mapper/ResponseMapper;

    invoke-direct {p3, v0, p1}, Lcom/iMe/bots/data/mapper/ResponseMapper;-><init>(Lcom/iMe/bots/data/repository/BotsRepository;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/iMe/bots/usecase/AiBotsManager;->responseMapper:Lcom/iMe/bots/data/mapper/ResponseMapper;

    .line 98
    new-instance v0, Lcom/iMe/bots/data/mapper/ShopItemMapper;

    invoke-direct {v0}, Lcom/iMe/bots/data/mapper/ShopItemMapper;-><init>()V

    iput-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/iMe/bots/data/mapper/ShopItemMapper;

    .line 99
    new-instance v0, Lcom/iMe/bots/data/mapper/BotCategoryMapper;

    invoke-direct {v0}, Lcom/iMe/bots/data/mapper/BotCategoryMapper;-><init>()V

    iput-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->categoriesMapper:Lcom/iMe/bots/data/mapper/BotCategoryMapper;

    .line 100
    new-instance v0, Lcom/iMe/bots/data/SmartReplier;

    invoke-direct {v0, p0, p3, p2}, Lcom/iMe/bots/data/SmartReplier;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Lcom/iMe/bots/data/mapper/ResponseMapper;Lcom/iMe/bots/data/repository/UserAnswersRepository;)V

    iput-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->replier:Lcom/iMe/bots/domain/Replier;

    const-string p2, "download"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.DownloadManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

    .line 103
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$fetchCategories(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchCategories()V

    return-void
.end method

.method public static final synthetic access$fetchTags(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->fetchTags()V

    return-void
.end method

.method public static final synthetic access$getCategoriesMapper$p(Lcom/iMe/bots/usecase/AiBotsManager;)Lcom/iMe/bots/data/mapper/BotCategoryMapper;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->categoriesMapper:Lcom/iMe/bots/data/mapper/BotCategoryMapper;

    return-object p0
.end method

.method public static final synthetic access$getDisposables$p(Lcom/iMe/bots/usecase/AiBotsManager;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/iMe/bots/usecase/AiBotsManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager;

    return-object v0
.end method

.method public static final synthetic access$getShopItemMapper$p(Lcom/iMe/bots/usecase/AiBotsManager;)Lcom/iMe/bots/data/mapper/ShopItemMapper;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->shopItemMapper:Lcom/iMe/bots/data/mapper/ShopItemMapper;

    return-object p0
.end method

.method public static final synthetic access$rebuildActiveBotsList(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->rebuildActiveBotsList()V

    return-void
.end method

.method public static final synthetic access$sendBotInstalledEvent(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotInstalledEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/iMe/bots/usecase/AiBotsManager;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager;

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
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    .line 215
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
    iget-object v2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

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
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->resetDownloads()Lio/reactivex/Completable;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda11;

    .line 420
    sget-object v1, Lcom/iMe/bots/usecase/AiBotsManager$cleanDownloads$4;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$cleanDownloads$4;

    .line 422
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 420
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 423
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final cleanDownloads$lambda$59(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$finallyCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final cleanDownloads$lambda$60()V
    .locals 2

    const-string v0, "BotsDownloader"

    const-string v1, "Downloads cleared"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final cleanDownloads$lambda$61(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->ENABLED:Lcom/iMe/bots/data/model/BotStatus;

    invoke-virtual {p0, v0, v1}, Lcom/iMe/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/iMe/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object v1

    .line 389
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;)V

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager$cleanupData$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$cleanupData$3;

    .line 394
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda28;

    invoke-direct {v2, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda28;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 392
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final cleanupData$lambda$53(Ljava/io/File;)V
    .locals 0

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static final cleanupData$lambda$54(Ljava/lang/String;)V
    .locals 1

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " installed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BotsDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final cleanupData$lambda$55(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final disableBot$lambda$42(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$botId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " disabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BotsDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final disableBot$lambda$43(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final downloadPurchase$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final downloadPurchase$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final fetchCategories()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getCategoriesInfo()Lio/reactivex/Single;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$fetchCategories$1;

    invoke-direct {v1, p0}, Lcom/iMe/bots/usecase/AiBotsManager$fetchCategories$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda23;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda23;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/bots/usecase/AiBotsManager$fetchCategories$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$fetchCategories$2;

    .line 279
    new-instance v3, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda27;

    invoke-direct {v3, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda27;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 275
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final fetchCategories$lambda$35(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final fetchCategories$lambda$36(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final fetchTags()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getTagsInfo()Lio/reactivex/Single;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$fetchTags$1;

    invoke-direct {v1, p0}, Lcom/iMe/bots/usecase/AiBotsManager$fetchTags$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/bots/usecase/AiBotsManager$fetchTags$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$fetchTags$2;

    .line 265
    new-instance v3, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 260
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final fetchTags$lambda$32(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final fetchTags$lambda$33(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final fetchVotes$lambda$22()V
    .locals 0

    return-void
.end method

.method private static final fetchVotes$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getAllBotsObservable$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAllBotsObservable$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAvailableCategories$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getAvailableCategories$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final getCategories$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/QuerySnapshot;

    return-object p0
.end method

.method private static final getCategories$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getSingleBotObservable$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/bots/domain/model/ShopItem;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/bots/domain/model/ShopItem;

    return-object p0
.end method

.method private static final handleChosenBotAnswer$lambda$28(Ljava/lang/String;Lcom/iMe/bots/usecase/AiBotsManager;JLjava/lang/String;I)V
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
    iget-object p0, p1, Lcom/iMe/bots/usecase/AiBotsManager;->answersRepository:Lcom/iMe/bots/data/repository/UserAnswersRepository;

    invoke-virtual {p0, p2, p3, p4}, Lcom/iMe/bots/data/repository/UserAnswersRepository;->saveHolidayGreeting(JLjava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p1, Lcom/iMe/bots/usecase/AiBotsManager;->answersRepository:Lcom/iMe/bots/data/repository/UserAnswersRepository;

    invoke-virtual {p1, p0, p4, p5}, Lcom/iMe/bots/data/repository/UserAnswersRepository;->increaseResponseCounter(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static final handleChosenBotAnswer$lambda$29()V
    .locals 0

    return-void
.end method

.method private static final handleChosenBotAnswer$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final handleDownloadCompletion$lambda$50(Lcom/iMe/bots/usecase/AiBotsManager;JLjava/io/File;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BotsDownloader"

    const-string v1, "Unzip completed, deletion started"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p3}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanupData(Ljava/io/File;)V

    return-void
.end method

.method private static final handleDownloadCompletion$lambda$51(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final launchDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

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
    iget-object p3, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p3, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 353
    iget-object p3, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    new-instance v1, Lcom/iMe/bots/domain/model/DownloadSession;

    invoke-direct {v1, v0, p1}, Lcom/iMe/bots/domain/model/DownloadSession;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenForRemoteBotUpdates$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenForRemoteBotUpdates$lambda$26(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final rebuildActiveBotsList()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getActiveBotsList()Lio/reactivex/Single;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;

    invoke-direct {v1, p0}, Lcom/iMe/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda30;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda30;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/bots/usecase/AiBotsManager$rebuildActiveBotsList$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$rebuildActiveBotsList$2;

    .line 128
    new-instance v3, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda21;

    invoke-direct {v3, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda21;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 124
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final rebuildActiveBotsList$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final rebuildActiveBotsList$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final sendAppInstalledEvent$lambda$3(Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;J)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0}, Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;->onSuccess()V

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App installed event, user id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Remote event"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final sendAppInstalledEvent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final sendBotInstalledEvent(Ljava/lang/String;J)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/bots/data/repository/BotsRepository;->sendBotInstallEvent(Ljava/lang/String;J)Lio/reactivex/Completable;

    move-result-object v0

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;J)V

    sget-object p1, Lcom/iMe/bots/usecase/AiBotsManager$sendBotInstalledEvent$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$sendBotInstalledEvent$2;

    .line 151
    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda34;

    invoke-direct {p2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda34;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 149
    invoke-virtual {v0, v1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final sendBotInstalledEvent$lambda$6(Ljava/lang/String;J)V
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

.method private static final sendBotInstalledEvent$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final sendBotRatingEvent$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final sendBotRatingEvent$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final startBotDownloading$lambda$45(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final startBotDownloading$lambda$46(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager;->launchDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final startBotDownloading$lambda$47(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final unzip(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    .line 400
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final unzip$lambda$57(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
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

.method private static final updateBotStatus$lambda$41(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/iMe/bots/usecase/AiBotsManager;->rebuildActiveBotsList()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 429
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$cancel$1;

    invoke-direct {v0, p0}, Lcom/iMe/bots/usecase/AiBotsManager$cancel$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    invoke-direct {p0, v0}, Lcom/iMe/bots/usecase/AiBotsManager;->cleanDownloads(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final disableBot(Ljava/lang/String;)V
    .locals 3

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/iMe/bots/data/model/BotStatus;->DISABLED:Lcom/iMe/bots/data/model/BotStatus;

    invoke-virtual {p0, p1, v0}, Lcom/iMe/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/iMe/bots/data/model/BotStatus;)Lio/reactivex/Completable;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/iMe/bots/usecase/AiBotsManager$disableBot$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$disableBot$2;

    .line 316
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda35;

    invoke-direct {v2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda35;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 314
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final downloadPurchase(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1}, Lcom/iMe/bots/data/repository/BotsRepository;->getBotBySku(Ljava/lang/String;)Lio/reactivex/Single;

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
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$downloadPurchase$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager$downloadPurchase$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;J)V

    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda24;

    invoke-direct {p2, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object p3, Lcom/iMe/bots/usecase/AiBotsManager$downloadPurchase$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$downloadPurchase$2;

    .line 300
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p3}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 298
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final fetchVotes(J)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/bots/data/repository/BotsRepository;->fetchVotes(J)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda13;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda13;

    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager$fetchVotes$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$fetchVotes$2;

    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda25;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getActiveBots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/AigramBot;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->activeBots:Ljava/util/List;

    return-object v0
.end method

.method public final getAllBotsObservable(Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "botLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getBotsListObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;

    invoke-direct {v1, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;-><init>(Lcom/iMe/bots/domain/model/BotLanguage;)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda43;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda43;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 169
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$2;

    invoke-direct {v0, p0, p2}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$2;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda45;

    invoke-direct {p2, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda45;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 170
    sget-object p2, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$3;

    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda38;

    invoke-direct {v0, p2}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda38;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fun getAllBotsObservable\u2026rity, ShopItem::title)) }"

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
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    .line 175
    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getBotsListObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;

    invoke-direct {v1, p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda40;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda40;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 182
    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5;

    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getAllBotsObservable\u2026rity, ShopItem::title)) }"

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
            "Lcom/iMe/bots/domain/model/SmartBotCategory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    .line 198
    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getAllCategories()Lio/reactivex/Observable;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$getAvailableCategories$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getAvailableCategories$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 200
    sget-object v0, Lcom/iMe/bots/usecase/AiBotsManager$getAvailableCategories$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$getAvailableCategories$2;

    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;

    invoke-direct {v1, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getAvailableCategori\u2026cending { it.priority } }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAvailableResponses(Ljava/lang/String;JLcom/iMe/bots/usecase/AiBotsManager$SmartReplierCallback;)V
    .locals 1

    const-string v0, "sentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartReplierCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->replier:Lcom/iMe/bots/domain/Replier;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/bots/domain/Replier;->getResponsesFromBots(Ljava/lang/String;JLcom/iMe/bots/usecase/AiBotsManager$SmartReplierCallback;)V

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
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getSkus()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final getBotDisableCallback()Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botDisableCallback:Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;

    return-object v0
.end method

.method public final getBotsRepository()Lcom/iMe/bots/data/repository/BotsRepository;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    return-object v0
.end method

.method public final getCategories(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotCategory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getCategoriesInfo()Lio/reactivex/Single;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;

    invoke-direct {v1, p0}, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda41;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda41;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$2;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getCategories(langua\u2026inctUntilChanged()\n\n    }"

    .line 215
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCurrentTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

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
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    .line 187
    invoke-virtual {v0, p1}, Lcom/iMe/bots/data/repository/BotsRepository;->getSingleBotObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$getSingleBotObservable$1;

    invoke-direct {v0, p0, p2}, Lcom/iMe/bots/usecase/AiBotsManager$getSingleBotObservable$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;

    invoke-direct {p2, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fun getSingleBotObservab\u2026ge)\n                    }"

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
    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda9;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p4

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lcom/iMe/bots/usecase/AiBotsManager;JLjava/lang/String;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 251
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda12;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda12;

    .line 252
    sget-object p3, Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;

    new-instance p4, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda29;

    invoke-direct {p4, p3}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda29;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p4}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final handleDownloadCompletion(J)V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/bots/domain/model/DownloadSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/bots/domain/model/DownloadSession;->getFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

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

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File downloaded to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File exists? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File last modified: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unzip to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iMe/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->destinationPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "destinationPath.absolutePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/iMe/bots/usecase/AiBotsManager;->unzip(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v1

    .line 367
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/bots/domain/model/DownloadSession;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/iMe/bots/domain/model/DownloadSession;->getBotId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 369
    iget-object v3, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v3, v2}, Lcom/iMe/bots/data/repository/BotsRepository;->updateRemoteBotHash(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v2

    if-nez v2, :cond_6

    .line 370
    :cond_5
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v2

    const-string v3, "complete()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :cond_6
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    .line 371
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 372
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;JLjava/io/File;)V

    sget-object p1, Lcom/iMe/bots/usecase/AiBotsManager$handleDownloadCompletion$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$handleDownloadCompletion$3;

    .line 376
    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;

    invoke-direct {p2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 372
    invoke-virtual {v1, v2, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final listenForRemoteBotUpdates(Lcom/iMe/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->getRemoteBotUpdates()Lio/reactivex/Observable;

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
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$listenForRemoteBotUpdates$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$listenForRemoteBotUpdates$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Lcom/iMe/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda31;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda31;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/bots/usecase/AiBotsManager$listenForRemoteBotUpdates$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$listenForRemoteBotUpdates$2;

    .line 237
    new-instance v2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 230
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final sendAppInstalledEvent(JLcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/bots/data/repository/BotsRepository;->sendAppInstallEvent(J)Lio/reactivex/Completable;

    move-result-object v0

    .line 137
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p1, p2}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager$AppInstalledCallback;J)V

    sget-object p1, Lcom/iMe/bots/usecase/AiBotsManager$sendAppInstalledEvent$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$sendAppInstalledEvent$2;

    .line 141
    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda22;

    invoke-direct {p2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda22;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 138
    invoke-virtual {v0, v1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final sendBotRatingEvent(Ljava/lang/String;JI)V
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iMe/bots/data/repository/BotsRepository;->sendBotRating(Ljava/lang/String;JI)Lio/reactivex/Single;

    move-result-object v0

    .line 158
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$sendBotRatingEvent$1;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager$sendBotRatingEvent$1;-><init>(Ljava/lang/String;IJ)V

    new-instance p1, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;

    invoke-direct {p1, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object p2, Lcom/iMe/bots/usecase/AiBotsManager$sendBotRatingEvent$2;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$sendBotRatingEvent$2;

    .line 161
    new-instance p3, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda32;

    invoke-direct {p3, p2}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 159
    invoke-virtual {v0, p1, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final setBotDisableCallback(Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botDisableCallback:Lcom/iMe/bots/usecase/AiBotsManager$BotsListChangedCallback;

    return-void
.end method

.method public final setCurrentTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager;->currentTags:Ljava/util/List;

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->downloadsPath:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v0, Lcom/iMe/bots/data/model/BotStatus;->DOWNLOADING:Lcom/iMe/bots/data/model/BotStatus;

    invoke-virtual {p0, p1, v0}, Lcom/iMe/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/iMe/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/iMe/bots/usecase/AiBotsManager$startBotDownloading$1;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/iMe/bots/usecase/AiBotsManager$startBotDownloading$1;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;J)V

    new-instance p4, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda33;

    invoke-direct {p4, v1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda33;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p4}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

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
    new-instance p5, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/iMe/bots/usecase/AiBotsManager$startBotDownloading$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$startBotDownloading$3;

    .line 336
    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda26;

    invoke-direct {p2, p1}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda26;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 334
    invoke-virtual {p4, p5, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 337
    iget-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final storeActualPurchases(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopProduct;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1}, Lcom/iMe/bots/data/repository/BotsRepository;->storePurchasesInfo(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final updateBotStatus(Ljava/lang/String;Lcom/iMe/bots/data/model/BotStatus;)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager;->botsRepository:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/bots/data/repository/BotsRepository;->updateBotStatus(Ljava/lang/String;Lcom/iMe/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object p1

    .line 307
    new-instance p2, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/iMe/bots/usecase/AiBotsManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "botsRepository.updateBot\u2026rebuildActiveBotsList() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
