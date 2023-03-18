.class public Lorg/fork/ui/view/PinnedPlayerView;
.super Landroid/widget/FrameLayout;
.source "PinnedPlayerView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private final TAG:I

.field private final actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private final authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private final bottomView:Landroid/widget/FrameLayout;

.field private final buttons:[Landroid/view/View;

.field private final compactMenuGap:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

.field private final coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

.field private currentAudioFinishedLoading:Z

.field private currentFile:Ljava/lang/String;

.field private final durationTextView:Landroid/widget/TextView;

.field private final forwardSeek:Ljava/lang/Runnable;

.field private final header:Landroid/widget/FrameLayout;

.field private lastBufferedPositionCheck:J

.field private lastDuration:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastRewindingTime:J

.field private lastTime:I

.field private lastUpdateRewindingPlayerTime:J

.field private final launchActivity:Lorg/telegram/ui/LaunchActivity;

.field private final nextButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private final optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final playButton:Landroid/widget/ImageView;

.field private final playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private final prevButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private final progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private final repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;

.field private final reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private rewindingForwardPressedCount:I

.field private rewindingProgress:F

.field private rewindingState:I

.field private final rootContainer:Landroid/widget/LinearLayout;

.field private final seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field private final shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private final toggleThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final toggleThemeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final toggleThemeItem2:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final topDividerView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$3SgCaM-d3NNYL7cYMnhKeksAcfA(Lorg/fork/ui/view/PinnedPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$onSubItemClick$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$68Y8zoBfaCJMSv7MaKilumzGD88(Lorg/fork/ui/view/PinnedPlayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98VEjBJxou1VHro_1IipuHSejXA(Lorg/fork/ui/view/PinnedPlayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BopCFZ81ufIDslGkkutXFd2XSn4(Lorg/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$onSubItemClick$8(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CSlRW5CAWhTw34bxKyX6UayjDVM(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$onSubItemClick$7(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OJGu5HvA4NLzdTWMmXadqFqae_0(Lorg/fork/ui/view/PinnedPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$onSubItemClick$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$OKVc94ScRO1HdUAkzmtpkKWVE8Q(Lorg/fork/ui/view/PinnedPlayerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghzJC2YubsydpCqU1gqTo1df8ms(Lorg/fork/ui/view/PinnedPlayerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iiXOENIuGIlrEQxaT0mJgH55woc(Lorg/fork/ui/view/PinnedPlayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sUelyGK3EP8y40khxatem6sUh78(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOHP3zBYooBbE9yJvAjwq2ulye0(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/fork/ui/view/PinnedPlayerView;->lambda$onSubItemClick$6(Lorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 184
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x5

    new-array v10, v9, [Landroid/view/View;

    .line 123
    iput-object v10, v0, Lorg/fork/ui/view/PinnedPlayerView;->buttons:[Landroid/view/View;

    const/high16 v1, -0x40800000    # -1.0f

    .line 124
    iput v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    .line 135
    new-instance v11, Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;

    invoke-direct {v11}, Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;-><init>()V

    iput-object v11, v0, Lorg/fork/ui/view/PinnedPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;

    .line 137
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$1;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/PinnedPlayerView$1;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    .line 185
    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v1

    iput v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->TAG:I

    move-object/from16 v1, p2

    .line 186
    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-object/from16 v1, p3

    .line 187
    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    .line 188
    new-instance v12, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->sun_outline:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0x1c

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v12, v0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "player_button"

    .line 189
    invoke-direct {v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    .line 190
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v14, v1

    .line 192
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->topDividerView:Landroid/view/View;

    const/4 v15, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x33

    .line 193
    invoke-static {v15, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/fork/ui/view/PinnedPlayerView;->rootContainer:Landroid/widget/LinearLayout;

    .line 196
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/fork/ui/view/PinnedPlayerView;->header:Landroid/widget/FrameLayout;

    .line 200
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$2;

    invoke-direct {v1, v0, v8, v8}, Lorg/fork/ui/view/PinnedPlayerView$2;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x33

    const/16 v19, 0x14

    const/16 v20, 0x14

    const/16 v21, 0x72

    const/16 v22, 0x0

    .line 212
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$3;

    invoke-direct {v1, v0, v8, v8}, Lorg/fork/ui/view/PinnedPlayerView$3;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v19, 0xe

    const/16 v20, 0x2f

    .line 227
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$4;

    invoke-direct {v1, v0, v8}, Lorg/fork/ui/view/PinnedPlayerView$4;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    const/16 v16, 0x2c

    const/16 v17, 0x2c

    const/16 v18, 0x35

    const/16 v19, 0x0

    const/16 v20, 0x14

    const/16 v21, 0x3e

    .line 234
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v9, v3

    move-object/from16 v3, v16

    move-object v13, v4

    move/from16 v4, v17

    move-object/from16 v23, v5

    move v5, v12

    move/from16 v6, v18

    const/4 v15, 0x1

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 237
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v9, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const/4 v6, 0x0

    .line 238
    invoke-virtual {v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 239
    invoke-virtual {v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    const/16 v1, 0x9e

    .line 240
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 241
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v9, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 246
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda9;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 247
    sget v5, Lcom/smedialink/common/IdFabric$Menu;->UNPIN_PLAYER:I

    sget v4, Lorg/telegram/messenger/R$drawable;->chats_unpin:I

    sget v3, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    const-string v2, "DialogUnpin"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 248
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_COMPACT:I

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_calls_minimize:I

    sget v6, Lorg/telegram/messenger/R$string;->VoipGroupMinimizeStream:I

    move-object/from16 v18, v2

    const-string v2, "VoipGroupMinimizeStream"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 249
    sget v15, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_THEME:I

    const/4 v6, 0x0

    move/from16 v17, v1

    const/4 v2, 0x0

    invoke-virtual {v9, v15, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v24, 0x30

    const/16 v25, 0x30

    const/16 v26, 0x35

    const/16 v27, 0x0

    const/16 v28, 0x12

    const/16 v29, 0x4

    const/16 v30, 0x0

    .line 250
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$5;

    invoke-direct {v1, v0, v8, v11}, Lorg/fork/ui/view/PinnedPlayerView$5;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    .line 261
    new-instance v9, Lorg/fork/ui/view/PinnedPlayerView$6;

    invoke-direct {v9, v0}, Lorg/fork/ui/view/PinnedPlayerView$6;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const/4 v9, 0x1

    .line 285
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/16 v24, -0x1

    const/16 v25, 0x26

    const/16 v26, 0x33

    const/16 v27, 0x5

    const/16 v28, 0x46

    const/16 v29, 0x5

    .line 286
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v13, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v1, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v9, 0x4

    .line 289
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const/16 v25, 0x2

    const/16 v27, 0x15

    const/16 v28, 0x5a

    const/16 v29, 0x15

    .line 290
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xc

    .line 293
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const-string v2, "0:00"

    .line 294
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 295
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/4 v2, 0x2

    .line 296
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/16 v24, 0x64

    const/16 v25, -0x2

    const/16 v27, 0x14

    const/16 v28, 0x62

    const/16 v29, 0x0

    .line 297
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->durationTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v9, 0x1

    .line 300
    invoke-virtual {v1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    .line 301
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    const/16 v24, -0x2

    const/16 v26, 0x35

    const/16 v27, 0x0

    const/16 v28, 0x60

    const/16 v29, 0x14

    .line 303
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x6f

    const/4 v6, -0x1

    .line 305
    invoke-static {v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v9, v23

    invoke-virtual {v9, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v13, Lorg/fork/ui/view/PinnedPlayerView$7;

    invoke-direct {v13, v0, v8}, Lorg/fork/ui/view/PinnedPlayerView$7;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;)V

    iput-object v13, v0, Lorg/fork/ui/view/PinnedPlayerView;->bottomView:Landroid/widget/FrameLayout;

    .line 319
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v31, v17

    move-object v1, v6

    move-object/from16 v32, v18

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move/from16 v33, v3

    move-object/from16 v3, v23

    move/from16 v34, v4

    move/from16 v4, v24

    move/from16 v35, v5

    move/from16 v5, v25

    move-object/from16 v36, v6

    move/from16 v6, v26

    move-object/from16 v23, v9

    move v9, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v1, v36

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x0

    aput-object v1, v10, v7

    .line 320
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 321
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    const/16 v2, 0xa6

    .line 322
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 323
    new-instance v2, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    .line 327
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 328
    new-instance v2, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda8;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 353
    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatSong:I

    const-string v4, "RepeatSong"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    iput-object v2, v0, Lorg/fork/ui/view/PinnedPlayerView;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 354
    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    sget v3, Lorg/telegram/messenger/R$string;->RepeatList:I

    const-string v5, "RepeatList"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    iput-object v2, v0, Lorg/fork/ui/view/PinnedPlayerView;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 355
    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    sget v3, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v5, "ShuffleList"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    iput-object v2, v0, Lorg/fork/ui/view/PinnedPlayerView;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 356
    sget v2, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    sget v3, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v5, "ReverseOrder"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    iput-object v2, v0, Lorg/fork/ui/view/PinnedPlayerView;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v3, 0x30

    const/16 v2, 0x33

    .line 357
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-direct {v1, v0, v8, v14}, Lorg/fork/ui/view/PinnedPlayerView$8;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;F)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object v1, v10, v5

    .line 493
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 494
    sget v4, Lorg/telegram/messenger/R$raw;->player_prev:I

    const/16 v5, 0x14

    invoke-virtual {v1, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 495
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    const-string v7, "AccDescrPrevious"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    aput-object v1, v10, v6

    .line 499
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 500
    new-instance v5, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v7, 0x1c

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v5, v0, Lorg/fork/ui/view/PinnedPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v7

    const/16 v16, 0x1

    xor-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 502
    sget-object v5, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$9;

    invoke-direct {v1, v0, v8, v14}, Lorg/fork/ui/view/PinnedPlayerView$9;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;F)V

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x3

    aput-object v1, v10, v5

    .line 607
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v5, 0x14

    .line 608
    invoke-virtual {v1, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/high16 v4, 0x43340000    # 180.0f

    .line 609
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 610
    sget v4, Lorg/telegram/messenger/R$string;->Next:I

    const-string v5, "Next"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 611
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    const/16 v8, 0x30

    move-object v3, v4

    move v4, v5

    move v5, v12

    const/4 v12, 0x2

    const/16 v17, 0x0

    move v6, v7

    const/4 v8, 0x0

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    aput-object v14, v10, v1

    .line 614
    invoke-virtual {v14, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 615
    invoke-virtual {v14, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 616
    invoke-virtual {v14, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 617
    invoke-virtual {v14, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    move-object/from16 v2, v32

    move/from16 v1, v33

    .line 618
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, v34

    move/from16 v2, v35

    invoke-virtual {v14, v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 619
    sget v1, Lorg/telegram/messenger/R$drawable;->pip_video_expand:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupExpandStream:I

    const-string v3, "VoipGroupExpandStream"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, v31

    invoke-virtual {v14, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x0

    .line 620
    invoke-virtual {v14, v15, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeItem2:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 621
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    move-result-object v1

    iput-object v1, v0, Lorg/fork/ui/view/PinnedPlayerView;->compactMenuGap:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 622
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 623
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v3, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v4, "Forward"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 624
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    sget v3, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 625
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v3, "ShareFile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v12, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 626
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v2, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v3, "SaveToMusic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v14, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 627
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v2, Lorg/telegram/messenger/R$string;->ShowInChat:I

    const-string v3, "ShowInChat"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v14, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    .line 628
    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 629
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    new-instance v1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda9;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 634
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v1, 0x33

    const/16 v2, 0x30

    .line 635
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x42

    const/4 v2, -0x1

    .line 636
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v2, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/fork/ui/view/PinnedPlayerView;)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastRewindingTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/fork/ui/view/PinnedPlayerView;J)J
    .locals 0

    .line 87
    iput-wide p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastRewindingTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/fork/ui/view/PinnedPlayerView;)F
    .locals 0

    .line 87
    iget p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/fork/ui/view/PinnedPlayerView;)[Landroid/view/View;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->buttons:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lorg/fork/ui/view/PinnedPlayerView;F)F
    .locals 0

    .line 87
    iput p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    return p1
.end method

.method static synthetic access$1200(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/fork/ui/view/PinnedPlayerView;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->startForwardRewindingSeek()V

    return-void
.end method

.method static synthetic access$1500(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/fork/ui/view/PinnedPlayerView;)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastUpdateRewindingPlayerTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/fork/ui/view/PinnedPlayerView;J)J
    .locals 0

    .line 87
    iput-wide p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastUpdateRewindingPlayerTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/fork/ui/view/PinnedPlayerView;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingForwardPressedCount:I

    return p0
.end method

.method static synthetic access$302(Lorg/fork/ui/view/PinnedPlayerView;I)I
    .locals 0

    .line 87
    iput p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingForwardPressedCount:I

    return p1
.end method

.method static synthetic access$308(Lorg/fork/ui/view/PinnedPlayerView;)I
    .locals 2

    .line 87
    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingForwardPressedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingForwardPressedCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$500(Lorg/fork/ui/view/PinnedPlayerView;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingState:I

    return p0
.end method

.method static synthetic access$502(Lorg/fork/ui/view/PinnedPlayerView;I)I
    .locals 0

    .line 87
    iput p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingState:I

    return p1
.end method

.method static synthetic access$600(Lorg/fork/ui/view/PinnedPlayerView;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/fork/ui/view/PinnedPlayerView;Ljava/lang/String;)I
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/fork/ui/view/PinnedPlayerView;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastTime:I

    return p0
.end method

.method static synthetic access$900(Lorg/fork/ui/view/PinnedPlayerView;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastDuration:I

    return p0
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 1105
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1106
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 1112
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 1114
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

    .line 1115
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 1116
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 1117
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 1119
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1120
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1122
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 1124
    :cond_5
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 1125
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1127
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;
    .locals 4

    .line 1268
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1270
    :goto_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 1274
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 1276
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1278
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private getCurrentAccount()I
    .locals 1

    .line 1285
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    return v0

    .line 1289
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    return v0
.end method

.method public static getPlayerHeight()I
    .locals 1

    .line 645
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0xb1

    :goto_0
    return v0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1293
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$PinnedPlayerResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateToggleThemeItem()V

    .line 243
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatOptionsMenu()V

    .line 325
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 337
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v2, :cond_1

    .line 338
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_1

    .line 340
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_1

    .line 343
    :cond_2
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v1, :cond_3

    .line 344
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_1

    .line 346
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_1

    .line 330
    :cond_4
    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v3, :cond_5

    if-eq p1, v2, :cond_6

    :cond_5
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v2, :cond_7

    if-ne p1, v1, :cond_7

    .line 331
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    goto :goto_1

    .line 333
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    .line 350
    :goto_1
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatButton()V

    .line 351
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 503
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 507
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 509
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

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 630
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateToggleThemeItem()V

    .line 631
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$onSubItemClick$5()V
    .locals 2

    const/4 v0, 0x1

    .line 915
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerThemeOverridden(Z)V

    .line 916
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerNightThemeEnabled(Z)V

    .line 917
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPinnedPlayerTheme()V

    .line 918
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updatePinnedPlayerColors()V

    return-void
.end method

.method private synthetic lambda$onSubItemClick$6(Lorg/telegram/messenger/MessageObject;J)V
    .locals 12

    .line 921
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    return-void
.end method

.method private static synthetic lambda$onSubItemClick$7(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$onSubItemClick$8(Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 940
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v14, 0x1

    if-gt v0, v14, :cond_4

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->isCustomMultiForward()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 952
    :cond_0
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 953
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "scrollToTopOnResume"

    .line 954
    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 956
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    const-string v3, "enc_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 957
    :cond_1
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "user_id"

    .line 958
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    neg-long v2, v2

    const-string v4, "chat_id"

    .line 960
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 962
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 963
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v15, p0

    .line 964
    iget-object v0, v15, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v2, v14, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {v2, v14, v11}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 967
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_3

    :cond_4
    :goto_1
    move-object/from16 v15, p0

    .line 941
    invoke-virtual {v12, v11}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    .line 942
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 943
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p4, :cond_5

    .line 945
    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

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

    iget-boolean v0, v12, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v1, v12, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, v2

    move/from16 v27, v0

    move/from16 v28, v1

    invoke-virtual/range {v16 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    .line 947
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, v12, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v7, v12, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v9

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move/from16 v17, v10

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    .line 950
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_3
    return v14
.end method

.method private synthetic lambda$onSubItemClick$9()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->bottomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 10

    .line 903
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->UNPIN_PLAYER:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 908
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 909
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updatePinnedPlayerVisible()V

    goto/16 :goto_6

    .line 910
    :cond_1
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_COMPACT:I

    const-wide/16 v3, 0x96

    const/4 v5, 0x1

    if-ne p1, v1, :cond_2

    .line 911
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    xor-int/2addr p1, v5

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerMinimized(Z)V

    .line 912
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 913
    :cond_2
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_THEME:I

    if-ne p1, v1, :cond_3

    .line 914
    new-instance p1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 920
    :cond_3
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne p1, v1, :cond_5

    .line 921
    new-instance p1, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V

    .line 922
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v0, :cond_4

    .line 923
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 924
    new-instance v1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {v1, v0, p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_6

    .line 926
    :cond_4
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    goto/16 :goto_6

    :cond_5
    if-ne p1, v5, :cond_7

    .line 929
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    if-eq p1, v1, :cond_6

    .line 930
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 932
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onlySelect"

    .line 933
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const-string v2, "dialogsType"

    .line 934
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 936
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 937
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    new-instance v0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 939
    new-instance v0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;-><init>(Lorg/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 972
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_6

    :cond_7
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p1, v1, :cond_d

    .line 977
    :try_start_0
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 978
    new-instance p1, Ljava/io/File;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move-object p1, v3

    :cond_9
    if-nez p1, :cond_a

    .line 984
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 987
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 988
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    if-lt v0, v2, :cond_b

    .line 992
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 993
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 998
    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    :goto_0
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    const-string v0, "ShareFile"

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 1003
    :cond_c
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    .line 1004
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "OK"

    .line 1005
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "PleaseDownload"

    .line 1006
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1007
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 1010
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    .line 1013
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    if-eq p1, v1, :cond_e

    .line 1014
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1017
    :cond_e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1018
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 1019
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1020
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v3, "enc_id"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1021
    :cond_f
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "user_id"

    .line 1022
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 1024
    :cond_10
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1025
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_11

    const-string v5, "migrated_to"

    .line 1026
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1027
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v3, v3

    :cond_11
    neg-long v3, v3

    const-string v1, "chat_id"

    .line 1029
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1031
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1a

    .line 1035
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_14

    const/16 v2, 0x1c

    if-le p1, v2, :cond_13

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p1, :cond_14

    :cond_13
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_14

    .line 1036
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1039
    :cond_14
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 1040
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1041
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    :cond_15
    move-object v7, p1

    .line 1043
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_16

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 1045
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_2

    :cond_16
    move-object v3, p1

    :goto_2
    if-eqz v3, :cond_18

    .line 1050
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_3

    :cond_17
    move-object v4, v3

    goto :goto_4

    .line 1051
    :cond_18
    :goto_3
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 1053
    :goto_4
    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView;->launchActivity:Lorg/telegram/ui/LaunchActivity;

    const/4 v6, 0x3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_5

    :cond_19
    const-string p1, ""

    :goto_5
    move-object v8, p1

    new-instance v9, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda5;-><init>(Lorg/fork/ui/view/PinnedPlayerView;)V

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1a
    :goto_6
    return-void
.end method

.method private preloadNeighboringThumbs()V
    .locals 13

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    .line 1134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-void

    .line 1138
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v3

    .line 1143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    const/4 v5, -0x1

    if-gt v0, v5, :cond_2

    .line 1147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1150
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v0, :cond_3

    .line 1152
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_6

    .line 1156
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1157
    invoke-direct {p0, v9}, Lorg/fork/ui/view/PinnedPlayerView;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1159
    iget-object v1, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1160
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageLoader;->preloadArtwork(Ljava/lang/String;)V

    goto :goto_1

    .line 1162
    :cond_4
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v1

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

.method private setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "player_buttonActive"

    .line 1170
    invoke-direct {p0, p2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1171
    invoke-direct {p0, p2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    goto :goto_0

    :cond_0
    const-string p2, "actionBarDefaultSubmenuItem"

    .line 1173
    invoke-direct {p0, p2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1174
    invoke-direct {p0, p2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    :goto_0
    return-void
.end method

.method private startForwardRewindingSeek()V
    .locals 2

    .line 1232
    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastRewindingTime:J

    .line 1234
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    .line 1235
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1236
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateCover(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 11

    .line 1241
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getNextImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    .line 1242
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1243
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1244
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1245
    iput-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1246
    iput-boolean p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentAudioFinishedLoading:Z

    goto :goto_2

    .line 1248
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 1249
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1250
    iput-boolean v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentAudioFinishedLoading:Z

    .line 1251
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v1

    .line 1252
    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 1253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1254
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

    .line 1256
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    .line 1258
    :cond_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1260
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_2
    if-eqz p2, :cond_4

    .line 1263
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->switchImageViews()V

    :cond_4
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1058
    invoke-direct {p0, p1, v0}, Lorg/fork/ui/view/PinnedPlayerView;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 1062
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v0, :cond_9

    .line 1064
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    goto/16 :goto_3

    .line 1067
    :cond_0
    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingState:I

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

    .line 1069
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    goto :goto_1

    .line 1071
    :cond_3
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    .line 1075
    :goto_1
    iget-boolean p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentAudioFinishedLoading:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    goto :goto_2

    .line 1078
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1079
    iget-wide v5, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastBufferedPositionCheck:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long p2, v5, v7

    if-ltz p2, :cond_6

    .line 1080
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p2

    move v1, p2

    .line 1081
    :cond_5
    iput-wide v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastBufferedPositionCheck:J

    goto :goto_2

    :cond_6
    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    cmpl-float p2, v1, v0

    if-eqz p2, :cond_7

    .line 1087
    iget-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setBufferedProgress(F)V

    :cond_7
    if-eqz v2, :cond_8

    .line 1090
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1091
    iput p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move p1, p2

    goto :goto_3

    .line 1093
    :cond_8
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1096
    :goto_3
    iget p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastTime:I

    if-eq p2, p1, :cond_9

    .line 1097
    iput p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastTime:I

    .line 1098
    iget-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_9
    return-void
.end method

.method private updateRepeatButton()V
    .locals 6

    .line 1186
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

    .line 1223
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1224
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1225
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1226
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1227
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOne:I

    const-string v2, "AccDescrRepeatOne"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1188
    :cond_1
    :goto_0
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    .line 1190
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1192
    :cond_2
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_shuffle:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1194
    :cond_3
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_4

    .line 1196
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1198
    :cond_4
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeat_reverse:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 1201
    :cond_5
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :goto_1
    if-nez v0, :cond_6

    .line 1203
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-nez v4, :cond_6

    .line 1204
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1205
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1206
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "listSelectorSDK21"

    invoke-direct {p0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1207
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOff:I

    const-string v2, "AccDescrRepeatOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1209
    :cond_6
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1210
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1211
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    if-nez v0, :cond_8

    .line 1213
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_7

    .line 1214
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ShuffleList:I

    const-string v2, "ShuffleList"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1216
    :cond_7
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    const-string v2, "ReverseOrder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1219
    :cond_8
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatList:I

    const-string v2, "AccDescrRepeatList"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateRepeatOptionsMenu()V
    .locals 5

    .line 1179
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    invoke-direct {p0, v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1180
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    invoke-direct {p0, v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1181
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1182
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    return-void
.end method

.method private updateToggleThemeItem()V
    .locals 4

    .line 895
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    .line 896
    :goto_0
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    if-eqz v0, :cond_2

    .line 897
    sget v0, Lorg/telegram/messenger/R$string;->ThemeDay:I

    const-string v1, "ThemeDay"

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->ThemeNight:I

    const-string v1, "ThemeNight"

    :goto_2
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 899
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeItem2:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->toggleThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 839
    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    if-ne p1, p2, :cond_0

    .line 840
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatButton()V

    goto/16 :goto_2

    .line 841
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_8

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_8

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_1

    goto/16 :goto_1

    .line 855
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_2

    .line 856
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 857
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 858
    invoke-direct {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_2

    .line 860
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_3

    .line 861
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 862
    iget-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 863
    invoke-virtual {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->updateTitle(Z)V

    .line 864
    iput-boolean v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentAudioFinishedLoading:Z

    goto/16 :goto_2

    .line 866
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_b

    .line 867
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 868
    iget-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 869
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 874
    :cond_4
    iget-boolean p2, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentAudioFinishedLoading:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    goto :goto_0

    .line 877
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 878
    iget-wide v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastBufferedPositionCheck:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long p2, v3, v5

    if-ltz p2, :cond_7

    .line 879
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object p3, p0, Lorg/fork/ui/view/PinnedPlayerView;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p1

    move p3, p1

    .line 880
    :cond_6
    iput-wide v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastBufferedPositionCheck:J

    goto :goto_0

    :cond_7
    const/high16 p3, -0x40800000    # -1.0f

    :goto_0
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_b

    .line 886
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/SeekBarView;->setBufferedProgress(F)V

    goto :goto_2

    .line 842
    :cond_8
    :goto_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_9

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->updateTitle(Z)V

    .line 843
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_b

    .line 844
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 845
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 846
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->startForwardRewindingSeek()V

    goto :goto_2

    .line 847
    :cond_a
    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingState:I

    if-ne p1, v1, :cond_b

    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    .line 848
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 849
    iput-wide p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastUpdateRewindingPlayerTime:J

    .line 850
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->forwardSeek:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 851
    iput v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rewindingProgress:F

    :cond_b
    :goto_2
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 834
    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->TAG:I

    return v0
.end method

.method public getRootContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->rootContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 776
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 778
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 779
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 780
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 783
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 784
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 785
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 790
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 792
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 793
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 794
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 797
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 798
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 799
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 800
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 824
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

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

.method public setVisibility(I)V
    .locals 0

    .line 805
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 807
    invoke-virtual {p0, p1}, Lorg/fork/ui/view/PinnedPlayerView;->updateTitle(Z)V

    .line 808
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatButton()V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 14

    .line 727
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatOptionsMenu()V

    .line 728
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->updateRepeatButton()V

    const-string v0, "player_button"

    .line 729
    invoke-direct {p0, v0}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "windowBackgroundWhite"

    .line 730
    invoke-direct {p0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 731
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->topDividerView:Landroid/view/View;

    const-string v2, "divider"

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 732
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "player_actionBarTitle"

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "player_time"

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "listSelectorSDK21"

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 738
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 740
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v4, "actionBarDefaultSubmenuItem"

    invoke-direct {p0, v4}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 741
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v4}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 742
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->pinnedPlayerOptionButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v6, "actionBarDefaultSubmenuBackground"

    invoke-direct {p0, v6}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 743
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const-string v9, "player_progress"

    invoke-direct {p0, v9}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SeekBarView;->setOuterColor(I)V

    .line 744
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 745
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v10, "player_progressBackground"

    invoke-direct {p0, v10}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 746
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {p0, v9}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 747
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 748
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->durationTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 749
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v2, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 750
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 751
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v6}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 752
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v9, 0x16

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v2, v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 753
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 3.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 754
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v10, "Triangle 4.**"

    invoke-virtual {v1, v10, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 755
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v11, "Rectangle 4.**"

    invoke-virtual {v1, v11, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 756
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x18

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v12, v7, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 757
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 758
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v12, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 760
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 761
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v11, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 762
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 764
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v4}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 765
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v4}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 766
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v6}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 767
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->compactMenuGap:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    const-string v1, "graySection"

    invoke-direct {p0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    return-void
.end method

.method public updateTitle(Z)V
    .locals 9

    .line 657
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 658
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 662
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 665
    :cond_3
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 666
    :goto_0
    iput-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 667
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const v4, -0x77359400

    if-gt v3, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    .line 668
    :goto_2
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    const/4 v5, 0x4

    if-nez v4, :cond_8

    if-nez v3, :cond_7

    goto :goto_3

    .line 671
    :cond_7
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 669
    :cond_8
    :goto_3
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 673
    :goto_4
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->header:Landroid/widget/FrameLayout;

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_9

    const/16 v6, 0x8

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->UNPIN_PLAYER:I

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemVisible(IZ)V

    .line 675
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_COMPACT:I

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemVisible(IZ)V

    .line 676
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->PINNED_PLAYER_TOGGLE_THEME:I

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemVisible(IZ)V

    .line 677
    iget-object v4, p0, Lorg/fork/ui/view/PinnedPlayerView;->compactMenuGap:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    if-eqz v6, :cond_b

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_6
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v4, 0x5

    const/4 v6, 0x2

    if-eqz v3, :cond_c

    .line 679
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 680
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 681
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 682
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 683
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 684
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x6d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_8

    .line 685
    :cond_c
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->getCurrentAccount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(J)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 686
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 687
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 688
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 689
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 690
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 691
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x40

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_8

    .line 693
    :cond_d
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 694
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 695
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 696
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 697
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 698
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    if-eqz v4, :cond_e

    const/16 v4, 0x98

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    add-int/lit16 v4, v4, 0xcd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 701
    :goto_8
    invoke-direct {p0, v0}, Lorg/fork/ui/view/PinnedPlayerView;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    xor-int/lit8 v3, p1, 0x1

    .line 702
    invoke-direct {p0, v0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    xor-int/lit8 v3, p1, 0x1

    .line 703
    invoke-direct {p0, v0, v3}, Lorg/fork/ui/view/PinnedPlayerView;->updateCover(Lorg/telegram/messenger/MessageObject;Z)V

    .line 705
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 706
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 707
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v3, "AccActionPlay"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 709
    :cond_f
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 710
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v3, "AccActionPause"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 712
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    .line 714
    iget-object v3, p0, Lorg/fork/ui/view/PinnedPlayerView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/fork/ui/view/PinnedPlayerView;->lastDuration:I

    .line 718
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView;->durationTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    .line 719
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    const-string v0, "-:--"

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    if-nez p1, :cond_12

    .line 722
    invoke-direct {p0}, Lorg/fork/ui/view/PinnedPlayerView;->preloadNeighboringThumbs()V

    :cond_12
    return-void
.end method
