.class public final Lcom/iMe/fork/ui/fragment/MusicActivity;
.super Lcom/iMe/ui/pager/TelegramViewPagerFragment;
.source "MusicActivity.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;,
        Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,495:1\n104#2,4:496\n13579#3:500\n13580#3:505\n216#4,4:501\n1855#5,2:506\n1#6:508\n6#7,6:509\n*S KotlinDebug\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n*L\n258#1:496,4\n279#1:500\n279#1:505\n280#1:501,4\n295#1:506,2\n117#1:509,6\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

.field private static final notifications:[I


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

.field private final albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final bots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final countsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private deviceLoading:Z

.field private final deviceMusic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MediaController$AudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final musicCountComparator$delegate:Lkotlin/Lazy;

.field private parallelCounter:I

.field private parallelLoading:Z


# direct methods
.method public static synthetic $r8$lambda$2tzuHnzusXzvEVF0gXarW8WtpCU(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic$lambda$4$lambda$3(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$73Iy6SEW2lv_WVt6LBbppwnP0y8(Lcom/iMe/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicOptions$lambda$21(Lcom/iMe/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2Ao6kET0ez3b4AZCPHyOeJGpB8(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda$25$lambda$24$lambda$23$lambda$22(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxOEYjfXcc5YA6Rk8xsXGly0lk8(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic$lambda$4(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMssc5nG6nWVrTZQcx7ZrkU_eqI(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getThemeDescriptions$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$klA4u5doZtw-VSss5Q6OCwuNiQg(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters$lambda$20(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vfmO-4W3CBKlNQW5l0KrrtPAGxo(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda$25(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmPJFqgwohg9BsrAxzgZkDru4kQ(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda$25$lambda$24(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/iMe/fork/ui/fragment/MusicActivity;

    const/4 v1, 0x4

    new-array v2, v1, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v4, "albumsAdapter"

    const-string v5, "getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v3

    aput-object v3, v2, v6

    .line 51
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v4, "channelsAdapter"

    const-string v5, "getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    invoke-direct {v3, v0, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 52
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v5, "botsAdapter"

    const-string v7, "getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    invoke-direct {v3, v0, v5, v7, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 53
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v7, "deviceAdapter"

    const-string v8, "getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;"

    invoke-direct {v3, v0, v7, v8, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    sput-object v2, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/ui/fragment/MusicActivity;->Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    new-array v0, v1, [I

    .line 487
    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    aput v1, v0, v6

    .line 488
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    aput v1, v0, v4

    .line 489
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    aput v1, v0, v5

    .line 490
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    aput v1, v0, v3

    .line 486
    sput-object v0, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$albumsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$albumsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 51
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 52
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 53
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$deviceAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$deviceAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 55
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAlbums$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBots$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getChannels$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCountsMap$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static final synthetic access$getDeviceLoading$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    return p0
.end method

.method public static final synthetic access$getDeviceMusic$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getParallelLoading$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    return p0
.end method

.method public static final synthetic access$needAskPermission(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->needAskPermission()Z

    move-result p0

    return p0
.end method

.method private final convertDeviceAudioEntryToTelegramMessage(Lorg/telegram/messenger/MediaController$AudioEntry;I)Lorg/telegram/messenger/MessageObject;
    .locals 9

    .line 302
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 304
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 p2, 0x1

    .line 305
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 306
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 307
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 308
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v2, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-string v1, ""

    .line 310
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 311
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 312
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 313
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 314
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 315
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 317
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x300

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v5, 0x0

    .line 318
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 319
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 320
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 321
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    move v7, p2

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-eqz v7, :cond_1

    const-string v4, "mp3"

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 324
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 325
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 326
    iget v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    int-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 327
    iget-object v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 328
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 329
    iget p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 325
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 331
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 312
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 337
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p1, v1, v0, v5, p2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-object p1
.end method

.method private final getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    return-object v0
.end method

.method private final getMusicCountComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    :cond_0
    return-void
.end method

.method private static final loadDeviceMusic$lambda$4(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "artist"

    const-string v3, "title"

    const-string v4, "_data"

    const-string v5, "duration"

    const-string v6, "album"

    .line 92
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v9

    const-wide/16 v0, 0x1f4

    .line 95
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "is_music != 0"

    const/4 v11, 0x0

    const-string v12, "title"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const v4, -0x77359400

    .line 97
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    new-instance v5, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v6, 0x0

    .line 99
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v6, 0x1

    .line 100
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    .line 101
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    .line 102
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    .line 103
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v6, 0x5

    .line 104
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 106
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, -0x1

    .line 107
    invoke-direct {p0, v5, v4}, Lcom/iMe/fork/ui/fragment/MusicActivity;->convertDeviceAudioEntryToTelegramMessage(Lorg/telegram/messenger/MediaController$AudioEntry;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 108
    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 111
    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 115
    :cond_2
    :goto_1
    new-instance v2, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 113
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    new-instance v2, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    :goto_2
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :goto_3
    new-instance v3, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    throw v2
.end method

.method private static final loadDeviceMusic$lambda$4$lambda$3(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final needAskPermission()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final notifyDialogsAdapters()V
    .locals 1

    .line 341
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyDialogsAdapters$lambda$20(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 343
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 344
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final prepareDialogsAdaptersData()V
    .locals 8

    .line 258
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 104
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 105
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 264
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_1
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getMusicCountComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private final showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 361
    sget v0, Lorg/telegram/messenger/R$string;->music_device_delete_alert_message:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 362
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 357
    new-instance v7, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda$25(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isConfirmed"

    .line 366
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 367
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda$25$lambda$24(Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 2

    const-string v0, "$message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 369
    new-instance v1, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;-><init>(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda$25$lambda$24$lambda$23$lambda$22(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 2

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 371
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 372
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    .line 374
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    goto :goto_1

    .line 376
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string p1, "UnknownError"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(\"UnknownError\", R.string.UnknownError)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final showDeviceMusicOptions(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 349
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showDeviceMusicOptionsAlertDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    return-void
.end method

.method private static final showDeviceMusicOptions$lambda$21(Lcom/iMe/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method private final startParallelLoadingMusicCounts()V
    .locals 9

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    const-string v1, "messagesController.dialogsAlbumsOnly"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsChannelsOnly:Ljava/util/ArrayList;

    const-string v2, "messagesController.dialogsChannelsOnly"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsBotOnly:Ljava/util/ArrayList;

    const-string v2, "messagesController.dialogsBotOnly"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    .line 294
    iput-boolean v2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaDataController;->getMediaCount(JIIIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updatePlayButtons()V
    .locals 9

    .line 279
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 280
    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 217
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "getChildAt(i)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    instance-of v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v8, :cond_0

    check-cast v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 282
    invoke-virtual {v7, v2, v8}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    .line 214
    aget-object p2, p3, p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_6

    .line 215
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v2, 0x2

    .line 216
    aget-object p3, p3, v2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 217
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 218
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    if-nez p1, :cond_6

    .line 220
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 221
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->prepareDialogsAdaptersData()V

    .line 222
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters()V

    goto :goto_3

    .line 226
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_6

    .line 227
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_5

    .line 228
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type org.telegram.messenger.MessageObject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 229
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    return-void

    .line 231
    :cond_5
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->updatePlayButtons()V

    :cond_6
    :goto_3
    return-void
.end method

.method public getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;
    .locals 3

    .line 137
    new-instance v0, Lcom/iMe/ui/pager/FragmentContextViewParams;

    .line 138
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/ui/pager/FragmentContextViewParams;-><init>(ZZZ)V

    return-object v0
.end method

.method public getInitialTabId()I
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->getSelectedMusicTab()Lcom/iMe/ui/music/MusicTab;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-super/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 239
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v9, v3

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    new-instance v12, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v6, v14

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView1"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView2"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v6

    sget-object v7, Lcom/iMe/ui/music/MusicTab;->DEVICE:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ne v6, v15, :cond_0

    .line 245
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 246
    instance-of v6, v5, Lcom/iMe/ui/music/NoPermissionMusicCell;

    if-eqz v6, :cond_0

    .line 247
    check-cast v5, Lcom/iMe/ui/music/NoPermissionMusicCell;

    invoke-virtual {v5}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getThemeDescriptions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2

    .line 135
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachMusic\", R.string.AttachMusic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initPageData()[Lcom/iMe/ui/pager/ViewPageData;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/ui/pager/ViewPageData;

    .line 146
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    sget-object v2, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v2}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(MusicTab.ALBUMS.titleResId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 147
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    sget-object v3, Lcom/iMe/ui/music/MusicTab;->CHANNELS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.CHANNELS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 148
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    sget-object v3, Lcom/iMe/ui/music/MusicTab;->BOTS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.BOTS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 149
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    sget-object v3, Lcom/iMe/ui/music/MusicTab;->DEVICE:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.DEVICE.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDeviceMusic()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->needAskPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 84
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFabClick(I)V
    .locals 1

    .line 177
    sget-object v0, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 178
    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 187
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->startParallelLoadingMusicCounts()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/iMe/ui/music/MusicTab;->values()[Lcom/iMe/ui/music/MusicTab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getCurrentTabId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/MusicController;->setSelectedMusicTab(Lcom/iMe/ui/music/MusicTab;)V

    .line 196
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->saveConfig()V

    return-void
.end method

.method public onListItemClick(Landroid/view/View;IFF)V
    .locals 2

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    goto :goto_1

    .line 159
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_2

    .line 160
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    const/4 p4, 0x0

    .line 161
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "dialog_id"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    .line 162
    sget p4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "custom_screen_type"

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    aput-object p4, p3, p1

    .line 160
    invoke-static {p3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onListItemLongClick(Landroid/view/View;IFF)Z
    .locals 0

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    .line 170
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const-string p2, "itemView.message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicOptions(Lorg/telegram/messenger/MessageObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemClick(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 202
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
