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
    value = "SMAP\nMusicActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,627:1\n104#2,4:628\n13579#3:632\n13580#3:637\n244#4,4:633\n1855#5,2:638\n1#6:640\n6#7,6:641\n*S KotlinDebug\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n*L\n346#1:628,4\n367#1:632\n367#1:637\n368#1:633,4\n385#1:638,2\n131#1:641,6\n*E\n"
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

    .line 57
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v5, "botsAdapter"

    const-string v7, "getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    invoke-direct {v3, v0, v5, v7, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 58
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

    .line 619
    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    aput v1, v0, v6

    .line 620
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    aput v1, v0, v4

    .line 621
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    aput v1, v0, v5

    .line 622
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    aput v1, v0, v3

    .line 618
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

    .line 57
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 58
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$deviceAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$deviceAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 60
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    .line 64
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    .line 72
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

    .line 401
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 403
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 p2, 0x1

    .line 404
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 405
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 406
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 407
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v2, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-string v1, ""

    .line 409
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 410
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 411
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 412
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 413
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 414
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 417
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x300

    .line 416
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v5, 0x0

    .line 418
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 419
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 420
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 421
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 422
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

    .line 423
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 424
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 425
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 426
    iget v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    int-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 427
    iget-object v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 428
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 429
    iget p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 425
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 431
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 411
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 437
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

    .line 57
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

    .line 58
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

    .line 60
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

    .line 282
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

    .line 97
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v9

    const-wide/16 v0, 0x1f4

    .line 100
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 101
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "is_music != 0"

    const/4 v11, 0x0

    const-string v12, "title"

    .line 100
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const v4, -0x77359400

    .line 108
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    new-instance v5, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v6, 0x0

    .line 110
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v6, 0x1

    .line 111
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    .line 112
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    .line 113
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    .line 114
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v6, 0x5

    .line 115
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 117
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, -0x1

    .line 118
    invoke-direct {p0, v5, v4}, Lcom/iMe/fork/ui/fragment/MusicActivity;->convertDeviceAudioEntryToTelegramMessage(Lorg/telegram/messenger/MediaController$AudioEntry;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 122
    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 125
    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
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

    .line 129
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

    .line 127
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
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

    .line 130
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
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

    .line 377
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

    .line 441
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyDialogsAdapters$lambda$20(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 443
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 444
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final prepareDialogsAdaptersData()V
    .locals 8

    .line 346
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

    .line 349
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 352
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_1
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getMusicCountComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private final showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 461
    sget v0, Lorg/telegram/messenger/R$string;->music_device_delete_alert_message:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 457
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

    .line 466
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 467
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

    .line 468
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 469
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

    .line 471
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

    .line 472
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    .line 474
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    goto :goto_1

    .line 479
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string p1, "UnknownError"

    .line 477
    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(\n             \u2026                        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final showDeviceMusicOptions(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 449
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

    .line 451
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method private final startParallelLoadingMusicCounts()V
    .locals 9

    .line 381
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

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    .line 384
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

    .line 386
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 387
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 390
    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v8, 0x1

    .line 386
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaDataController;->getMediaCount(JIIIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updatePlayButtons()V
    .locals 9

    .line 367
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 368
    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 245
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "getChildAt(i)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    instance-of v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v8, :cond_0

    check-cast v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 370
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

    .line 248
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    .line 249
    aget-object p2, p3, p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_6

    .line 250
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v2, 0x2

    .line 251
    aget-object p3, p3, v2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 252
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 253
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    if-nez p1, :cond_6

    .line 255
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 256
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->prepareDialogsAdaptersData()V

    .line 257
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters()V

    goto :goto_3

    .line 262
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

    .line 263
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_5

    .line 264
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type org.telegram.messenger.MessageObject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 265
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    return-void

    .line 267
    :cond_5
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->updatePlayButtons()V

    :cond_6
    :goto_3
    return-void
.end method

.method public getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;
    .locals 3

    .line 152
    new-instance v0, Lcom/iMe/ui/pager/FragmentContextViewParams;

    .line 153
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/ui/pager/FragmentContextViewParams;-><init>(ZZZ)V

    return-object v0
.end method

.method public getInitialTabId()I
    .locals 1

    .line 158
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

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-super/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 276
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 277
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/Class;

    .line 279
    const-class v6, Landroid/view/View;

    aput-object v6, v9, v3

    .line 280
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    .line 275
    new-instance v12, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    .line 283
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v6, v14

    move/from16 v13, v16

    .line 276
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 275
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 288
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    .line 289
    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 294
    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v6

    .line 287
    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 286
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 299
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    .line 300
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 305
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v7, v6

    .line 298
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 297
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 310
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 311
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    .line 312
    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView1"

    .line 313
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v20

    .line 317
    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    .line 309
    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 308
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 322
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v26

    .line 323
    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    .line 324
    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView2"

    .line 325
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 329
    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    .line 321
    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 320
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
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

    .line 333
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 334
    instance-of v6, v5, Lcom/iMe/ui/music/NoPermissionMusicCell;

    if-eqz v6, :cond_0

    .line 335
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

    .line 150
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

    .line 161
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 162
    sget-object v2, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v2}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(MusicTab.ALBUMS.titleResId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v3

    .line 164
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    .line 161
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 166
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 167
    sget-object v3, Lcom/iMe/ui/music/MusicTab;->CHANNELS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.CHANNELS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    .line 166
    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 171
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

    .line 172
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 173
    sget-object v3, Lcom/iMe/ui/music/MusicTab;->DEVICE:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.DEVICE.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v4

    .line 172
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

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->needAskPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 88
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 89
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFabClick(I)V
    .locals 1

    .line 208
    sget-object v0, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 209
    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 218
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->startParallelLoadingMusicCounts()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 223
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/iMe/ui/music/MusicTab;->values()[Lcom/iMe/ui/music/MusicTab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getCurrentTabId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/MusicController;->setSelectedMusicTab(Lcom/iMe/ui/music/MusicTab;)V

    .line 227
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->saveConfig()V

    return-void
.end method

.method public onListItemClick(Landroid/view/View;IFF)V
    .locals 2

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    goto :goto_1

    .line 186
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_2

    .line 188
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    const/4 p4, 0x0

    .line 190
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

    .line 191
    sget p4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "custom_screen_type"

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    aput-object p4, p3, p1

    .line 189
    invoke-static {p3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    .line 188
    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 187
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onListItemLongClick(Landroid/view/View;IFF)Z
    .locals 0

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    .line 201
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

    .line 241
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
