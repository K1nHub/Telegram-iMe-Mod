.class public final Lcom/iMe/fork/controller/MusicController;
.super Lorg/telegram/messenger/BaseController;
.source "MusicController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/MusicController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicController.kt\ncom/iMe/fork/controller/MusicController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n56#2,6:138\n515#3:144\n500#3,6:145\n361#3,7:156\n658#4:151\n739#4,4:152\n1549#5:163\n1620#5,3:164\n*S KotlinDebug\n*F\n+ 1 MusicController.kt\ncom/iMe/fork/controller/MusicController\n*L\n27#1:138,6\n57#1:144\n57#1:145,6\n71#1:156,7\n66#1:151\n66#1:152,4\n72#1:163\n72#1:164,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/MusicController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/MusicController;",
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
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMusicTab:Lcom/iMe/ui/music/MusicTab;


# direct methods
.method public static synthetic $r8$lambda$-5cGwFuQTjulPXHvEHBa_JMs4PM(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage$lambda$9(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0zxUmEEyOfEQXFs0Bx6mv1vc_kk(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/MusicController;->addPlaylistMessage$lambda$6(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6jhMoAYV2rorc5axrOFx6XOo8mg(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/MusicController;->addPlaylistMessage$lambda$7(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZSZEQrNY3EnAK5JqIXyW09p8ng(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage$lambda$8(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$imDMXL68OkNELb0BjGh8L3o0dM4(Lcom/iMe/fork/controller/MusicController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/MusicController;->setNewPlaylists$lambda$11(Lcom/iMe/fork/controller/MusicController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/MusicController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/MusicController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/MusicController;->Companion:Lcom/iMe/fork/controller/MusicController$Companion;

    .line 131
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/MusicController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/MusicController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/MusicController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController;->dao$delegate:Lkotlin/Lazy;

    .line 30
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedMusicTab()Lcom/iMe/ui/music/MusicTab;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController;->selectedMusicTab:Lcom/iMe/ui/music/MusicTab;

    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 24
    sget-object v0, Lcom/iMe/fork/controller/MusicController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addPlaylistMessage$lambda$6(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/fork/controller/MusicController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/music/PlaylistsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/music/PlaylistModel;J)Lcom/iMe/storage/data/locale/db/model/music/PlaylistsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final addPlaylistMessage$lambda$7(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 78
    sget v0, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 80
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 77
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/MusicController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/MusicController;->Companion:Lcom/iMe/fork/controller/MusicController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/MusicController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object p0

    return-object p0
.end method

.method private static final removePlaylistMessage$lambda$8(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/controller/MusicController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/music/PlaylistsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/music/PlaylistModel;J)Lcom/iMe/storage/data/locale/db/model/music/PlaylistsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final removePlaylistMessage$lambda$9(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 96
    sget v0, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 98
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 95
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final setNewPlaylists(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    .line 122
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/MusicController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setNewPlaylists$lambda$11(Lcom/iMe/fork/controller/MusicController;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/fork/controller/MusicController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object p0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;->restoreBackup(JLjava/util/List;)V

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

    .line 71
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, p1, p2}, Lcom/iMe/storage/domain/model/music/PlaylistModel;-><init>(Ljava/util/ArrayList;J)V

    .line 364
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    check-cast v2, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    .line 72
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    .line 1549
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 72
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1621
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 76
    new-instance p1, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p3}, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
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

    .line 114
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
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
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    return-object v0
.end method

.method public final getSelectedMusicTab()Lcom/iMe/ui/music/MusicTab;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->selectedMusicTab:Lcom/iMe/ui/music/MusicTab;

    return-object v0
.end method

.method public final loadPlaylists()V
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/iMe/fork/controller/MusicController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;->getAllPlaylistsForUser(J)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/iMe/fork/controller/MusicController$loadPlaylists$1;->INSTANCE:Lcom/iMe/fork/controller/MusicController$loadPlaylists$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 739
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 740
    check-cast v2, Lcom/iMe/storage/data/locale/db/model/music/PlaylistsDb;

    .line 66
    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/db/model/music/PlaylistsDb;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/music/PlaylistsMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/music/PlaylistsDb;)Lcom/iMe/storage/domain/model/music/PlaylistModel;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 740
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

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

    .line 86
    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 88
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/iMe/fork/controller/MusicController;->playlists:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 94
    new-instance p1, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p3}, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/MusicController;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 3

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedMusicTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/iMe/ui/music/MusicTab;->Companion:Lcom/iMe/ui/music/MusicTab$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedMusicTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/music/MusicTab$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/ui/music/MusicTab;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/MusicController;->selectedMusicTab:Lcom/iMe/ui/music/MusicTab;

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMusicPlaylists()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMusicPlaylists()Ljava/util/Map;

    move-result-object p1

    .line 515
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 500
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

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/MusicController;->setNewPlaylists(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMusicTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/controller/MusicController;->selectedMusicTab:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSelectedMusicTab(Lcom/iMe/ui/music/MusicTab;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController;->selectedMusicTab:Lcom/iMe/ui/music/MusicTab;

    return-void
.end method

.method public final showAddToPlaylistUndoView(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 104
    instance-of v0, p1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 107
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->UNDO_ADD_TO_PLAYLIST:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->UNDO_REMOVE_TO_PLAYLIST:I

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    :cond_1
    return-void
.end method
