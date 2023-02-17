.class public Lorg/telegram/ui/Components/AudioPlayerAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "AudioPlayerAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;,
        Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;,
        Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private TAG:I

.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

.field private blurredAnimationInProgress:Z

.field private blurredView:Landroid/widget/FrameLayout;

.field private buttons:[Landroid/view/View;

.field private coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

.field private currentAudioFinishedLoading:Z

.field private currentFile:Ljava/lang/String;

.field private draggingSeekBar:Z

.field private durationTextView:Landroid/widget/TextView;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private final forwardSeek:Ljava/lang/Runnable;

.field private inFullSize:Z

.field private lastBufferedPositionCheck:J

.field private lastDuration:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field lastRewindingTime:J

.field private lastTime:I

.field lastUpdateRewindingPlayerTime:J

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nextButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private parentActivity:Lorg/telegram/ui/LaunchActivity;

.field private pinPlayerButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private playerLayout:Landroid/widget/FrameLayout;

.field private playerShadow:Landroid/view/View;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private prevButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field rewindingForwardPressedCount:I

.field rewindingProgress:F

.field rewindingState:I

.field private scrollOffsetY:I

.field private scrollToSong:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchOpenOffset:I

.field private searchOpenPosition:I

.field private searchWas:Z

.field private searching:Z

.field private seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field private shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private wasLight:Z


# direct methods
.method public static synthetic $r8$lambda$6ryGaVUrWuycID-iV5Nlgah43hY(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$13(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ACW-azcNc7wLrE_zati_hvB7V6A(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F3UHXJC7PB420p2up9dEviaVEu4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HhbZNH3cmRNoKYJii-HoHzKagi0(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ORku0prfHLUQX1eiDYsIqjlwQFk(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1bk_y3c8Atu87PzdZp79LqNEXs(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QuMbmSoWzDJMYPC5vcsQw0vuSf8(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGcGRVPtmwLiWqpE1AuH12y5QLA(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$11(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAW_7HLeaN8EeVMAo0f6wQWqy8o(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTE_aRBgmtnHHuudvBgjJ8cYhmM(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$getThemeDescriptions$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$hKZwA-aoZfN_lkcoWh67CjDwK-8(Lorg/telegram/ui/Components/AudioPlayerAlert;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$forwardCloud$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2czJATu4hqxqFqQqUzLvcHUBu8(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvL-ccfKl1KjrNBRVGcgEPFM0_Q(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuwysOdGTLe1SlaZX_nhFHsSIfg(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v8IxRLMY3AtClC_8TF4ty0LBn0k(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vueU6uD2syGzGgS90Y0Irvxmaqc(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xmOZ_FerE81U-4PbAVIXNWmaTwc(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$14()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x1

    .line 280
    invoke-direct {v0, v8, v10, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v11, 0x4

    new-array v1, v11, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 175
    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v12, 0x5

    new-array v1, v12, [Landroid/view/View;

    .line 188
    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    .line 196
    iput-boolean v10, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    const/4 v13, -0x1

    .line 198
    iput v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    const v1, 0x7fffffff

    .line 204
    iput v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 220
    iput v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 233
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 283
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    goto :goto_0

    .line 287
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 290
    :goto_0
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    .line 292
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    .line 293
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 294
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 295
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 296
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 300
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 302
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$2;

    invoke-direct {v2, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    .line 467
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 468
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v3, v14, v3, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 470
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$3;

    invoke-direct {v2, v0, v8, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "player_actionBar"

    .line 477
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 478
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "player_actionBarTitle"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 480
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "player_actionBarSelector"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 481
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 482
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v5, "AttachMusic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "player_actionBarSubtitle"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 484
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v1, :cond_3

    .line 487
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->currentPlaylistIsGlobalSearch()Z

    move-result v2

    if-nez v2, :cond_3

    .line 488
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 489
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 497
    :cond_1
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 503
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    :cond_3
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 511
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v14, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 542
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 544
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 545
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v2, "player_time"

    .line 546
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 547
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 549
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 560
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    .line 561
    invoke-virtual {v1, v15}, Landroid/view/View;->setAlpha(F)V

    .line 562
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 564
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    const-string v3, "dialogShadowLine"

    .line 565
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 567
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    .line 578
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$7;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    .line 605
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v16, 0x2c

    const/16 v17, 0x2c

    const/16 v18, 0x35

    const/16 v19, 0x0

    const/16 v20, 0x14

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/16 v4, 0x38

    :goto_2
    const/16 v7, 0x14

    add-int/lit8 v21, v4, 0x14

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    const-string v6, "player_button"

    const-string v4, "listSelectorSDK21"

    if-nez v1, :cond_5

    .line 608
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    .line 609
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 610
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->chats_pin:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x18

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3, v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    const/16 v18, 0x30

    const/16 v19, 0x30

    const/16 v20, 0x35

    const/16 v21, 0x0

    const/16 v22, 0x12

    const/16 v23, 0x12

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$8;

    invoke-direct {v1, v0, v8, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 639
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x33

    const/16 v21, 0x14

    const/16 v22, 0x14

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/16 v5, 0x38

    :goto_3
    add-int/lit8 v23, v5, 0x48

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$9;

    invoke-direct {v1, v0, v8, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x33

    const/16 v21, 0xe

    const/16 v22, 0x2f

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    const/16 v5, 0x38

    :goto_4
    add-int/lit8 v23, v5, 0x48

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$10;

    invoke-direct {v1, v0, v8, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    .line 686
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/SeekBarView;->setLineWidth(I)V

    .line 687
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 711
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 712
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v18, -0x1

    const/16 v19, 0x2c

    const/16 v20, 0x33

    const/16 v21, 0x5

    const/16 v22, 0x43

    const/16 v23, 0x5

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v3, v15}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v5, 0x443b8000    # 750.0f

    .line 716
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 717
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 715
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 718
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 720
    new-instance v1, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 721
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v3, "player_progressBackground"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v3, "player_progress"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v19, 0x2

    const/16 v21, 0x15

    const/16 v22, 0x5a

    const/16 v23, 0x15

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0xc

    .line 727
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, "0:00"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 730
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 731
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v18, 0x64

    const/16 v19, -0x2

    const/16 v21, 0x14

    const/16 v22, 0x62

    const/16 v23, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    .line 734
    invoke-virtual {v1, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 735
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 737
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v20, 0x35

    const/16 v21, 0x0

    const/16 v22, 0x60

    const/16 v23, 0x14

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v1, "dialogTextBlack"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v15, v3

    move-object/from16 v3, v16

    move-object v13, v4

    move/from16 v4, v18

    move/from16 v5, v19

    move-object v12, v6

    move/from16 v6, v20

    const/4 v11, 0x2

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 741
    invoke-virtual {v15, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 742
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 743
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xe0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 744
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    const-string v3, "AccDescrPlayerSpeed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 758
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_0_5:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    const-string v5, "SpeedSlow"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v10, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v14

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_1:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    const-string v5, "SpeedNormal"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v10

    .line 760
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_1_5:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedFast:I

    const-string v5, "SpeedFast"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x3

    invoke-virtual {v2, v15, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v11

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_2:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    const-string v5, "SpeedVeryFast"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v15

    .line 762
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    .line 763
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14, v10, v14, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 765
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v26, 0x24

    const/16 v27, 0x24

    const/16 v28, 0x35

    const/16 v29, 0x0

    const/16 v30, 0x56

    const/16 v31, 0x14

    const/16 v32, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 781
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton()V

    .line 783
    new-instance v6, Lorg/telegram/ui/Components/AudioPlayerAlert$12;

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v26, -0x1

    const/16 v27, 0x42

    const/16 v28, 0x33

    const/16 v30, 0x6f

    const/16 v31, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v11, v4

    move/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v20

    move-object v15, v6

    move/from16 v6, v22

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    aput-object v11, v19, v14

    .line 797
    invoke-virtual {v11, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 798
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 800
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v11, v7, :cond_9

    .line 801
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v6, 0x30

    const/16 v5, 0x33

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatSong:I

    const-string v4, "RepeatSong"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatList:I

    const-string v4, "RepeatList"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    sget v3, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v4, "ShuffleList"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 811
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    sget v3, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v4, "ReverseOrder"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 812
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 846
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    .line 847
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 849
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$13;

    invoke-direct {v3, v0, v8, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object v3, v2, v10

    .line 982
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 983
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->player_prev:I

    const/16 v14, 0x14

    invoke-virtual {v2, v3, v14, v14}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 984
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Triangle 3.**"

    invoke-virtual {v2, v14, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 985
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Triangle 4.**"

    invoke-virtual {v2, v14, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 986
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Rectangle 4.**"

    invoke-virtual {v2, v14, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    if-lt v11, v7, :cond_a

    .line 988
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/16 v22, 0x16

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v14, v10, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    const-string v14, "AccDescrPrevious"

    invoke-static {v14, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const/4 v14, 0x2

    aput-object v7, v2, v14

    .line 994
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 995
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v14, 0x1c

    invoke-direct {v7, v14}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v7

    xor-int/2addr v7, v10

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v14}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 997
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v12, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v2, 0x15

    if-lt v11, v2, :cond_b

    .line 999
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    const/16 v12, 0x18

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7, v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget-object v7, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1013
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    invoke-direct {v7, v0, v8, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    aput-object v7, v2, v1

    .line 1105
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1106
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x14

    invoke-virtual {v1, v3, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1107
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 3.**"

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1108
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 4.**"

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1109
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Rectangle 4.**"

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1110
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const/16 v7, 0x15

    if-lt v11, v7, :cond_c

    .line 1112
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x16

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Next:I

    const-string v3, "Next"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v25, v4

    move/from16 v4, v22

    move/from16 v5, v25

    move/from16 v6, v24

    const/16 v10, 0x15

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    aput-object v14, v12, v1

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 1119
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 1120
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1121
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 1122
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x9d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    if-lt v11, v10, :cond_d

    .line 1124
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x33

    const/16 v3, 0x30

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v4, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v5, "Forward"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x60

    .line 1129
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1130
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getAdditionalYOffset()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 1131
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    sget v5, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v5, "ShareFile"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1134
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v4, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v5, "SaveToMusic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1135
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v4, Lorg/telegram/messenger/R$string;->ShowInChat:I

    const-string v5, "ShowInChat"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 1137
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1141
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 1142
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1143
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    sget-object v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1148
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    .line 1149
    sget v5, Lorg/telegram/messenger/R$drawable;->music_empty:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "dialogEmptyImage"

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1151
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v5, "dialogEmptyText"

    .line 1154
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1156
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoAudioFound:I

    const-string v6, "NoAudioFound"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1158
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1159
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1160
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x11

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const-string v6, "dialogEmptyText"

    .line 1163
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1164
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1165
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1166
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1167
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/4 v13, 0x6

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$15;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$15;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    .line 1206
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1207
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1208
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1209
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1210
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1211
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-direct {v2, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1212
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1213
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1218
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1260
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1261
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1263
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0xb3

    const/16 v5, 0x53

    const/4 v6, -0x1

    invoke-static {v6, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v5

    const/16 v7, 0x53

    invoke-direct {v3, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xb3

    .line 1266
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1267
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    const/4 v3, 0x3

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1270
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$17;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 1279
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1280
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1283
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x1

    .line 1284
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 1285
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1286
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1287
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1288
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    const/16 v8, 0x1e

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 1290
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1291
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 1292
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/lang/Runnable;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->inFullSize:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AudioPlayerAlert;ZZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 117
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 117
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/LaunchActivity;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->draggingSeekBar:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/AudioPlayerAlert;)[Landroid/view/View;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 117
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 0

    .line 117
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 1971
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1972
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 1978
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 1980
    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1981
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 1982
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 1983
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 1984
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1986
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1988
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 1990
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1993
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private forwardCloud()V
    .locals 3

    .line 131
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 138
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 140
    new-instance v2, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {v2, v1, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 142
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    :goto_0
    return-void
.end method

.method private getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;
    .locals 4

    .line 2093
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2094
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2095
    :goto_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 2099
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 2101
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2103
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 13

    .line 132
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-wide v4, p1

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$15()V
    .locals 6

    .line 2309
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v1, "player_actionBarTitle"

    .line 2310
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2312
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2313
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "listSelectorSDK21"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2315
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "player_button"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2316
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progressBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progress"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 2321
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2324
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2326
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 614
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->hasPreferenceKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 615
    sget p1, Lorg/telegram/messenger/R$string;->music_pinned_player_enabled_toast:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 617
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updatePinnedPlayerVisible()V

    .line 621
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$11(Landroid/view/View;I)V
    .locals 0

    .line 1214
    instance-of p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz p1, :cond_0

    .line 1215
    check-cast p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->didPressedButton()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setBufferedProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 2

    .line 746
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    if-ne p1, v1, :cond_0

    .line 748
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 750
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 752
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    .line 754
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const v0, 0x3fe66666    # 1.8f

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 756
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 3

    .line 769
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    .line 770
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 771
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController;->getFastPlaybackSpeed(Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 775
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)Z
    .locals 0

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$7(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 829
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v1, :cond_1

    .line 830
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 832
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 835
    :cond_2
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v0, :cond_3

    .line 836
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 838
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 816
    :cond_4
    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v3, :cond_5

    if-eq p1, v1, :cond_6

    .line 817
    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v1, :cond_7

    if-ne p1, v0, :cond_7

    .line 818
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    goto :goto_1

    .line 820
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    .line 822
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 823
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eq v3, p1, :cond_8

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 825
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    .line 842
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 843
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 1003
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1006
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1007
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 1009
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 0

    .line 1137
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static synthetic lambda$onSubItemClick$12(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$onSubItemClick$13(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1478
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v15, 0x1

    if-gt v1, v15, :cond_4

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->isCustomMultiForward()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1489
    :cond_0
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 1490
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "scrollToTopOnResume"

    .line 1491
    invoke-virtual {v1, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1492
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1493
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1494
    :cond_1
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "user_id"

    .line 1495
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    neg-long v3, v3

    const-string v5, "chat_id"

    .line 1497
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1499
    :goto_0
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1500
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1501
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v3, v15, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1502
    invoke-virtual {v3, v15, v12}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1504
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_3

    .line 1479
    :cond_4
    :goto_1
    invoke-virtual {v13, v12}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    const/4 v11, 0x0

    .line 1480
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 1481
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p4, :cond_5

    .line 1483
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-boolean v1, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v2, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, v3

    move/from16 v27, v1

    move/from16 v28, v2

    invoke-virtual/range {v16 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    .line 1485
    :cond_5
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v8, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v10

    const/16 v16, 0x1

    move-object/from16 v2, p1

    move/from16 v17, v11

    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    add-int/lit8 v11, v17, 0x1

    goto :goto_2

    .line 1487
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_3
    return v15
.end method

.method private synthetic lambda$onSubItemClick$14()V
    .locals 2

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 11

    .line 1458
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1459
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1463
    :cond_0
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne p1, v2, :cond_1

    .line 1464
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardCloud()V

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 1467
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq p1, v3, :cond_2

    .line 1468
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1470
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onlySelect"

    .line 1471
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const-string v2, "dialogsType"

    .line 1472
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1474
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 1477
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1509
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1510
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_9

    .line 1516
    :try_start_0
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1517
    new-instance p1, Ljava/io/File;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object p1, v4

    :cond_5
    if-nez p1, :cond_6

    .line 1523
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 1526
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1527
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x18

    const-string v4, "android.intent.extra.STREAM"

    if-lt v0, v3, :cond_7

    .line 1531
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".provider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1532
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1534
    :catch_0
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1537
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1540
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const-string v0, "ShareFile"

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 1542
    :cond_8
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    .line 1543
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "OK"

    .line 1544
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "PleaseDownload"

    .line 1545
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1546
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 1549
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_9
    const/4 v3, 0x4

    if-ne p1, v3, :cond_e

    .line 1552
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq p1, v3, :cond_a

    .line 1553
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1556
    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1557
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 1558
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1559
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1560
    :cond_b
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "user_id"

    .line 1561
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 1563
    :cond_c
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1564
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_d

    const-string v4, "migrated_to"

    .line 1565
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1566
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    :cond_d
    neg-long v1, v1

    const-string v3, "chat_id"

    .line 1568
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1570
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1571
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 1573
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x5

    if-ne p1, v2, :cond_16

    .line 1575
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_10

    const/16 v2, 0x1c

    if-le p1, v2, :cond_f

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p1, :cond_10

    :cond_f
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1579
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 1580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1581
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    :cond_11
    move-object v8, p1

    .line 1583
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 1585
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2

    :cond_12
    move-object v4, p1

    :goto_2
    if-eqz v4, :cond_14

    .line 1590
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :cond_13
    move-object v5, v4

    goto :goto_4

    .line 1591
    :cond_14
    :goto_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    .line 1593
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const/4 v7, 0x3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_5

    :cond_15
    const-string p1, ""

    :goto_5
    move-object v9, p1

    new-instance v10, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda8;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_16
    :goto_6
    return-void
.end method

.method private preloadNeighboringThumbs()V
    .locals 13

    .line 2110
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    .line 2111
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    .line 2112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-void

    .line 2116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v3

    .line 2121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    const/4 v5, -0x1

    if-gt v0, v5, :cond_2

    .line 2125
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 2128
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v0, :cond_3

    .line 2130
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_6

    .line 2134
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 2135
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2137
    iget-object v1, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2138
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageLoader;->preloadArtwork(Ljava/lang/String;)V

    goto :goto_1

    .line 2140
    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private scrollToCurrentSong(Z)Z
    .locals 6

    .line 1348
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 1354
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1355
    instance-of v5, v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v5, :cond_0

    .line 1356
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 1357
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-gt p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 1366
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 1368
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v0, :cond_2

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    .line 1371
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :goto_2
    return v2

    :cond_3
    return v1
.end method

.method private setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "player_buttonActive"

    .line 1404
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1405
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    goto :goto_0

    :cond_0
    const-string p2, "actionBarDefaultSubmenuItem"

    .line 1407
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1408
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    :goto_0
    return-void
.end method

.method private showAlbumCover(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0xb4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1599
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1602
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1603
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1604
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1606
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    .line 1607
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 1609
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1610
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3e2aaaab

    .line 1611
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1612
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1614
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x7

    .line 1615
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit16 p2, p2, 0xb4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v4, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1618
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$18;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1623
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1624
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1626
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 1629
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x3f666666    # 0.9f

    if-eqz p2, :cond_4

    .line 1631
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1632
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$19;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1639
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1640
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1642
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1643
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1644
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1645
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1646
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method private startForwardRewindingSeek()V
    .locals 2

    .line 1326
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastRewindingTime:J

    .line 1328
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateCover(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 11

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getNextImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    .line 2067
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2068
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2069
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2070
    iput-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2071
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    goto :goto_2

    .line 2073
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 2074
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2075
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    .line 2076
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v1

    .line 2077
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 2078
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2079
    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v1, v0

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v1, v0

    move-object v10, p1

    .line 2081
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    .line 2083
    :cond_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2085
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_2
    if-eqz p2, :cond_4

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->switchImageViews()V

    :cond_4
    return-void
.end method

.method private updateEmptyView()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1344
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x96

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    .line 1339
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 12

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1764
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1765
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1766
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v3, 0x7

    .line 1767
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 1768
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v0, v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const/16 v2, 0xc

    .line 1771
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 1772
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_3
    if-nez v2, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1773
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1774
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    .line 1775
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1776
    iput-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1778
    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xb4

    .line 1779
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1780
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz v2, :cond_7

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    aput v11, v9, v1

    .line 1781
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    if-eqz v2, :cond_8

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_8
    aput v10, v9, v1

    .line 1782
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v3

    .line 1780
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1783
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$20;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$20;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1794
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1796
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1797
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1798
    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    if-eq v5, v0, :cond_a

    .line 1799
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1800
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    const/16 v0, 0xd

    .line 1803
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1804
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v0

    .line 1805
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-ne v5, v3, :cond_b

    int-to-float v2, v2

    .line 1806
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 1810
    :cond_b
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v5, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    if-ge v5, v6, :cond_c

    const/4 v5, 0x4

    .line 1811
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 1812
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    sub-int/2addr v5, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v4, v0

    :cond_c
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_d

    const-string v0, "dialogBackground"

    .line 1817
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v4, v6

    if-lez v0, :cond_d

    const/4 v1, 0x1

    .line 1818
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    if-eq v1, v0, :cond_e

    .line 1819
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_e
    return-void
.end method

.method private updatePlaybackButton()V
    .locals 11

    .line 1420
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    .line 1422
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const-string v4, "inappPlayerPlayPause"

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    const-string v3, "inappPlayerClose"

    .line 1427
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1428
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MediaController;->getFastPlaybackSpeed(Z)F

    move-result v6

    const v7, 0x3fe66666    # 1.8f

    sub-float v8, v6, v7

    .line 1429
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3fc00000    # 1.5f

    cmpg-float v8, v8, v5

    if-gez v8, :cond_1

    .line 1430
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/messenger/R$drawable;->voice_mini_2_0:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    :cond_1
    sub-float/2addr v6, v9

    .line 1431
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_2

    .line 1432
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/messenger/R$drawable;->voice_mini_1_5:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1434
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/messenger/R$drawable;->voice_mini_0_5:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1436
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1437
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_3

    .line 1438
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const v8, 0x19ffffff

    and-int/2addr v3, v8

    const/16 v8, 0xe

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3, v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v3, 0x0

    .line 1440
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v6, v6

    if-ge v3, v6, :cond_9

    if-nez v3, :cond_4

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v0, v6

    .line 1441
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-ltz v6, :cond_7

    :cond_4
    if-ne v3, v1, :cond_5

    .line 1442
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-ltz v6, :cond_7

    :cond_5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    sub-float v6, v0, v9

    .line 1443
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-ltz v6, :cond_7

    :cond_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    sub-float v6, v0, v7

    .line 1444
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_8

    .line 1445
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v6, v6, v3

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_3

    .line 1447
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v6, v6, v3

    const-string v8, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v10, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {p0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1922
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v0, :cond_a

    .line 1928
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto/16 :goto_3

    .line 1931
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    goto :goto_1

    .line 1935
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    .line 1939
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    goto :goto_2

    .line 1942
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1943
    iget-wide v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long p2, v5, v7

    if-ltz p2, :cond_6

    .line 1944
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p2

    move v1, p2

    .line 1945
    :cond_5
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_2

    :cond_6
    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    cmpl-float p2, v1, v0

    if-eqz p2, :cond_7

    .line 1951
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, v1, v0

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1952
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_7
    if-eqz v2, :cond_8

    .line 1955
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1956
    iput p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_3

    .line 1958
    :cond_8
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1961
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    if-eq v0, p2, :cond_9

    .line 1962
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1965
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->updateTimestamps(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V

    :cond_a
    return-void
.end method

.method private updateRepeatButton()V
    .locals 6

    .line 1876
    sget v0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const v1, 0x19ffffff

    const/4 v2, 0x1

    const-string v3, "player_buttonActive"

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    .line 1913
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1914
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOne:I

    const-string v2, "AccDescrRepeatOne"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1878
    :cond_1
    :goto_0
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    .line 1880
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1882
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1884
    :cond_3
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_4

    .line 1886
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1888
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_reverse:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1891
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :goto_1
    if-nez v0, :cond_6

    .line 1893
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-nez v4, :cond_6

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "listSelectorSDK21"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOff:I

    const-string v2, "AccDescrRepeatOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1899
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1900
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1901
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    if-nez v0, :cond_8

    .line 1903
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_7

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v2, "ShuffleList"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1906
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v2, "ReverseOrder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1909
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatList:I

    const-string v2, "AccDescrRepeatList"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateSubMenu()V
    .locals 5

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    return-void
.end method

.method private updateTitle(Z)V
    .locals 8

    .line 1998
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1999
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2000
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_7

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 2003
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 2006
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 2007
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2008
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const v4, -0x77359400

    if-gt v3, v4, :cond_5

    goto :goto_1

    .line 2011
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 2009
    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2013
    :goto_2
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(J)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v3, :cond_7

    .line 2014
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2015
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2016
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2017
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2018
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_3

    .line 2020
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2021
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2022
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2023
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x9d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2025
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/16 v3, 0x60

    .line 2026
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2027
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getAdditionalYOffset()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2031
    :goto_3
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    xor-int/lit8 v3, p1, 0x1

    .line 2032
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    xor-int/lit8 v3, p1, 0x1

    .line 2033
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateCover(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2035
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2036
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2037
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v4, "AccActionPlay"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2039
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2040
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v4, "AccActionPause"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2042
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    .line 2043
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    .line 2044
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    .line 2049
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    .line 2050
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    const-string v3, "-:--"

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 v2, 0x258

    if-le v0, v2, :cond_b

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 2056
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_6
    if-nez p1, :cond_c

    .line 2060
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->preloadNeighboringThumbs()V

    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 8

    .line 1653
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_2

    .line 1696
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_1

    .line 1697
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1698
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1699
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_7

    .line 1701
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    if-ne p1, p2, :cond_2

    .line 1702
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1703
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 1704
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    if-ne p1, p2, :cond_4

    .line 1705
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1707
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz p1, :cond_15

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 1709
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1710
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 1711
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_15

    .line 1713
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 1714
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1715
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p2, p1

    invoke-virtual {p3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_7

    .line 1718
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_5

    .line 1719
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1720
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1721
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1722
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    goto/16 :goto_7

    .line 1724
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_15

    .line 1725
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1726
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1727
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 1731
    :cond_6
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 1732
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    .line 1734
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    goto :goto_1

    .line 1737
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1738
    iget-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long p2, v3, v5

    if-ltz p2, :cond_9

    .line 1739
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p1

    move p3, p1

    .line 1740
    :cond_8
    iput-wide v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_1

    :cond_9
    const/high16 p3, -0x40800000    # -1.0f

    :goto_1
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_15

    .line 1746
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1747
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto/16 :goto_7

    .line 1654
    :cond_a
    :goto_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_b

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    const-wide/16 v3, 0x0

    if-eq p1, p2, :cond_10

    .line 1655
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_c

    goto :goto_5

    .line 1680
    :cond_c
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1681
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_d

    return-void

    .line 1684
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_15

    .line 1686
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1687
    instance-of v0, p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v0, :cond_f

    .line 1688
    check-cast p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1689
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1690
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1691
    :cond_e
    invoke-virtual {p3, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1656
    :cond_10
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_6
    if-ge p3, p2, :cond_13

    .line 1658
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1659
    instance-of v6, v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v6, :cond_12

    .line 1660
    check-cast v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1661
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 1662
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1663
    :cond_11
    invoke-virtual {v5, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 1667
    :cond_13
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_15

    .line 1668
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1669
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1670
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    goto :goto_7

    .line 1671
    :cond_14
    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    if-ne p1, v1, :cond_15

    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_15

    .line 1672
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1673
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastUpdateRewindingPlayerTime:J

    .line 1674
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1675
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    :cond_15
    :goto_7
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1825
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1826
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1827
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1828
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1829
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1830
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1831
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1832
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1833
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1834
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public getContainerViewHeight()I
    .locals 5

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1300
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 1303
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1304
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 1305
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-ne v3, v1, :cond_2

    int-to-float v1, v2

    .line 1306
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 1308
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v1, 0x4

    .line 1309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1310
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1311
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    float-to-int v0, v3

    sub-int/2addr v2, v0

    .line 1317
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 1318
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v0

    .line 1321
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 1872
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    new-instance v10, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 2329
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "player_actionBar"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v9, "player_actionBarTitle"

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2331
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "player_actionBarTitle"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "player_actionBarTitle"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v14, 0x0

    const-string v18, "player_actionBarSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v22, 0x0

    const-string v26, "player_actionBarTitle"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const/16 v21, 0x0

    const-string v26, "chat_inLoader"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v12

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "chat_outLoader"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v5, v4, v12

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "chat_inLoaderSelected"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2340
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v12

    const-string v20, "chat_inMediaIcon"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v5, v4, v12

    const-string v28, "chat_inMediaIconSelected"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2342
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v12

    const-string/jumbo v20, "windowBackgroundWhiteGrayText2"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v5, v4, v12

    const-string v28, "chat_inAudioSelectedProgress"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2344
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v12

    const-string v20, "chat_inAudioProgress"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2346
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-array v4, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v12

    const/16 v24, 0x0

    const-string v28, "dialogBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v16, 0x0

    const-string v20, "player_progressBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v26, 0x0

    const-string v28, "player_progress"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2350
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const-string v20, "player_progressBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2351
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const-string v28, "key_player_progressCachedBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v20, "player_progress"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v23, v4, v5

    const-string v28, "inappPlayerPlayPause"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v3, v4

    const-string v20, "inappPlayerClose"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v9, "player_button"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2358
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "player_buttonActive"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "listSelectorSDK21"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2361
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2362
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "player_button"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "listSelectorSDK21"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2367
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v3, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v16, 0x0

    const-string v19, "Triangle 3"

    const-string v20, "player_button"

    move-object v14, v2

    move-object/from16 v18, v3

    invoke-direct/range {v14 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2368
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v8, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    aput-object v3, v8, v12

    const/4 v6, 0x0

    const-string v9, "Triangle 4"

    const-string v10, "player_button"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2369
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v3, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v18, "Rectangle 4"

    const-string v19, "player_button"

    move-object v13, v2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int v22, v4, v5

    const/16 v23, 0x0

    const-string v27, "listSelectorSDK21"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "player_button"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2373
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v5, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "listSelectorSDK21"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v3, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v15, 0x0

    const-string v18, "Triangle 3"

    const-string v19, "player_button"

    move-object v13, v2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v8, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    aput-object v3, v8, v12

    const/4 v6, 0x0

    const-string v9, "Triangle 4"

    const-string v10, "player_button"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v3, v11, [Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v18, "Rectangle 4"

    const-string v19, "player_button"

    move-object v13, v2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int v22, v4, v5

    const-string v27, "listSelectorSDK21"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "player_background"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "dialogShadowLine"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2384
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v20, "dialogEmptyImage"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v10, "dialogEmptyText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v20, "dialogEmptyText"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v10, "dialogScrollGlow"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v11, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "emptyListPlaceholder"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2394
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "progressCircle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2396
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_time"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_actionBarTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_actionBarTitle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2400
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_time"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2403
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    const-string v18, "key_sheet_scrollUp"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()V
    .locals 2

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 1843
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1844
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void

    .line 1847
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1395
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    add-int/2addr p4, p2

    .line 1396
    invoke-virtual {p3, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 1384
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 1862
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
