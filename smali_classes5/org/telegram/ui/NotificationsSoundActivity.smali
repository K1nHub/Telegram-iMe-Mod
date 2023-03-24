.class public Lorg/telegram/ui/NotificationsSoundActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NotificationsSoundActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NotificationsSoundActivity$Tone;,
        Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;,
        Lorg/telegram/ui/NotificationsSoundActivity$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field currentType:I

.field dialogId:J

.field dividerRow:I

.field dividerRow2:I

.field lastPlayedRingtone:Landroid/media/Ringtone;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field rowCount:I

.field selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

.field selectedToneChanged:Z

.field selectedTones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/NotificationsSoundActivity$Tone;",
            ">;"
        }
    .end annotation
.end field

.field selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field serverTones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSoundActivity$Tone;",
            ">;"
        }
    .end annotation
.end field

.field serverTonesEndRow:I

.field serverTonesHeaderRow:I

.field serverTonesStartRow:I

.field private stableIds:I

.field private startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

.field systemTones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSoundActivity$Tone;",
            ">;"
        }
    .end annotation
.end field

.field systemTonesEndRow:I

.field systemTonesHeaderRow:I

.field systemTonesStartRow:I

.field topicId:I

.field uploadRow:I

.field uploadingTones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSoundActivity$Tone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-w3z0BXEXMp58jjprm0FTNwmzpU(Lorg/telegram/ui/NotificationsSoundActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NotificationsSoundActivity;->lambda$createView$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V7dvPuRCPMcbItfCJkB4CBYpooE(Lorg/telegram/ui/NotificationsSoundActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NotificationsSoundActivity;->lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p21TS8kH-OwudcaC2LnIQTtuSbo(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity;->lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadingTones:Ljava/util/ArrayList;

    const/16 p1, 0x64

    .line 98
    iput p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    .line 103
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 109
    iput p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    .line 126
    iput-object p2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/NotificationsSoundActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/NotificationsSoundActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->hideActionMode()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/NotificationsSoundActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/NotificationsSoundActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/NotificationsSoundActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$602(Lorg/telegram/ui/NotificationsSoundActivity;Lorg/telegram/ui/NotificationsSoundActivity$Tone;)Lorg/telegram/ui/NotificationsSoundActivity$Tone;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    return-object p1
.end method

.method private checkSelection(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V
    .locals 4

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    iget p1, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 425
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    iget v3, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 430
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateActionMode()V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method

.method private hideActionMode()V
    .locals 3

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 417
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateActionMode()V

    return-void
.end method

.method private static synthetic lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7

    .line 343
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    if-ne p3, v0, :cond_0

    .line 344
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 345
    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setSoundPicker()V

    .line 346
    iget-object p3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 347
    iget-object p3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    .line 349
    :cond_0
    instance-of p3, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    if-eqz p3, :cond_a

    .line 350
    check-cast p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    .line 351
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-nez p3, :cond_1

    goto/16 :goto_2

    .line 355
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->lastPlayedRingtone:Landroid/media/Ringtone;

    if-eqz p3, :cond_2

    .line 356
    invoke-virtual {p3}, Landroid/media/Ringtone;->stop()V

    :cond_2
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 359
    :try_start_0
    iget-object v1, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-boolean v2, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->isSystemDefault:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 362
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->lastPlayedRingtone:Landroid/media/Ringtone;

    .line 363
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_1

    .line 364
    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-boolean v4, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    if-nez v4, :cond_4

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 367
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->lastPlayedRingtone:Landroid/media/Ringtone;

    .line 368
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    goto :goto_1

    .line 369
    :cond_4
    iget-boolean v1, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    if-eqz v1, :cond_8

    .line 371
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 372
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_6

    .line 378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 383
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->lastPlayedRingtone:Landroid/media/Ringtone;

    .line 384
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    goto :goto_1

    .line 386
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v1, v2, p3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 390
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 392
    :cond_8
    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 393
    iget-object p1, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedToneChanged:Z

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_3

    .line 352
    :cond_9
    :goto_2
    iget-object p1, p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity;->checkSelection(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)Z
    .locals 1

    .line 401
    instance-of p2, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 402
    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    .line 403
    iget-object p2, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {p0, p2}, Lorg/telegram/ui/NotificationsSoundActivity;->checkSelection(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_0
    return v0
.end method

.method private loadTones()V
    .locals 11

    .line 445
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadUserRingtones()V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 449
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-object v2, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 450
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-object v2, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    .line 451
    new-instance v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {v5, v3}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    .line 452
    iget v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    iput v6, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    .line 453
    iput-boolean v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    .line 454
    iget v4, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    iput v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->localId:I

    .line 456
    iget-object v4, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_0

    .line 457
    new-instance v4, Ljava/io/File;

    iget-object v6, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    goto :goto_1

    .line 459
    :cond_0
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    .line 460
    :goto_1
    iget-object v4, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 461
    invoke-direct {p0, v5}, Lorg/telegram/ui/NotificationsSoundActivity;->trimTitle(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V

    .line 463
    iget-object v4, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    .line 465
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    .line 466
    iput-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 467
    iput-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 470
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_2
    new-instance v1, Landroid/media/RingtoneManager;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 474
    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 475
    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 480
    new-instance v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {v5, v3}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    .line 481
    iget v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    iput v6, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    .line 482
    sget v6, Lorg/telegram/messenger/R$string;->NoSound:I

    const-string v7, "NoSound"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    .line 484
    iget-object v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v6, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {v6, v3}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    .line 488
    iget v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    iput v8, v6, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    .line 489
    sget v8, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v9, "DefaultRingtone"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    .line 490
    iput-boolean v4, v6, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->isSystemDefault:Z

    .line 491
    iget-object v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v8, :cond_3

    iget-object v9, v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v9, :cond_3

    iget-object v8, v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 494
    iput-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 495
    iput-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 498
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v5, :cond_4

    iget-object v7, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v7, :cond_4

    iget-object v5, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    const-string v7, "Default"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 499
    iput-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 500
    iput-object v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 503
    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 504
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 507
    new-instance v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {v8, v3}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    .line 508
    iget v9, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    iput v9, v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    .line 509
    iput-object v5, v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    .line 510
    iput-object v7, v8, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    .line 512
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v5, :cond_5

    iget-object v9, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v9, :cond_5

    iget-object v5, v5, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 513
    iput-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 514
    iput-object v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 517
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 519
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-nez v0, :cond_7

    .line 520
    iput-object v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 521
    iput-boolean v4, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedToneChanged:Z

    .line 523
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateRows()V

    return-void
.end method

.method public static trimTitle(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x2e

    .line 825
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 827
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 830
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 831
    sget p1, Lorg/telegram/messenger/R$string;->SoundNameEmpty:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    int-to-long v3, p0

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(JZ)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "SoundNameEmpty"

    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private trimTitle(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V
    .locals 2

    .line 820
    iget-object v0, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/NotificationsSoundActivity;->trimTitle(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    return-void
.end method

.method private updateActionMode()V
    .locals 3

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :goto_0
    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, -0x1

    .line 527
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    .line 528
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    .line 529
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    .line 530
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    .line 531
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    .line 532
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    .line 533
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    .line 534
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    const/4 v0, 0x0

    .line 536
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 538
    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    .line 542
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    .line 544
    :cond_0
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    add-int/lit8 v0, v1, 0x1

    .line 545
    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    .line 549
    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    .line 551
    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    .line 553
    :cond_1
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow2:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 178
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "avatar_actionBarSelectorBlue"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 179
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "actionBarDefaultIcon"

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 180
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 182
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/NotificationsSoundActivity$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/NotificationsSoundActivity$1;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 286
    iget-wide v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_2

    .line 287
    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    if-ne v2, v8, :cond_0

    .line 288
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsSoundPrivate:I

    const-string v6, "NotificationsSoundPrivate"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    if-nez v2, :cond_1

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsSoundGroup:I

    const-string v6, "NotificationsSoundGroup"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    if-ne v2, v3, :cond_7

    .line 292
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsSoundChannels:I

    const-string v6, "NotificationsSoundChannels"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 295
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v9, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v7, v4, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 296
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    xor-int/2addr v9, v8

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 297
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v9, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v10, -0x2

    const/4 v11, -0x1

    const/16 v12, 0x33

    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v13, :cond_3

    const/16 v13, 0x38

    goto :goto_0

    :cond_3
    move v13, v4

    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x28

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v9, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-wide v9, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    cmp-long v2, v9, v5

    if-gez v2, :cond_5

    .line 299
    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    if-eqz v2, :cond_4

    .line 300
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    neg-long v5, v5

    iget v9, v0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    .line 301
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v2, v4, v8, v6}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 302
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 304
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 305
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 306
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 309
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 311
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 312
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    :cond_6
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsSound:I

    const-string v6, "NotificationsSound"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 318
    :cond_7
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 320
    new-instance v5, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v6, 0x12

    .line 321
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 322
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v6, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v9, "actionBarActionModeDefaultIcon"

    invoke-static {v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 324
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x48

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v5, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTonesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v6, Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    const/16 v6, 0x36

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sget v10, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v11, "ShareFile"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v5, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 328
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v9, "Delete"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 330
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 331
    check-cast v2, Landroid/widget/FrameLayout;

    .line 332
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "windowBackgroundGray"

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 334
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    .line 335
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v2, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    iput-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    .line 337
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 338
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 339
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 340
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 341
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 342
    iget-object v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 400
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/NotificationsSoundActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 409
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/NotificationsSoundActivity;->loadTones()V

    .line 410
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateRows()V

    .line 411
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 773
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    if-ne p1, p2, :cond_6

    .line 774
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x0

    move p3, p2

    .line 775
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->localId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 778
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    move p3, p2

    .line 779
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-object v0, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p3, v0, :cond_5

    .line 780
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-object v0, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    .line 781
    new-instance v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-direct {v2, v1}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    .line 782
    iget v3, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v3, :cond_2

    .line 784
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v3, v4, :cond_1

    .line 785
    iput-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 787
    :cond_1
    iget v3, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    iput v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    goto :goto_2

    .line 789
    :cond_2
    iget v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/NotificationsSoundActivity;->stableIds:I

    iput v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    :goto_2
    const/4 v3, 0x1

    .line 791
    iput-boolean v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    .line 792
    iget v3, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    iput v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->localId:I

    .line 793
    iget-object v3, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_3

    .line 794
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    goto :goto_3

    .line 796
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    .line 798
    :goto_3
    iget-object v3, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 799
    invoke-direct {p0, v2}, Lorg/telegram/ui/NotificationsSoundActivity;->trimTitle(Lorg/telegram/ui/NotificationsSoundActivity$Tone;)V

    .line 800
    iget-object v3, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    .line 802
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 803
    iput-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 804
    iput-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 807
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 809
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity;->updateRows()V

    .line 810
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 812
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 813
    iput-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    :cond_6
    return-void
.end method

.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZI",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const/4 p2, 0x0

    move p3, p2

    .line 558
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/MediaDataController;->uploadRingtone(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate$-CC;->$default$didSelectPhotos(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;Ljava/util/ArrayList;ZILjava/lang/String;Z)V

    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    const-string v0, "windowBackgroundGray"

    .line 768
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 5

    const/16 p2, 0x15

    if-ne p1, p2, :cond_6

    if-nez p3, :cond_0

    return-void

    .line 918
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_6

    .line 920
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 921
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 923
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 926
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isRingtone(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 928
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MediaDataController;->uploadRingtone(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    move v0, p2

    goto :goto_2

    .line 932
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 933
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    move p3, v0

    move v1, p3

    .line 934
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge p3, v2, :cond_4

    .line 935
    invoke-virtual {p1, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 937
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 938
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isRingtone(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->uploadRingtone(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, p2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 946
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_6
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "topic_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    .line 134
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, -0x1

    const-string v4, "type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    .line 138
    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 139
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sound_document_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound_path_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    iget v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const-string v0, "GlobalSoundPath"

    const-string v3, "GlobalSoundDocId"

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "GroupSoundPath"

    const-string v3, "GroupSoundDocId"

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    const-string v0, "ChannelSoundPath"

    const-string v3, "ChannelSoundDocId"

    .line 157
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    invoke-interface {v4, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "NoSound"

    .line 159
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    iput-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    cmp-long v1, v5, v1

    if-eqz v1, :cond_4

    .line 163
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->startSelectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_1

    .line 166
    :cond_4
    iput-object v0, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    .line 168
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFragmentDestroy()V
    .locals 11

    .line 838
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedToneChanged:Z

    if-eqz v0, :cond_8

    .line 840
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    iget-wide v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    iget v7, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    iget v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sound_document_id_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    iget v9, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sound_enabled_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    iget v10, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 853
    :cond_0
    iget v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    if-ne v1, v2, :cond_1

    const-string v1, "GlobalSound"

    const-string v5, "GlobalSoundPath"

    const-string v6, "GlobalSoundDocId"

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "GroupSound"

    const-string v5, "GroupSoundPath"

    const-string v6, "GroupSoundDocId"

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const-string v1, "ChannelSound"

    const-string v5, "ChannelSoundPath"

    const-string v6, "ChannelSoundDocId"

    .line 870
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-boolean v7, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->fromServer:Z

    const-string v8, "NoSound"

    if-eqz v7, :cond_3

    iget-object v7, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    .line 871
    iget-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-interface {v0, v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 872
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 873
    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 874
    :cond_3
    iget-object v7, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 875
    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 876
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 878
    :cond_4
    iget-boolean v2, v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->isSystemDefault:Z

    if-eqz v2, :cond_5

    const-string v2, "Default"

    .line 879
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 881
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 883
    :cond_5
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 885
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 888
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    iget-wide v0, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    .line 890
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/NotificationsSoundActivity;->topicId:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    goto :goto_2

    .line 892
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsSoundActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    .line 893
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 866
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 762
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 763
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 756
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 757
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 3

    .line 900
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "audio/mpeg"

    .line 904
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    .line 905
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 907
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic startMusicSelectActivity()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate$-CC;->$default$startMusicSelectActivity(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    return-void
.end method
