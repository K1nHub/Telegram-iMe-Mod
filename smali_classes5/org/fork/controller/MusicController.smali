.class public final Lorg/fork/controller/MusicController;
.super Lorg/telegram/messenger/BaseController;
.source "MusicController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/MusicController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicController.kt\norg/fork/controller/MusicController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n56#2,6:95\n511#3:101\n496#3,6:102\n357#3,7:113\n657#4:108\n738#4,4:109\n1547#5:120\n1618#5,3:121\n*S KotlinDebug\n*F\n+ 1 MusicController.kt\norg/fork/controller/MusicController\n*L\n19#1:95,6\n44#1:101\n44#1:102,6\n64#1:113,7\n52#1:108\n52#1:109,4\n65#1:120\n65#1:121,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/MusicController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/MusicController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private playlists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMusicTab:Lcom/smedialink/ui/music/MusicTab;


# direct methods
.method public static synthetic $r8$lambda$5U_8B4uL0-PBD9cOau-V-47Ghtk(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/MusicController;->addPlaylistMessage$lambda-7(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h5fqyLNMnHOo4FWQGzKSv_yaDs(Lorg/fork/controller/MusicController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/MusicController;->removePlaylistMessage$lambda-10(Lorg/fork/controller/MusicController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kF5Zcis2xZf3o-XkSfA2VXvwQY(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/MusicController;->removePlaylistMessage$lambda-9(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQMRfy2snwgsQxyz-MZUtHEEL7c(Lorg/fork/controller/MusicController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/MusicController;->addPlaylistMessage$lambda-8(Lorg/fork/controller/MusicController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KhsjvfO6LFfcm9I46O53VsJDZ6U(Lorg/fork/controller/MusicController;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/MusicController;->setNewPlaylists$lambda-4(Lorg/fork/controller/MusicController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/MusicController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/MusicController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/MusicController;->Companion:Lorg/fork/controller/MusicController$Companion;

    .line 89
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/MusicController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/MusicController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/MusicController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/fork/controller/MusicController;->dao$delegate:Lkotlin/Lazy;

    .line 22
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedMusicTab()Lcom/smedialink/ui/music/MusicTab;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/MusicController;->selectedMusicTab:Lcom/smedialink/ui/music/MusicTab;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 16
    sget-object v0, Lorg/fork/controller/MusicController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addPlaylistMessage$lambda-7(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lorg/fork/controller/MusicController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/music/PlaylistsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/music/PlaylistModel;J)Lcom/smedialink/storage/data/locale/db/model/music/PlaylistsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final addPlaylistMessage$lambda-8(Lorg/fork/controller/MusicController;Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/fork/controller/MusicController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/MusicController;
    .locals 1

    sget-object v0, Lorg/fork/controller/MusicController;->Companion:Lorg/fork/controller/MusicController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/MusicController$Companion;->getInstance(I)Lorg/fork/controller/MusicController;

    move-result-object p0

    return-object p0
.end method

.method private static final removePlaylistMessage$lambda-10(Lorg/fork/controller/MusicController;Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final removePlaylistMessage$lambda-9(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lorg/fork/controller/MusicController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/music/PlaylistsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/music/PlaylistModel;J)Lcom/smedialink/storage/data/locale/db/model/music/PlaylistsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final setNewPlaylists$lambda-4(Lorg/fork/controller/MusicController;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lorg/fork/controller/MusicController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p0}, Lorg/fork/controller/MusicController;->getPlaylists()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;->restoreBackup(JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final addPlaylistMessage(JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 357
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, p1, p2}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;-><init>(Ljava/util/ArrayList;J)V

    .line 360
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    check-cast v2, Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    .line 65
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    .line 1547
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 65
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 69
    new-instance p1, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p3}, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda4;-><init>(Lorg/fork/controller/MusicController;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 16
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaylistForDialog(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method

.method public final getPlaylists()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    return-object v0
.end method

.method public final getSelectedMusicTab()Lcom/smedialink/ui/music/MusicTab;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/fork/controller/MusicController;->selectedMusicTab:Lcom/smedialink/ui/music/MusicTab;

    return-object v0
.end method

.method public final loadPlaylists()V
    .locals 5

    .line 49
    invoke-direct {p0}, Lorg/fork/controller/MusicController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/PlaylistsDao;->getAllPlaylistsForUser(J)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 51
    sget-object v1, Lorg/fork/controller/MusicController$loadPlaylists$1;->INSTANCE:Lorg/fork/controller/MusicController$loadPlaylists$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 738
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 739
    check-cast v2, Lcom/smedialink/storage/data/locale/db/model/music/PlaylistsDb;

    .line 52
    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/db/model/music/PlaylistsDb;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/music/PlaylistsMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/music/PlaylistsDb;)Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    return-void
.end method

.method public final removePlaylistMessage(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 81
    new-instance p1, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p3}, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda3;-><init>(Lorg/fork/controller/MusicController;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 3

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedMusicTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/smedialink/ui/music/MusicTab;->Companion:Lcom/smedialink/ui/music/MusicTab$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedMusicTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/music/MusicTab$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/smedialink/ui/music/MusicTab;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/MusicController;->selectedMusicTab:Lcom/smedialink/ui/music/MusicTab;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getMusicPlaylists()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getMusicPlaylists()Ljava/util/Map;

    move-result-object p1

    .line 511
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 496
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 498
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fork/controller/MusicController;->setNewPlaylists(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMusicTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/MusicController;->getSelectedMusicTab()Lcom/smedialink/ui/music/MusicTab;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setNewPlaylists(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/music/PlaylistModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newBookmarks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/fork/controller/MusicController;->playlists:Ljava/util/Map;

    .line 58
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/MusicController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setSelectedMusicTab(Lcom/smedialink/ui/music/MusicTab;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/fork/controller/MusicController;->selectedMusicTab:Lcom/smedialink/ui/music/MusicTab;

    return-void
.end method
