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


# static fields
.field private static final speeds:[F


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

.field private lastPlaybackClick:J

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

.field private slidingSpeed:Z

.field private speedHintView:Lorg/telegram/ui/Components/HintView;

.field private speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

.field private timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private wasLight:Z


# direct methods
.method public static synthetic $r8$lambda$DqF1AW90gZCJRL8Ox2_yNEEU3x0(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HI4d1GVEt6E_UDOsttHGEYsA2uE(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$14(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HhbZNH3cmRNoKYJii-HoHzKagi0(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDOd2Ss-GvnpVj8KqfY2p5yaeaI(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$4(Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LKwm900naTUw1MyT2vgsTTltwIE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$11(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QuMbmSoWzDJMYPC5vcsQw0vuSf8(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RohDwe-3jJsHbTm3gT7Kl8qsuog(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SiN7tAep8pBiwpR6I7rebQ-FDHo(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$getThemeDescriptions$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$VAW_7HLeaN8EeVMAo0f6wQWqy8o(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_XRH_ZnfOsNMu1nQwG41QAvLNgc(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dIXC5yF5CStpk5LQMHZyanTkUN8(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$12(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hKZwA-aoZfN_lkcoWh67CjDwK-8(Lorg/telegram/ui/Components/AudioPlayerAlert;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$forwardCloud$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTiy4G9OiVZ36en8h4FHEXKPR7U(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$k2czJATu4hqxqFqQqUzLvcHUBu8(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rL4o3AZNmjO1wKZyYhlWrBZYRPU(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rw-Y2VUTqU7-QDzM9LeLcvI3UNw(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u8PSOOXRhAqUDEP0OYjIy3QTgOA(Lorg/telegram/ui/Components/AudioPlayerAlert;[FLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$5([FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOM7rvoDeEW2YIMxq9azSKs6nW8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 232
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x1

    .line 283
    invoke-direct {v0, v8, v10, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 179
    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v11, 0x5

    new-array v1, v11, [Landroid/view/View;

    .line 192
    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    .line 200
    iput-boolean v10, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    const/4 v12, -0x1

    .line 202
    iput v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    const v1, 0x7fffffff

    .line 208
    iput v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 224
    iput v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 236
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 286
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    goto :goto_0

    .line 290
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 293
    :goto_0
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    .line 295
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    .line 296
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 300
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 301
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 302
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 303
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 304
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 306
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$2;

    invoke-direct {v2, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    .line 471
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 472
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v3, v13, v3, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 474
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$3;

    invoke-direct {v2, v0, v8, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogBackground"

    .line 481
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 482
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 483
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "player_actionBarTitle"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 484
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "player_actionBarSelector"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 486
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v5, "AttachMusic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "player_actionBarSubtitle"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 488
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 489
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v1, :cond_3

    .line 491
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->currentPlaylistIsGlobalSearch()Z

    move-result v2

    if-nez v2, :cond_3

    .line 492
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 493
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
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

    .line 496
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 501
    :cond_1
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 504
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
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

    .line 509
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    :cond_3
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 515
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 546
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 548
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v2, "player_time"

    .line 550
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 551
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 564
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    .line 565
    invoke-virtual {v1, v14}, Landroid/view/View;->setAlpha(F)V

    .line 566
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 568
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    const-string v3, "dialogShadowLine"

    .line 569
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 571
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    .line 582
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$7;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    .line 609
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v15, 0x2c

    const/16 v16, 0x2c

    const/16 v17, 0x35

    const/16 v18, 0x0

    const/16 v19, 0x14

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v4, :cond_4

    move v4, v13

    goto :goto_2

    :cond_4
    const/16 v4, 0x38

    :goto_2
    const/16 v7, 0x14

    add-int/lit8 v20, v4, 0x14

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    const-string v15, "player_button"

    const-string v6, "listSelectorSDK21"

    if-nez v1, :cond_5

    .line 612
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    .line 613
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->chats_pin:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 616
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->pinPlayerButton:Landroid/widget/ImageView;

    const/16 v17, 0x30

    const/16 v18, 0x30

    const/16 v19, 0x35

    const/16 v20, 0x0

    const/16 v21, 0x12

    const/16 v22, 0x12

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$8;

    invoke-direct {v1, v0, v8, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 643
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x33

    const/16 v20, 0x14

    const/16 v21, 0x14

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v4, :cond_6

    move v4, v13

    goto :goto_3

    :cond_6
    const/16 v4, 0x38

    :goto_3
    add-int/lit8 v22, v4, 0x48

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$9;

    invoke-direct {v1, v0, v8, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 679
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x33

    const/16 v20, 0xe

    const/16 v21, 0x2f

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v4, :cond_7

    move v5, v13

    goto :goto_4

    :cond_7
    const/16 v5, 0x38

    :goto_4
    add-int/lit8 v22, v5, 0x48

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$10;

    invoke-direct {v1, v0, v8, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v5, 0x4

    .line 690
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/SeekBarView;->setLineWidth(I)V

    .line 691
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 715
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 716
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v16, -0x1

    const/16 v17, 0x2c

    const/16 v18, 0x33

    const/16 v19, 0x5

    const/16 v20, 0x43

    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v3, v14}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v4, 0x443b8000    # 750.0f

    .line 720
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 721
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 719
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 722
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 724
    new-instance v1, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 725
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v3, "player_progressBackground"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 727
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v3, "player_progress"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v17, 0x2

    const/16 v19, 0x15

    const/16 v20, 0x5a

    const/16 v21, 0x15

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0xc

    .line 731
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 732
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, "0:00"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 734
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 735
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v16, 0x64

    const/16 v17, -0x2

    const/16 v19, 0x14

    const/16 v20, 0x62

    const/16 v21, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    .line 738
    invoke-virtual {v1, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 739
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 741
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 742
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v18, 0x35

    const/16 v19, 0x0

    const/16 v20, 0x60

    const/16 v21, 0x14

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v16, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v14, v4

    const/4 v12, 0x2

    move/from16 v4, v16

    const/4 v11, 0x4

    move/from16 v5, v17

    move-object/from16 v24, v6

    move/from16 v6, v18

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 745
    invoke-virtual {v14, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 746
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 747
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xe0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 748
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    const-string v3, "AccDescrPlayerSpeed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 756
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/SpeedIconDrawable;-><init>(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x3

    new-array v1, v14, [F

    .line 757
    fill-array-data v1, :array_0

    .line 758
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/high16 v3, 0x40c00000    # 6.0f

    .line 759
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setRoundRadiusDp(F)V

    .line 760
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setDrawShadow(Z)V

    .line 761
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 765
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    const-string v6, "SpeedSlow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v13, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v13

    .line 766
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    const-string v6, "SpeedNormal"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v10

    .line 767
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_medium:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedMedium:I

    const-string v6, "SpeedMedium"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v12, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v12

    .line 768
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedFast:I

    const-string v6, "SpeedFast"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v14, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v14

    .line 769
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_veryfast:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    const-string v6, "SpeedVeryFast"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v11, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v11

    .line 770
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedSuperFast:I

    const-string v6, "SpeedSuperFast"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v3, v2, v6

    .line 771
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    .line 772
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v13, v10, v13, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 774
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 775
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x190

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 776
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 777
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v25, 0x24

    const/16 v26, 0x24

    const/16 v27, 0x35

    const/16 v28, 0x0

    const/16 v29, 0x56

    const/16 v30, 0x14

    const/16 v31, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;[F)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 805
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    .line 807
    new-instance v6, Lorg/telegram/ui/Components/AudioPlayerAlert$12;

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v25, -0x1

    const/16 v26, 0x42

    const/16 v27, 0x33

    const/16 v29, 0x6f

    const/16 v30, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v12, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, v18

    move-object v11, v6

    move/from16 v6, v21

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    aput-object v12, v17, v13

    .line 821
    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 823
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 824
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v12, v7, :cond_9

    .line 825
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v6, v24

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    move-object/from16 v6, v24

    .line 827
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v5, 0x30

    const/16 v4, 0x33

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatSong:I

    const-string v13, "RepeatSong"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 833
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatList:I

    const-string v13, "RepeatList"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x4

    invoke-virtual {v1, v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 834
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    sget v3, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v13, "ShuffleList"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 835
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    sget v3, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v13, "ReverseOrder"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 836
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 838
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 870
    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    .line 871
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 873
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$13;

    invoke-direct {v3, v0, v8, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object v3, v2, v10

    .line 1006
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1007
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->player_prev:I

    const/16 v14, 0x14

    invoke-virtual {v2, v3, v14, v14}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1008
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Triangle 3.**"

    invoke-virtual {v2, v14, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1009
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Triangle 4.**"

    invoke-virtual {v2, v14, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1010
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Rectangle 4.**"

    invoke-virtual {v2, v14, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    if-lt v12, v7, :cond_a

    .line 1012
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/16 v21, 0x16

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v14, v10, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v11, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    const-string v14, "AccDescrPrevious"

    invoke-static {v14, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const/4 v14, 0x2

    aput-object v7, v2, v14

    .line 1018
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1019
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v14, 0x1c

    invoke-direct {v7, v14}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v7

    xor-int/2addr v7, v10

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v14}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 1021
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v2, 0x15

    if-lt v12, v2, :cond_b

    .line 1023
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    const/16 v14, 0x18

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7, v10, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v11, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget-object v7, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    invoke-direct {v7, v0, v8, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    aput-object v7, v2, v1

    .line 1129
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1130
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x14

    invoke-virtual {v1, v3, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1131
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 3.**"

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 4.**"

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Rectangle 4.**"

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1134
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const/16 v7, 0x15

    if-lt v12, v7, :cond_c

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x16

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1138
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Next:I

    const-string v3, "Next"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, v21

    move v5, v13

    move-object v13, v6

    move/from16 v6, v22

    move v10, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    aput-object v15, v14, v1

    const/4 v1, 0x0

    .line 1142
    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 1143
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1145
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x9d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    if-lt v12, v10, :cond_d

    .line 1148
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

    .line 1150
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x33

    const/16 v3, 0x30

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v4, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v5, "Forward"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x60

    .line 1153
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1154
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getAdditionalYOffset()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    sget v5, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1157
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v5, "ShareFile"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1158
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v4, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v5, "SaveToMusic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1159
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v4, Lorg/telegram/messenger/R$string;->ShowInChat:I

    const-string v5, "ShowInChat"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1160
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 1161
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 1163
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1165
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 1166
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1167
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1168
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1169
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    sget-object v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1172
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    .line 1173
    sget v5, Lorg/telegram/messenger/R$drawable;->music_empty:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1174
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "dialogEmptyImage"

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1175
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v5, "dialogEmptyText"

    .line 1178
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1179
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1180
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoAudioFound:I

    const-string v6, "NoAudioFound"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1182
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1183
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1184
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

    .line 1186
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const-string v6, "dialogEmptyText"

    .line 1187
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1189
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1190
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1191
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/4 v13, 0x6

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$15;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$15;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    .line 1230
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1231
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1232
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1234
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-direct {v2, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1236
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1237
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1242
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1284
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1285
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1287
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0xb3

    const/16 v5, 0x53

    const/4 v6, -0x1

    invoke-static {v6, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v5

    const/16 v7, 0x53

    invoke-direct {v3, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xb3

    .line 1290
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1291
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    const/4 v3, 0x3

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1294
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$17;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1304
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1307
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x1

    .line 1308
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 1309
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1310
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1311
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1312
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

    .line 1314
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1315
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 1316
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/lang/Runnable;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->inFullSize:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AudioPlayerAlert;ZZ)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/LaunchActivity;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->draggingSeekBar:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/AudioPlayerAlert;)[Landroid/view/View;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 118
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/String;)I
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 2042
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2043
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 2049
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2051
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

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 2052
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 2053
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 2054
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 2055
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 2057
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2059
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 2061
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 2062
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2064
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private checkSpeedHint()V
    .locals 6

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1441
    iget-wide v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastPlaybackClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1442
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "speedhint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/16 v2, -0xa

    .line 1447
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ltz v2, :cond_1

    .line 1449
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showSpeedHint()V

    .line 1452
    :cond_1
    iput-wide v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastPlaybackClick:J

    return-void
.end method

.method private equals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 1483
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private forwardCloud()V
    .locals 3

    .line 132
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 139
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 141
    new-instance v2, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {v2, v1, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 143
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

    .line 2164
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2165
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2166
    :goto_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 2170
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 2172
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2174
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 13

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 137
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

.method private synthetic lambda$getThemeDescriptions$16()V
    .locals 6

    .line 2380
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v1, "player_actionBarTitle"

    .line 2381
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2383
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2384
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "listSelectorSDK21"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2386
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "player_button"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2387
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2389
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progressBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2390
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progress"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 2392
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 2393
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2397
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 618
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->hasPreferenceKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 619
    sget p1, Lorg/telegram/messenger/R$string;->music_pinned_player_enabled_toast:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 621
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updatePinnedPlayerVisible()V

    .line 625
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 0

    .line 1161
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static synthetic lambda$new$11(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$12(Landroid/view/View;I)V
    .locals 0

    .line 1238
    instance-of p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz p1, :cond_0

    .line 1239
    check-cast p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->didPressedButton()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setBufferedProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 750
    sget-object v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    aget p1, v0, p1

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 754
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 2

    .line 762
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    .line 763
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->getSpeed(F)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    return-void
.end method

.method private synthetic lambda$new$5([FLandroid/view/View;)V
    .locals 5

    .line 779
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    .line 781
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const v3, 0x3dcccccd    # 0.1f

    sub-float v3, p2, v3

    .line 782
    aget v4, p1, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v2, v0

    .line 788
    array-length p2, p1

    if-lt v2, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 791
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    aget p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 793
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkSpeedHint()V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 3

    .line 796
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    .line 798
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setBackgroundColor(I)V

    .line 799
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    .line 800
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const p2, 0x3e19999a    # 0.15f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDimMenu(F)V

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    .line 802
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "speedhint"

    const/16 v1, -0xf

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 0

    .line 829
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$8(I)V
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

    .line 853
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v1, :cond_1

    .line 854
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 856
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 859
    :cond_2
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v0, :cond_3

    .line 860
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 862
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 840
    :cond_4
    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v3, :cond_5

    if-eq p1, v1, :cond_6

    .line 841
    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v1, :cond_7

    if-ne p1, v0, :cond_7

    .line 842
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    goto :goto_1

    .line 844
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    .line 846
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 847
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eq v3, p1, :cond_8

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 849
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    .line 866
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 867
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    .line 1027
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1030
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1031
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 1033
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

.method private static synthetic lambda$onSubItemClick$13(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$onSubItemClick$14(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1546
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

    .line 1557
    :cond_0
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 1558
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "scrollToTopOnResume"

    .line 1559
    invoke-virtual {v1, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1560
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1561
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1562
    :cond_1
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "user_id"

    .line 1563
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    neg-long v3, v3

    const-string v5, "chat_id"

    .line 1565
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1567
    :goto_0
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1568
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1569
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v3, v15, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1570
    invoke-virtual {v3, v15, v12}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1572
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_3

    .line 1547
    :cond_4
    :goto_1
    invoke-virtual {v13, v12}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    move v11, v2

    .line 1548
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 1549
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p4, :cond_5

    .line 1551
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

    .line 1553
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

    .line 1555
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_3
    return v15
.end method

.method private synthetic lambda$onSubItemClick$15()V
    .locals 2

    .line 1661
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

    .line 1526
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1527
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1531
    :cond_0
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne p1, v2, :cond_1

    .line 1532
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardCloud()V

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 1535
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq p1, v3, :cond_2

    .line 1536
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1538
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onlySelect"

    .line 1539
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const-string v2, "dialogsType"

    .line 1540
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1541
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1542
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 1545
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1577
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1578
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_9

    .line 1584
    :try_start_0
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1585
    new-instance p1, Ljava/io/File;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object p1, v4

    :cond_5
    if-nez p1, :cond_6

    .line 1591
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 1594
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1595
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x18

    const-string v4, "android.intent.extra.STREAM"

    if-lt v0, v3, :cond_7

    .line 1599
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

    .line 1600
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1602
    :catch_0
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1605
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1608
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

    .line 1610
    :cond_8
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    .line 1611
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "OK"

    .line 1612
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "PleaseDownload"

    .line 1613
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1614
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 1617
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_9
    const/4 v3, 0x4

    if-ne p1, v3, :cond_e

    .line 1620
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq p1, v3, :cond_a

    .line 1621
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1624
    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1625
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 1626
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1627
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1628
    :cond_b
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "user_id"

    .line 1629
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 1631
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

    .line 1632
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_d

    const-string v4, "migrated_to"

    .line 1633
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1634
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    :cond_d
    neg-long v1, v1

    const-string v3, "chat_id"

    .line 1636
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1638
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1639
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 1641
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x5

    if-ne p1, v2, :cond_16

    .line 1643
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

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1647
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 1648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1649
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    :cond_11
    move-object v8, p1

    .line 1651
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1652
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 1653
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2

    :cond_12
    move-object v4, p1

    :goto_2
    if-eqz v4, :cond_14

    .line 1658
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :cond_13
    move-object v5, v4

    goto :goto_4

    .line 1659
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

    .line 1661
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

    .line 2181
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    .line 2182
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    .line 2183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-void

    .line 2187
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v3

    .line 2192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    move v4, v6

    :cond_1
    const/4 v5, -0x1

    if-gt v0, v5, :cond_2

    .line 2196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 2199
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v0, :cond_3

    .line 2201
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2204
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_6

    .line 2205
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 2206
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2208
    iget-object v1, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2209
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageLoader;->preloadArtwork(Ljava/lang/String;)V

    goto :goto_1

    .line 2211
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

    .line 1372
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_1

    .line 1378
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1379
    instance-of v5, v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v5, :cond_0

    .line 1380
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 1381
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-gt p1, v3, :cond_1

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 1392
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v0, :cond_2

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    .line 1395
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

    .line 1428
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1429
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    goto :goto_0

    :cond_0
    const-string p2, "actionBarDefaultSubmenuItem"

    .line 1431
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1432
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

    .line 1667
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1670
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1671
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1672
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1673
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

    .line 1674
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 1676
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 1677
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1678
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3e2aaaab

    .line 1679
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1680
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1681
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x7

    .line 1683
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit16 p2, p2, 0xb4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v4, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1685
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$19;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1691
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1692
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

    .line 1694
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 1697
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x3f666666    # 0.9f

    if-eqz p2, :cond_4

    .line 1699
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1700
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$20;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1707
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1708
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

    .line 1710
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1711
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1712
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1713
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1714
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method private showSpeedHint()V
    .locals 9

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1457
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$18;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/4 v1, 0x6

    .line 1468
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const-string v1, "SpeedHint"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_0
    return-void
.end method

.method private startForwardRewindingSeek()V
    .locals 2

    .line 1350
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastRewindingTime:J

    .line 1352
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateCover(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 11

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getNextImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    .line 2138
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2139
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2140
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2141
    iput-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2142
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    goto :goto_2

    .line 2144
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 2145
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2146
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    .line 2147
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v1

    .line 2148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 2149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2150
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

    .line 2152
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    .line 2154
    :cond_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_2
    if-eqz p2, :cond_4

    .line 2159
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->switchImageViews()V

    :cond_4
    return-void
.end method

.method private updateEmptyView()V
    .locals 2

    .line 1367
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

    .line 1368
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1362
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

    .line 1363
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

    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1835
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1836
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v3, 0x7

    .line 1837
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 1838
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

    .line 1841
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 1842
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

    .line 1843
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

    .line 1844
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    .line 1845
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1846
    iput-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1848
    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xb4

    .line 1849
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1850
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz v2, :cond_7

    move v11, v4

    goto :goto_3

    :cond_7
    move v11, v10

    :goto_3
    aput v11, v9, v1

    .line 1851
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarShadow:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    if-eqz v2, :cond_8

    move v10, v4

    :cond_8
    aput v10, v9, v1

    .line 1852
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v3

    .line 1850
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1853
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$21;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$21;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1864
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1866
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1867
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1868
    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    if-eq v5, v0, :cond_a

    .line 1869
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    const/16 v0, 0xd

    .line 1873
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1874
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v0

    .line 1875
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-ne v5, v3, :cond_b

    int-to-float v2, v2

    .line 1876
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 1880
    :cond_b
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v5, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    if-ge v5, v6, :cond_c

    const/4 v5, 0x4

    .line 1881
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 1882
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

    .line 1887
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v4, v6

    if-lez v0, :cond_d

    move v1, v3

    .line 1888
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    if-eq v1, v0, :cond_e

    .line 1889
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_e
    return-void
.end method

.method private updatePlaybackButton(Z)V
    .locals 5

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 1490
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    .line 1491
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setValue(FZ)V

    .line 1492
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    .line 1493
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateColors()V

    .line 1495
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    xor-int/2addr p1, v1

    const/4 v1, 0x0

    .line 1496
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    .line 1498
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_1

    .line 1499
    sget-object v2, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    aget v2, v2, v1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v2, v2, v1

    const-string v3, "featuredStickers_addButtonPressed"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 1502
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v2, v2, v1

    const-string v3, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1993
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 1997
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v0, :cond_a

    .line 1999
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    goto/16 :goto_3

    .line 2002
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    invoke-virtual {v0, v2, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    goto :goto_1

    .line 2006
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v2, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    .line 2010
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    goto :goto_2

    .line 2013
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2014
    iget-wide v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long p2, v5, v7

    if-ltz p2, :cond_6

    .line 2015
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, v2, v5}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p2

    move v2, p2

    .line 2016
    :cond_5
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    cmpl-float p2, v2, v0

    if-eqz p2, :cond_7

    .line 2022
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2023
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_7
    if-eqz v1, :cond_8

    .line 2026
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 2027
    iput p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_3

    .line 2029
    :cond_8
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2032
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    if-eq v0, p2, :cond_9

    .line 2033
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2036
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->updateTimestamps(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V

    :cond_a
    return-void
.end method

.method private updateRepeatButton()V
    .locals 6

    .line 1947
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

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1986
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1988
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOne:I

    const-string v2, "AccDescrRepeatOne"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1949
    :cond_1
    :goto_0
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    .line 1951
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1953
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1955
    :cond_3
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_4

    .line 1957
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1959
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_reverse:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1962
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :goto_1
    if-nez v0, :cond_6

    .line 1964
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-nez v4, :cond_6

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "listSelectorSDK21"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOff:I

    const-string v2, "AccDescrRepeatOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1970
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1971
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1972
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    if-nez v0, :cond_8

    .line 1974
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_7

    .line 1975
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v2, "ShuffleList"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1977
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v2, "ReverseOrder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1980
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

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1479
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    return-void
.end method

.method private updateTitle(Z)V
    .locals 7

    .line 2069
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2070
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2071
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_7

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 2074
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 2077
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v1

    .line 2078
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2079
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const v4, -0x77359400

    if-gt v3, v4, :cond_5

    goto :goto_1

    .line 2082
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 2080
    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2084
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

    .line 2085
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2086
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2087
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2088
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2089
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_3

    .line 2091
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2092
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2093
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2094
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x9d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2096
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/16 v3, 0x60

    .line 2097
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2098
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getAdditionalYOffset()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2102
    :goto_3
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    xor-int/lit8 v3, p1, 0x1

    .line 2103
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    xor-int/lit8 v3, p1, 0x1

    .line 2104
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateCover(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2106
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2107
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2108
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v4, "AccActionPlay"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2110
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2111
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v4, "AccActionPause"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2113
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    .line 2114
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    .line 2115
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2116
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2118
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    .line 2120
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    .line 2121
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

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 2127
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_6
    if-nez p1, :cond_c

    .line 2131
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

    .line 1721
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_b

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_b

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_2

    .line 1764
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_1

    .line 1765
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1766
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1767
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_7

    .line 1769
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    if-ne p1, p2, :cond_2

    .line 1770
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    goto/16 :goto_7

    .line 1771
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    if-ne p1, p2, :cond_3

    .line 1772
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1773
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 1774
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    if-ne p1, p2, :cond_5

    .line 1775
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1776
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1777
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz p1, :cond_16

    .line 1778
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 1779
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1780
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 1781
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_16

    .line 1783
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_0

    .line 1784
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1785
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p2, p1

    invoke-virtual {p3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_7

    .line 1788
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_6

    .line 1789
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1790
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1791
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1792
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    goto/16 :goto_7

    .line 1794
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_16

    .line 1795
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1796
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1797
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 1801
    :cond_7
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 1802
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    .line 1804
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    goto :goto_1

    .line 1807
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1808
    iget-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long p2, v3, v5

    if-ltz p2, :cond_a

    .line 1809
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p1

    move p3, p1

    .line 1810
    :cond_9
    iput-wide v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_1

    :cond_a
    move p3, v0

    :goto_1
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_16

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1817
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto/16 :goto_7

    .line 1722
    :cond_b
    :goto_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_c

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_3

    :cond_c
    move v3, v2

    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    const-wide/16 v3, 0x0

    if-eq p1, p2, :cond_11

    .line 1723
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_d

    goto :goto_5

    .line 1748
    :cond_d
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1749
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_e

    return-void

    .line 1752
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_4
    if-ge p2, p1, :cond_16

    .line 1754
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1755
    instance-of v0, p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v0, :cond_10

    .line 1756
    check-cast p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1757
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1758
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1759
    :cond_f
    invoke-virtual {p3, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1724
    :cond_11
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v2

    :goto_6
    if-ge p3, p2, :cond_14

    .line 1726
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1727
    instance-of v6, v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v6, :cond_13

    .line 1728
    check-cast v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1729
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 1730
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1731
    :cond_12
    invoke-virtual {v5, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 1735
    :cond_14
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_16

    .line 1736
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1737
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1738
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    goto :goto_7

    .line 1739
    :cond_15
    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    if-ne p1, v1, :cond_16

    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_16

    .line 1740
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1741
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastUpdateRewindingPlayerTime:J

    .line 1742
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1743
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    :cond_16
    :goto_7
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1895
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1896
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1897
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1898
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1899
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1900
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1901
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1902
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1903
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1904
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1905
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public getContainerViewHeight()I
    .locals 5

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1324
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 1327
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1328
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 1329
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-ne v3, v1, :cond_2

    int-to-float v1, v2

    .line 1330
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 1332
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v1, 0x4

    .line 1333
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1334
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1335
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    sub-int/2addr v2, v0

    .line 1341
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 1342
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v0

    .line 1345
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 1943
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

    .line 2377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    new-instance v10, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 2400
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogBackground"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v9, "player_actionBarTitle"

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
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

    .line 2403
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

    .line 2404
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v14, 0x0

    const-string v18, "player_actionBarSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v22, 0x0

    const-string v26, "player_actionBarTitle"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2408
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

    .line 2409
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

    .line 2410
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

    .line 2411
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

    .line 2412
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

    .line 2413
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v12

    const-string v20, "windowBackgroundWhiteGrayText2"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
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

    .line 2415
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

    .line 2417
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

    .line 2419
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v16, 0x0

    const-string v20, "player_progressBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v26, 0x0

    const-string v28, "player_progress"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2421
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const-string v20, "player_progressBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const-string v28, "key_player_progressCachedBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v20, "player_progress"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
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

    .line 2426
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v3, v4

    const-string v20, "inappPlayerClose"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v9, "player_button"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "player_buttonActive"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2430
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "listSelectorSDK21"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "player_button"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "listSelectorSDK21"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2435
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
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

    .line 2439
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

    .line 2440
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

    .line 2441
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

    .line 2443
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

    .line 2444
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

    .line 2446
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

    .line 2447
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

    .line 2448
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

    .line 2449
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

    .line 2451
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

    .line 2453
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

    .line 2455
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v20, "dialogEmptyImage"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v10, "dialogEmptyText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2457
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v20, "dialogEmptyText"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v10, "dialogScrollGlow"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2461
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
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

    .line 2464
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "emptyListPlaceholder"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "progressCircle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2467
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2468
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_time"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_actionBarTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_actionBarTitle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "player_time"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2472
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "player_time"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
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

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1915
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void

    .line 1918
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1419
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    add-int/2addr p4, p2

    .line 1420
    invoke-virtual {p3, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 1408
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

    .line 1933
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

.method public updateColors()V
    .locals 4

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_2

    .line 1509
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1510
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "featuredStickers_addButtonPressed"

    goto :goto_0

    :cond_0
    const-string v0, "inappPlayerClose"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 1511
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-eqz v2, :cond_1

    .line 1512
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setColor(I)V

    .line 1514
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1515
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v3, 0x19ffffff

    and-int/2addr v0, v3

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
