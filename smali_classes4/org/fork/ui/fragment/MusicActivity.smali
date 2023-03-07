.class public final Lorg/fork/ui/fragment/MusicActivity;
.super Lcom/smedialink/ui/pager/TelegramViewPagerFragment;
.source "MusicActivity.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;,
        Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;,
        Lorg/fork/ui/fragment/MusicActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicActivity.kt\norg/fork/ui/fragment/MusicActivity\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ViewExt.kt\ncom/smedialink/utils/extentions/common/ViewExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 CommonExt.kt\ncom/smedialink/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,496:1\n91#2,4:497\n13536#3:501\n13537#3:506\n187#4,4:502\n1849#5,2:507\n1#6:509\n6#7,6:510\n*S KotlinDebug\n*F\n+ 1 MusicActivity.kt\norg/fork/ui/fragment/MusicActivity\n*L\n259#1:497,4\n280#1:501\n280#1:506\n281#1:502,4\n296#1:507,2\n118#1:510,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/ui/fragment/MusicActivity$Companion;

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

.field private final albumsAdapter$delegate:Lkotlin/Lazy;

.field private final bots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final botsAdapter$delegate:Lkotlin/Lazy;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsAdapter$delegate:Lkotlin/Lazy;

.field private final countsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceAdapter$delegate:Lkotlin/Lazy;

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
.method public static synthetic $r8$lambda$-0whDp7_W9dokOmUTsooXvG0dQ0(ZLorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda-24$lambda-23$lambda-22$lambda-21(ZLorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0dFjuKw1S0O3HCLcGOjfRgJRNWQ(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/MusicActivity;->getThemeDescriptions$lambda-7$lambda-6(Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGFAdvDXARJK8cLluVVh0yqPujk(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda-24$lambda-23(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4xmHkVWxSnLSg0VuOCMu4JeCw0(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/MusicActivity;->loadDeviceMusic$lambda-4$lambda-3(Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVyYTipTKhUAXkroqhIRafMkpRI(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/MusicActivity;->loadDeviceMusic$lambda-4(Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sYrW4xhEkGe3BGTIxRyCwsLsZ68(Lorg/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicOptions$lambda-20(Lorg/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ulQAraGTiLkUGeaYASA3UNKrIfQ(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters$lambda-19(Lorg/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjuyRB3bQWtSkfGmuNykCb3nqM0(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog$lambda-24(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/MusicActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/ui/fragment/MusicActivity;->Companion:Lorg/fork/ui/fragment/MusicActivity$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 488
    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 489
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 490
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 491
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 487
    sput-object v0, Lorg/fork/ui/fragment/MusicActivity;->notifications:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;-><init>()V

    .line 50
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$albumsAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$albumsAdapter$2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$channelsAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$channelsAdapter$2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lkotlin/Lazy;

    .line 52
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$deviceAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$deviceAdapter$2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceAdapter$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$musicCountComparator$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$musicCountComparator$2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAlbums$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBots$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getChannels$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCountsMap$p(Lorg/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static final synthetic access$getDeviceLoading$p(Lorg/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    return p0
.end method

.method public static final synthetic access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getParallelLoading$p(Lorg/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    return p0
.end method

.method public static final synthetic access$needAskPermission(Lorg/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->needAskPermission()Z

    move-result p0

    return p0
.end method

.method private final convertDeviceAudioEntryToTelegramMessage(Lorg/telegram/messenger/MediaController$AudioEntry;I)Lorg/telegram/messenger/MessageObject;
    .locals 8

    .line 303
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 305
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 p2, 0x1

    .line 306
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 307
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 308
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 309
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v2, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-string v1, ""

    .line 311
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 312
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 313
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 314
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 315
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 316
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 318
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x300

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v5, 0x0

    .line 319
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 320
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 321
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 322
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const-string v6, "ext"

    .line 323
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "mp3"

    :goto_1
    const-string v6, "audio/"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 324
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 325
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 326
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 327
    iget v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 328
    iget-object v7, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 329
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 330
    iget p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 326
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 333
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 332
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 313
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 338
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p1, v1, v0, v5, p2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-object p1
.end method

.method private final getAlbumsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getBotsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getChannelsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getDeviceAdapter()Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;

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
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-7$lambda-6(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lorg/fork/ui/view/PinnedPlayerView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateColors()V

    :goto_0
    return-void
.end method

.method private static final loadDeviceMusic$lambda-4(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "artist"

    const-string v3, "title"

    const-string v4, "_data"

    const-string v5, "duration"

    const-string v6, "album"

    .line 93
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v9

    const-wide/16 v0, 0x1f4

    .line 96
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

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const v4, -0x77359400

    .line 98
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    new-instance v5, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v6, 0x0

    .line 100
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v6, 0x1

    .line 101
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    .line 102
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    .line 103
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    .line 104
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v7, v6

    iput v7, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v6, 0x5

    .line 105
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 107
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v4, -0x1

    .line 108
    invoke-direct {p0, v5, v4}, Lorg/fork/ui/fragment/MusicActivity;->convertDeviceAudioEntryToTelegramMessage(Lorg/telegram/messenger/MediaController$AudioEntry;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 109
    iget-object v4, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 112
    :cond_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :goto_1
    new-instance v2, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 96
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

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 114
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 116
    new-instance v2, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    :goto_2
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :goto_3
    new-instance v3, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    throw v2
.end method

.method private static final loadDeviceMusic$lambda-4$lambda-3(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;

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

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

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

    .line 342
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyDialogsAdapters$lambda-19(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 344
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 345
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final prepareDialogsAdaptersData()V
    .locals 9

    .line 259
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 91
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 92
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    iget-object v2, p0, Lorg/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v2, v6, :cond_2

    .line 265
    iget-object v2, p0, Lorg/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_1
    iget-object v2, p0, Lorg/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-lt v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 272
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getMusicCountComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 275
    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private final showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 362
    sget v0, Lorg/telegram/messenger/R$string;->music_device_delete_alert_message:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 358
    new-instance v7, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, p1, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda-24(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isConfirmed"

    .line 367
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda-24$lambda-23(Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 2

    const-string v0, "$message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 370
    new-instance v1, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0, p1}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda4;-><init>(ZLorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showDeviceMusicDeleteConfirmDialog$lambda-24$lambda-23$lambda-22$lambda-21(ZLorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 2

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 372
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_2

    .line 373
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    .line 375
    :cond_2
    invoke-virtual {p2}, Lorg/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    goto :goto_1

    .line 377
    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string p1, "UnknownError"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(\"UnknownError\", R.string.UnknownError)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final showDeviceMusicOptions(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 350
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda6;-><init>(Lorg/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showDeviceMusicOptionsAlertDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    return-void
.end method

.method private static final showDeviceMusicOptions$lambda-20(Lorg/fork/ui/fragment/MusicActivity;Lorg/telegram/messenger/MessageObject;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 352
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicDeleteConfirmDialog(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method private final startParallelLoadingMusicCounts()V
    .locals 9

    .line 292
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

    .line 293
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelCounter:I

    .line 295
    iput-boolean v2, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 297
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

    .line 280
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    .line 13536
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 281
    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v6, 0x1

    .line 188
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-string v8, "getChildAt(i)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    instance-of v8, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v8, :cond_0

    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 283
    invoke-virtual {v6, v2, v8}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_0
    if-lt v7, v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    .line 215
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_6

    .line 216
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x2

    .line 217
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 218
    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 219
    iget p1, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelCounter:I

    if-nez p1, :cond_6

    .line 221
    iput-boolean v0, p0, Lorg/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 222
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->prepareDialogsAdaptersData()V

    .line 223
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters()V

    goto :goto_3

    .line 227
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 228
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_5

    .line 229
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 230
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_5

    return-void

    .line 232
    :cond_5
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->updatePlayButtons()V

    :cond_6
    :goto_3
    return-void
.end method

.method public getFragmentContextViewParams()Lcom/smedialink/ui/pager/FragmentContextViewParams;
    .locals 3

    .line 138
    new-instance v0, Lcom/smedialink/ui/pager/FragmentContextViewParams;

    .line 139
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {v0, v1, v2, v2}, Lcom/smedialink/ui/pager/FragmentContextViewParams;-><init>(ZZZ)V

    return-object v0
.end method

.method public getInitialTabId()I
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/MusicController;->getSelectedMusicTab()Lcom/smedialink/ui/music/MusicTab;

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

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-super/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 240
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v9, v3

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    new-instance v12, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda7;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    const-string v16, "divider"

    move-object v6, v14

    move-object/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "listSelectorSDK21"

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "actionBarDefault"

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView1"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "chats_nameMessage_threeLines"

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    const-string v33, "chats_message"

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v6

    sget-object v7, Lcom/smedialink/ui/music/MusicTab;->DEVICE:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ne v6, v15, :cond_0

    .line 246
    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 247
    instance-of v6, v5, Lcom/smedialink/ui/music/NoPermissionMusicCell;

    if-eqz v6, :cond_0

    .line 248
    check-cast v5, Lcom/smedialink/ui/music/NoPermissionMusicCell;

    invoke-virtual {v5}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->getThemeDescriptions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2

    .line 136
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachMusic\", R.string.AttachMusic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initPageData()[Lcom/smedialink/ui/pager/ViewPageData;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/ui/pager/ViewPageData;

    .line 147
    new-instance v1, Lcom/smedialink/ui/pager/ViewPageData;

    sget-object v2, Lcom/smedialink/ui/music/MusicTab;->ALBUMS:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v2}, Lcom/smedialink/ui/music/MusicTab;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(MusicTab.ALBUMS.titleResId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    invoke-direct {v1, v2, v3, v4}, Lcom/smedialink/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 148
    new-instance v1, Lcom/smedialink/ui/pager/ViewPageData;

    sget-object v3, Lcom/smedialink/ui/music/MusicTab;->CHANNELS:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/smedialink/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.CHANNELS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/smedialink/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 149
    new-instance v1, Lcom/smedialink/ui/pager/ViewPageData;

    sget-object v3, Lcom/smedialink/ui/music/MusicTab;->BOTS:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/smedialink/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.BOTS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/smedialink/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 150
    new-instance v1, Lcom/smedialink/ui/pager/ViewPageData;

    sget-object v3, Lcom/smedialink/ui/music/MusicTab;->DEVICE:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/smedialink/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.DEVICE.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/smedialink/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

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
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->needAskPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceMusic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lorg/fork/ui/fragment/MusicActivity;->deviceLoading:Z

    .line 83
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->getDeviceAdapter()Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 84
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/MusicActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFabClick(I)V
    .locals 1

    .line 178
    sget-object v0, Lcom/smedialink/ui/music/MusicTab;->ALBUMS:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 179
    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v2, Lorg/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 188
    invoke-direct {p0}, Lorg/fork/ui/fragment/MusicActivity;->startParallelLoadingMusicCounts()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/smedialink/ui/music/MusicTab;->values()[Lcom/smedialink/ui/music/MusicTab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getCurrentTabId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/fork/controller/MusicController;->setSelectedMusicTab(Lcom/smedialink/ui/music/MusicTab;)V

    .line 197
    invoke-virtual {v0}, Lorg/fork/controller/MusicController;->saveConfig()V

    return-void
.end method

.method public onListItemClick(Landroid/view/View;IFF)V
    .locals 4

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    goto :goto_2

    .line 160
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_3

    .line 161
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    const/4 p4, 0x0

    .line 162
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "dialog_id"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    .line 163
    sget p4, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "custom_screen_type"

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    aput-object p4, p3, p1

    .line 161
    invoke-static {p3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public onListItemLongClick(Landroid/view/View;IFF)Z
    .locals 0

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_0

    .line 171
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const-string p2, "itemView.message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MusicActivity;->showDeviceMusicOptions(Lorg/telegram/messenger/MessageObject;)V

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

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 203
    invoke-virtual {p0}, Lorg/fork/ui/fragment/MusicActivity;->loadDeviceMusic()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
