.class public final Lorg/fork/controller/AlbumsController;
.super Lorg/telegram/messenger/BaseController;
.source "AlbumsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/AlbumsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlbumsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlbumsController.kt\norg/fork/controller/AlbumsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,107:1\n56#2,6:108\n*S KotlinDebug\n*F\n+ 1 AlbumsController.kt\norg/fork/controller/AlbumsController\n*L\n17#1:108,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/AlbumsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/AlbumsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final dao$delegate:Lkotlin/Lazy;

.field private isOpenAlbumsInsteadCloudEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$0zHSiK4Xtk4zmRTGWkFZ7bTtC6Q(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->removeAlbum$lambda-8(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5rJZytxXPPD7xj94oCfs6xp9_Dk(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->addAlbum$lambda-6$lambda-5(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$99hdeOPXyUvYwBSA6BfiGNKrmHI(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->addAlbum$lambda-6(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UuPU_OUsTrB5O6ImXC5_RuDpbe8(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/AlbumsController;->restoreBackup$lambda-3(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fV7eM3p8triJy_O9OaxBgjWbQpE(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->removeAlbum$lambda-8$lambda-7(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/AlbumsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/AlbumsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/AlbumsController;->Companion:Lorg/fork/controller/AlbumsController$Companion;

    .line 102
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/AlbumsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/AlbumsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/AlbumsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/fork/controller/AlbumsController;->dao$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/AlbumsController;->albums:Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 14
    sget-object v0, Lorg/fork/controller/AlbumsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addAlbum$lambda-6(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lorg/fork/controller/AlbumsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    move-result-object v0

    new-instance v1, Lcom/smedialink/storage/data/locale/db/model/cloud/CloudAlbumDb;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/smedialink/storage/data/locale/db/model/cloud/CloudAlbumDb;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    .line 74
    invoke-virtual {p0}, Lorg/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final addAlbum$lambda-6$lambda-5(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->addDialogToFolder(JIIJ)I

    if-nez p3, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/fork/controller/AlbumsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/AlbumsController;
    .locals 1

    sget-object v0, Lorg/fork/controller/AlbumsController;->Companion:Lorg/fork/controller/AlbumsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/AlbumsController$Companion;->getInstance(I)Lorg/fork/controller/AlbumsController;

    move-result-object p0

    return-object p0
.end method

.method private static final removeAlbum$lambda-8(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lorg/fork/controller/AlbumsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;->deleteByAlbumId(JJ)V

    .line 88
    new-instance v0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda3;-><init>(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final removeAlbum$lambda-8$lambda-7(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 91
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private static final restoreBackup$lambda-3(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lorg/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getAlbums()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 49
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addAlbum(JLjava/lang/Runnable;)V
    .locals 2

    .line 72
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/fork/controller/AlbumsController;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final isDialogAlbum(J)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/fork/controller/AlbumsController;->albums:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isOpenAlbumsInsteadCloudEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled:Z

    return v0
.end method

.method public final loadAlbums()V
    .locals 4

    .line 56
    iget-object v0, p0, Lorg/fork/controller/AlbumsController;->albums:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    invoke-direct {p0}, Lorg/fork/controller/AlbumsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;->getAllAlbumsForUser(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isOpenAlbumsInsteadCloudEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fork/controller/AlbumsController;->setOpenAlbumsInsteadCloudEnabled(Z)V

    return-void
.end method

.method public final removeAlbum(JLjava/lang/Runnable;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->hasDialog(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/AlbumsController;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 4

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled:Z

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getAlbums()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lorg/fork/controller/AlbumsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getAlbums()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/minor/cloud/AlbumsDao;->restoreBackup(JLjava/util/List;)V

    .line 43
    new-instance v0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;-><init>(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/fork/controller/AlbumsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isOpenAlbumsInsteadCloudEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setOpenAlbumsInsteadCloudEnabled(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled:Z

    return-void
.end method

.method public final toggleAlbum(JLjava/lang/Runnable;)V
    .locals 8

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->addDialogToFolder(JIIJ)I

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->removeAlbum(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fork/controller/AlbumsController;->addAlbum(JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method
