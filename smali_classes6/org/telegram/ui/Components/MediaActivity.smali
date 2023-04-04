.class public Lorg/telegram/ui/Components/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;


# instance fields
.field avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private customScreenType:I

.field private dialogId:J

.field mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private topicId:I


# direct methods
.method public static synthetic $r8$lambda$PpsAX86yp4YQ7wxCOY-fhXBLIzM(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->lambda$onGetDebugItems$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$r1UkasCGuOAq1QV-To2G2mMbio0(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->lambda$getThemeDescriptions$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 97
    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method private isMusicType()Z
    .locals 2

    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$getThemeDescriptions$0()V
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    .line 428
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    return-void
.end method

.method private synthetic lambda$onGetDebugItems$1()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->setLearning(Landroid/content/Context;Z)V

    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "actionBarActionModeDefaultSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method private updateMediaCount()V
    .locals 5

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    if-ltz v0, :cond_8

    .line 371
    aget v2, v1, v0

    if-gez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, 0x6

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Photos"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, 0x7

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Videos"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v4

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Media"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Files"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Voice"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Links"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MusicFiles"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    aget v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "GIFs"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 365
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    .line 123
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v14, 0x0

    invoke-direct {v1, v14}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 125
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 126
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/MediaActivity$1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 134
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setColorFilterMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 135
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v12, Lorg/telegram/ui/Components/MediaActivity$2;

    invoke-direct {v12, v15, v2, v13}, Lorg/telegram/ui/Components/MediaActivity$2;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    const/4 v11, 0x1

    .line 176
    iput-boolean v11, v12, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 177
    iput-object v12, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 179
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x12

    .line 181
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 182
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 183
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 185
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    .line 186
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 187
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/16 v6, 0x76

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$3;

    invoke-direct {v0, v15, v2}, Lorg/telegram/ui/Components/MediaActivity$3;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 204
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 205
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v1, 0x15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    .line 206
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotX(F)V

    .line 207
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotY(F)V

    .line 208
    new-instance v9, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 209
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 211
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v16, 0x2a

    const/16 v17, 0x2a

    const/16 v18, 0x33

    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$4;

    invoke-direct {v0, v15, v2, v2}, Lorg/telegram/ui/Components/MediaActivity$4;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->mediaCounterTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v19, 0x76

    const/16 v21, 0x38

    .line 226
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$6;

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    iget-object v7, v15, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    new-instance v6, Lorg/telegram/ui/Components/MediaActivity$5;

    invoke-direct {v6, v15}, Lorg/telegram/ui/Components/MediaActivity$5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    move-object/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v10, p0

    move-object/from16 v11, v21

    move-object/from16 p1, v12

    move/from16 v12, v20

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, p1

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Components/MediaActivity$6;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    .line 286
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 287
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 289
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v17

    .line 291
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v4, v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-wide v4, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 300
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move-object/from16 v6, v24

    .line 301
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    :cond_0
    move-object/from16 v6, v24

    goto :goto_1

    :cond_1
    move-object/from16 v6, v24

    .line 305
    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 308
    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v7, :cond_2

    .line 309
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v7, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v8, "SavedMessages"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 310
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const v4, 0x3f4ccccd    # 0.8f

    .line 311
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 314
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 320
    :cond_3
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 322
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 323
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_0
    move-object v5, v4

    .line 328
    :cond_4
    :goto_1
    invoke-static {v5, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 329
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const-string v8, "50_50"

    invoke-virtual {v7, v4, v8, v6, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 332
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 333
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/messenger/R$string;->SharedContentTitle:I

    const-string v6, "SharedContentTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 336
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 337
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 339
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCalendarItemVisible()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 340
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 342
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 346
    invoke-static {v1, v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    .line 348
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    return-object v3
.end method

.method public getDialogId()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    .line 430
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 431
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "windowBackgroundWhite"

    move-object v0, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v7, "actionBarActionModeDefaultSelector"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v7, "windowBackgroundWhiteBlackText"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v9
.end method

.method public getTopicId()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    return v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    const-string v0, "windowBackgroundWhite"

    .line 440
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "actionBarActionModeDefault"

    .line 442
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 444
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCurrentTabFirst()Z

    move-result p1

    return p1
.end method

.method public mediaCountUpdated()V
    .locals 2

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setNewMediaCounts([I)V

    .line 408
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custom_screen_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-nez v0, :cond_1

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

    invoke-direct {v0, p0, v3, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 111
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v0

    .line 112
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 113
    aput v2, v0, v1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 116
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V

    .line 118
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onGetDebugItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    .line 449
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Disable"

    goto :goto_0

    :cond_0
    const-string v3, "Enable"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shape detector learning debug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 449
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method
