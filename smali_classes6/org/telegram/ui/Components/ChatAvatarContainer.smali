.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "ChatAvatarContainer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;
    }
.end annotation


# instance fields
.field public allowDrawStories:Z

.field public allowShorterStatus:Z

.field private animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentAccount:I

.field private currentConnectionState:I

.field currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

.field private emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private isOnline:[Z

.field private largerWidth:I

.field private lastSubtitle:Ljava/lang/CharSequence;

.field private lastSubtitleColorKey:I

.field private lastWidth:I

.field private leftPadding:I

.field private occupyStatusBar:Z

.field private onlineCount:I

.field private overrideSubtitleColor:Ljava/lang/Integer;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private premiumStarDrawable:Landroid/graphics/drawable/Drawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightAvatarPadding:I

.field private rightDrawable2ContentDescription:Ljava/lang/String;

.field private rightDrawableContentDescription:Ljava/lang/String;

.field private rightDrawableIsScamOrVerified:Z

.field private secretChatTimer:Z

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

.field public statusMadeShorter:[Z

.field private storiesForceState:Ljava/lang/Integer;

.field private subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/telegram/ui/ActionBar/SimpleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleAnimation:Landroid/animation/AnimatorSet;

.field private titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/telegram/ui/ActionBar/SimpleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$3yrkLmDGaFzenqli9rFXDHFdERw(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$MQTDgK0tZQODM1O4M4nJnYKznzc(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PegLVVFCN4wtiyh3XCKOFzpPSno(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWBfJaPsGMDCu277mGoUm_bqJ0U(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_s4qf9F1BVpv0VUHYIzymoxNX4(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    .line 170
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x6

    new-array v0, v10, [Lorg/telegram/ui/Components/StatusDrawable;

    .line 87
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    .line 88
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 89
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    const/4 v11, 0x1

    .line 90
    iput-boolean v11, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    const/16 v12, 0x8

    .line 91
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/4 v13, 0x0

    .line 92
    iput v13, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    const/4 v0, -0x1

    .line 95
    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    .line 96
    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    new-array v1, v11, [Z

    .line 101
    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    new-array v1, v11, [Z

    .line 102
    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    .line 106
    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 109
    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    .line 115
    iput-boolean v13, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    .line 682
    iput-boolean v13, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    const/4 v0, 0x0

    .line 683
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 684
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 173
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    .line 176
    :cond_0
    iput-object v9, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 177
    instance-of v14, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v14, :cond_1

    .line 178
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 181
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    move v15, v11

    goto :goto_0

    :cond_2
    move v15, v13

    .line 182
    :goto_0
    new-instance v5, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move-object v10, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x2

    if-nez v14, :cond_3

    .line 239
    instance-of v1, v8, Lorg/telegram/ui/TopicsFragment;

    if-eqz v1, :cond_5

    .line 240
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 241
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 242
    :cond_4
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_5
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrProfilePicture:I

    const-string v3, "AccDescrProfilePicture"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x15

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 247
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v15, :cond_6

    .line 249
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_6
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v6, v7, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 257
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 258
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 259
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 260
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 261
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 263
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setCanHideRightDrawable(Z)V

    .line 264
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 265
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v13, v3, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->useAnimatedSubtitle()Z

    move-result v1

    const/16 v3, 0xe

    const/16 v4, 0xa

    if-eqz v1, :cond_7

    .line 269
    new-instance v14, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v14, v7, v11, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v14, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v15, 0x3e99999a    # 0.3f

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x140

    .line 270
    sget-object v20, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 272
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 273
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 275
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 276
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v13, v13, v3, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 278
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 280
    :cond_7
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v6, v7, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 281
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 282
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 283
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 285
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 286
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v13, v13, v3, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 290
    :goto_1
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x5

    if-eqz v1, :cond_9

    .line 291
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 292
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v1, v5, v4, v8, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 293
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 294
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 295
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 296
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 297
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v4, v7, v9}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move/from16 v1, p3

    .line 300
    iput-boolean v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    .line 302
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;

    invoke-direct {v4, v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz v1, :cond_8

    .line 310
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->SetTimer:I

    const-string v5, "SetTimer"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 312
    :cond_8
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccAutoDeleteTimer:I

    const-string v5, "AccAutoDeleteTimer"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    :cond_9
    :goto_2
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    :cond_a
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v11, v13}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-nez v1, :cond_e

    .line 317
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 318
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_c
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 322
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>(Z)V

    aput-object v5, v4, v13

    .line 323
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>(Z)V

    aput-object v5, v4, v11

    .line 324
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>(Z)V

    aput-object v5, v4, v0

    .line 325
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v4, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v4, v13, v9}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v0, v2

    .line 326
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    const/4 v2, 0x4

    new-instance v4, Lorg/telegram/ui/Components/RoundStatusDrawable;

    invoke-direct {v4, v11}, Lorg/telegram/ui/Components/RoundStatusDrawable;-><init>(Z)V

    aput-object v4, v0, v2

    .line 327
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v2, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;

    invoke-direct {v2, v11}, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;-><init>(Z)V

    aput-object v2, v0, v3

    move v0, v13

    .line 328
    :goto_3
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v3, v2

    if-ge v0, v3, :cond_e

    .line 329
    aget-object v2, v2, v0

    if-eqz v1, :cond_d

    move v3, v11

    goto :goto_4

    :cond_d
    move v3, v13

    :goto_4
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/StatusDrawable;->setIsChat(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 333
    :cond_e
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Ljava/lang/Integer;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->storiesForceState:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private fadeOutToLessWidth(I)V
    .locals 7

    .line 531
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 536
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 538
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v0, 0x12

    .line 539
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/4 v0, 0x3

    .line 540
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 541
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3fa66666    # 1.3f

    .line 542
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableOutside()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v6, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 555
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    .line 559
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 561
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 563
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xe

    .line 565
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 566
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 572
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 582
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 584
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method public static getChatSubtitle(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;I)Ljava/lang/CharSequence;
    .locals 8

    .line 1016
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const-string v1, "OnlineCount"

    const/4 v2, 0x2

    const-string v3, "%s, %s"

    const-string v4, "Members"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_4

    .line 1017
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v0, :cond_4

    .line 1018
    iget-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_1

    if-le p2, v5, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    .line 1020
    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v6

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    new-array p0, v6, [Ljava/lang/Object;

    .line 1022
    invoke-static {v4, v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    new-array p2, v5, [I

    .line 1026
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v0

    .line 1027
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v0, :cond_2

    aput p1, p2, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object p1

    .line 1028
    :goto_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v0, "%d"

    if-eqz p0, :cond_3

    .line 1029
    aget p0, p2, v6

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    aget p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1031
    :cond_3
    aget p0, p2, v6

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Subscribers"

    invoke-static {v2, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    aget p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1035
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p2, :cond_8

    if-nez p1, :cond_5

    .line 1037
    sget p0, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p1, "Loading"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1039
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_6

    .line 1040
    sget p0, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string p1, "MegaLocation"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1041
    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1042
    sget p0, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string p1, "MegaPublic"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1044
    :cond_7
    sget p0, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string p1, "MegaPrivate"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1048
    :cond_8
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1049
    sget p0, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string p1, "ChannelPublic"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1051
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string p1, "ChannelPrivate"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1056
    :cond_a
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1057
    sget p0, Lorg/telegram/messenger/R$string;->YouWereKicked:I

    const-string p1, "YouWereKicked"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1058
    :cond_b
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1059
    sget p0, Lorg/telegram/messenger/R$string;->YouLeft:I

    const-string p1, "YouLeft"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1061
    :cond_c
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_d

    .line 1062
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p1, :cond_d

    .line 1063
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_d
    if-le p2, v5, :cond_e

    if-eqz p0, :cond_e

    new-array p1, v2, [Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    .line 1066
    invoke-static {v4, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v6

    new-array p0, v6, [Ljava/lang/Object;

    invoke-static {v1, p2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v5

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_e
    new-array p1, v6, [Ljava/lang/Object;

    .line 1068
    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$fadeOutToLessWidth$3()V
    .locals 2

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fadeOutToLessWidth$4()V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 577
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowDrawStories:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onAvatarClick()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 251
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    .line 303
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz p2, :cond_0

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openSetTimer()Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 318
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    return-void
.end method

.method private setTypingAnimation(Z)V
    .locals 7

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 815
    :try_start_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v3, v3, p1

    const-string v4, "**oo**"

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 826
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    if-ne v1, p1, :cond_2

    .line 828
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusDrawable;->start()V

    goto :goto_2

    .line 830
    :cond_2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 834
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 837
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 838
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 840
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 841
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method private updateCurrentConnectionState()V
    .locals 5

    .line 1266
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1267
    sget v0, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v3, "WaitingForNetwork"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1269
    sget v0, Lorg/telegram/messenger/R$string;->Connecting:I

    const-string v3, "Connecting"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 1271
    sget v0, Lorg/telegram/messenger/R$string;->Updating:I

    const-string v3, "Updating"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 1273
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingToProxy:I

    const-string v3, "ConnectingToProxy"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_7

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1277
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_5

    .line 1278
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1279
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1281
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1282
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    if-ltz v0, :cond_d

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1286
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v3, :cond_d

    .line 1287
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v1, v4

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1288
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1290
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1291
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    if-ltz v0, :cond_d

    .line 1292
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1298
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_a

    .line 1299
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    .line 1300
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1302
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 1304
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_1

    .line 1306
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1309
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v2, :cond_d

    .line 1310
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_b

    .line 1311
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1313
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto :goto_1

    .line 1317
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_d
    :goto_1
    return-void
.end method


# virtual methods
.method public checkAndUpdateAvatar()V
    .locals 12

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1131
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    .line 1134
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v6, v0

    move-object v1, v4

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    move-object v6, v4

    goto :goto_0

    :cond_2
    move-object v6, v0

    :goto_0
    const/16 v0, 0x15

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v6, :cond_7

    .line 1142
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 1143
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1147
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v4, v4, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1149
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1150
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1151
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1153
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v4, v4, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1155
    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1159
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v4, v4, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1161
    :cond_5
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1165
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v4, v4, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_2

    .line 1168
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1170
    iget-object v5, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_b

    .line 1174
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1175
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v3, :cond_9

    .line 1177
    iget v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1178
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1179
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v4, v4, v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 1182
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1184
    :cond_9
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v1, :cond_a

    const/16 v0, 0x10

    :cond_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1245
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    .line 1246
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 1247
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    if-eq p2, p1, :cond_4

    .line 1248
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1249
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    goto :goto_0

    .line 1251
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_3

    .line 1252
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1256
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1258
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 1259
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    .line 1260
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getLastSubtitleColorKey()I
    .locals 1

    .line 1076
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    return v0
.end method

.method public getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 1

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object v0
.end method

.method public getSubtitlePaint()Landroid/text/TextPaint;
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSubtitleTextView()Landroid/view/View;
    .locals 1

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-object v0

    .line 795
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .locals 1

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideSubtitle()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideTimeItem(Z)V
    .locals 3

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 658
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 1215
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1216
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1218
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1220
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1221
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    .line 1223
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_2
    return-void
.end method

.method protected onAvatarClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v0, :cond_0

    .line 807
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1230
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 1232
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1235
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1238
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1329
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 1330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\n"

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_2

    .line 1339
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1340
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_3

    .line 1341
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1343
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1344
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 1345
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    sget v2, Lorg/telegram/messenger/R$string;->OpenProfile:I

    const-string v3, "OpenProfile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 589
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    const/16 p2, 0x2a

    .line 590
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p4, 0x0

    const/16 p5, 0x15

    if-lt p3, p5, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    add-int/2addr p1, p3

    .line 591
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p3, p5, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    .line 592
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x36

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    :cond_1
    add-int/2addr p2, p4

    iget p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    add-int/2addr p2, p3

    .line 593
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 594
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2

    .line 595
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const p5, 0x3fa66666    # 1.3f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p3, :cond_3

    .line 597
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr v1, p5

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 600
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p5, 0xb

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p3, :cond_3

    .line 602
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr v1, p5

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 605
    :cond_3
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    .line 606
    iget p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/16 p5, 0x10

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p4, p5

    const/16 p5, 0xf

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x31

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 608
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p4, 0x18

    if-eqz p3, :cond_5

    .line 609
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 610
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p3, :cond_6

    .line 611
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 613
    :cond_6
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_7

    .line 615
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p2, p5, v0, p1}, Landroid/view/View;->layout(IIII)V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x36

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 508
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v4, 0x2a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 509
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v4, -0x80000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/view/View;->measure(II)V

    .line 510
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x14

    if-eqz v3, :cond_1

    .line 511
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 512
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v3, :cond_2

    .line 513
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    .line 515
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/16 v3, 0x22

    .line 516
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 518
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 519
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    if-eq p2, p1, :cond_4

    if-le p2, p1, :cond_4

    .line 520
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->fadeOutToLessWidth(I)V

    .line 522
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_6

    .line 524
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    add-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 525
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 527
    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    return-void
.end method

.method public openProfile(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(ZZ)V

    return-void
.end method

.method public openProfile(ZZ)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 429
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move p1, v0

    .line 432
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 434
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 437
    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 438
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 439
    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    instance-of v6, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v6, :cond_2

    .line 440
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v3, v4, v0}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    :cond_2
    const/4 v3, 0x2

    const-string v4, "chat_id"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_9

    .line 445
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 446
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    const-string v8, "dialog_id"

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    invoke-virtual {v2, v8, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0x8

    new-array p2, p1, [I

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-static {v1, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    new-instance p1, Lorg/telegram/ui/Components/MediaActivity;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 451
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 452
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 454
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const-string v7, "user_id"

    if-ne v0, v6, :cond_5

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v0

    const-string v6, "saved"

    .line 456
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-ltz v6, :cond_4

    .line 458
    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    neg-long v0, v0

    .line 460
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 463
    :cond_5
    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 468
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->hasReportSpam()Z

    move-result v0

    const-string v1, "reportSpam"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    const-string v1, "actionBarColor"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 471
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v5

    .line 473
    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 475
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_e

    .line 478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 480
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    const-string v2, "topic_id"

    if-ne v1, v6, :cond_a

    .line 481
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 482
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v4, :cond_b

    .line 483
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 485
    :cond_b
    :goto_2
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    if-eqz p2, :cond_d

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    move v3, v5

    .line 488
    :goto_3
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 490
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_e
    :goto_4
    return-void
.end method

.method public openSetTimer()Z
    .locals 12

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0xd

    .line 358
    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showTimerHint()V

    :cond_1
    return v1

    .line 364
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 365
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 368
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 370
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 374
    new-instance v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 399
    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->updateItems(I)V

    .line 401
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$3;

    iget-object v4, v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x2

    invoke-direct {v0, p0, v4, v5, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;II)V

    aput-object v0, v3, v1

    .line 410
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 411
    aget-object v0, v3, v1

    const/16 v4, 0xdc

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 412
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 413
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 414
    aget-object v0, v3, v1

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 415
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 416
    iget-object v0, v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v4, 0x3e8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 417
    aget-object v0, v3, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 418
    aget-object v0, v3, v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 419
    aget-object v0, v3, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return v2
.end method

.method public setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1083
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1089
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    goto :goto_1

    :cond_1
    const/16 p1, 0x15

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_2
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 620
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    return-void
.end method

.method public setOverrideSubtitleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    return-void
.end method

.method public setRightAvatarPadding(I)V
    .locals 0

    .line 624
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    return-void
.end method

.method public setStoriesForceState(Ljava/lang/Integer;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->storiesForceState:Ljava/lang/Integer;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_2

    .line 776
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 779
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    return-void
.end method

.method public setTime(IZ)V
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 670
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-nez v0, :cond_1

    return-void

    .line 675
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->showTimeItem(Z)V

    .line 676
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 699
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;ZZZZLorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;ZZZZLorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 704
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 707
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v1

    .line 708
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    and-int/2addr p5, v4

    .line 711
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x0

    if-nez p2, :cond_5

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    .line 722
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 723
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 724
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 725
    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 726
    new-instance p4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p4, p2, p3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 729
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string p3, "AccDescrVerified"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    goto :goto_3

    .line 730
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/ScamDrawable;

    if-eqz p2, :cond_6

    .line 731
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 732
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 733
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    goto :goto_3

    .line 713
    :cond_5
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/ScamDrawable;

    if-nez p3, :cond_6

    .line 714
    new-instance p3, Lorg/telegram/ui/Components/ScamDrawable;

    const/16 p4, 0xb

    xor-int/2addr p2, v3

    invoke-direct {p3, p4, p2}, Lorg/telegram/ui/Components/ScamDrawable;-><init>(II)V

    .line 715
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 716
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 718
    sget p2, Lorg/telegram/messenger/R$string;->ScamMessage:I

    const-string p3, "ScamMessage"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 719
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    :cond_6
    :goto_3
    const-wide/16 p2, 0x0

    if-nez p5, :cond_8

    .line 735
    invoke-static {p6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v3

    cmp-long p4, v3, p2

    if-eqz p4, :cond_7

    goto :goto_4

    .line 766
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    goto/16 :goto_7

    .line 736
    :cond_8
    :goto_4
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz p4, :cond_9

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 737
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p4, :cond_9

    .line 738
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p4, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 740
    invoke-static {p6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-eqz p2, :cond_a

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {p6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_6

    :cond_a
    if-eqz p5, :cond_f

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_5
    if-nez v1, :cond_d

    .line 746
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_c

    .line 748
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->updateTitleIconsPublic()V

    :cond_c
    return-void

    .line 752
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_e

    .line 753
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 756
    :cond_e
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 757
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, p1, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_6

    .line 759
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, p1, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 761
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 764
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrPremium:I

    const-string p2, "AccDescrPremium"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    :goto_7
    return-void
.end method

.method public setTitleColors(II)V
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleExpand(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 341
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 342
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 690
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMuted:I

    const-string v0, "NotificationsMuted"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 692
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 694
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 1094
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 1099
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1100
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1101
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1102
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1107
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1108
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1111
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 1112
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1113
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1114
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1118
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1119
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showTimeItem(Z)V
    .locals 3

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 637
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    if-eqz v0, :cond_0

    .line 1363
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public updateOnlineCount()V
    .locals 8

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1192
    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 1193
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1197
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 1198
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    const/16 v4, 0xc8

    if-eqz v3, :cond_2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v5, v4, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_6

    .line 1206
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-le v1, v4, :cond_6

    .line 1207
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    goto :goto_1

    .line 1199
    :cond_3
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1200
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1201
    iget v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1202
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_5

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v4, v2, :cond_4

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    :cond_4
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v4, 0x2710

    if-le v3, v4, :cond_5

    .line 1203
    iget v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSubtitle()V
    .locals 1

    const/4 v0, 0x0

    .line 847
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    return-void
.end method

.method public updateSubtitle(Z)V
    .locals 13

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 855
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 856
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 857
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 861
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 862
    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_4

    const-string v7, "..."

    .line 864
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_4
    const-wide/16 v7, 0xb4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v5, :cond_a

    .line 868
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-boolean v12, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_5

    goto/16 :goto_2

    .line 956
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 959
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    .line 961
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 962
    iput-object v11, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    .line 965
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    .line 966
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v3, [F

    aput v10, v11, v4

    .line 967
    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v4

    .line 968
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v6

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v4

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v3

    .line 966
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$6;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 978
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 979
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 984
    :cond_8
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 985
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitlePaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v5, v0, v1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_9
    move-object v6, v5

    .line 988
    :goto_1
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    goto/16 :goto_8

    .line 869
    :cond_a
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v5, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v5, :cond_e

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 873
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 875
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 876
    iput-object v11, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_c
    const v0, 0x411b3333    # 9.7f

    if-eqz p1, :cond_d

    .line 879
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    .line 880
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v3, [F

    .line 881
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 882
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v10, v5, v4

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v3

    .line 880
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$5;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 900
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 901
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 902
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    .line 906
    :cond_e
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 907
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v5

    if-ne v5, v2, :cond_10

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SavedMessagesController;->getMessagesCount(J)I

    move-result v0

    .line 909
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "SavedMessagesCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_f
    :goto_4
    move v3, v4

    goto/16 :goto_8

    .line 910
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v2, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v5, :cond_13

    if-eqz v1, :cond_13

    .line 911
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 914
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    sub-int/2addr v0, v3

    goto :goto_5

    :cond_11
    move v0, v4

    :goto_5
    if-lez v0, :cond_12

    new-array v1, v3, [Ljava/lang/Object;

    .line 917
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "messages"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 919
    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->TopicProfileStatus:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "TopicProfileStatus"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_16

    .line 922
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 924
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    .line 926
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isInAlbumMode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 927
    sget v0, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 929
    :cond_15
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getChatSubtitle(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    :cond_16
    if-eqz v0, :cond_f

    .line 931
    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 936
    :cond_17
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_4

    .line 938
    :cond_18
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_19

    .line 939
    sget v0, Lorg/telegram/messenger/R$string;->ChatYourSelf:I

    const-string v1, "ChatYourSelf"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v6, v0

    goto/16 :goto_4

    .line 940
    :cond_19
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v5, 0x514c8

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1e

    const-wide/32 v5, 0xbdb28

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1e

    const-wide/32 v5, 0xa719

    cmp-long v1, v1, v5

    if-nez v1, :cond_1a

    goto :goto_7

    .line 942
    :cond_1a
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 943
    sget v0, Lorg/telegram/messenger/R$string;->SupportStatus:I

    const-string v1, "SupportStatus"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 944
    :cond_1b
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_1c

    .line 945
    sget v0, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v1, "Bot"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 947
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aput-boolean v4, v1, v4

    .line 948
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    if-eqz v3, :cond_1d

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    :cond_1d
    invoke-static {v2, v0, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aget-boolean v1, v1, v4

    move-object v6, v0

    move v3, v1

    goto :goto_8

    .line 941
    :cond_1e
    :goto_7
    sget v0, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    const-string v1, "ServiceNotifications"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_8
    if-eqz v3, :cond_1f

    .line 990
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    goto :goto_9

    :cond_1f
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    :goto_9
    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_23

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_21

    .line 993
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-nez p1, :cond_20

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_a

    .line 998
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_a

    .line 1001
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v6, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-nez p1, :cond_22

    .line 1003
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1004
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_a

    .line 1006
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto :goto_a

    .line 1010
    :cond_23
    iput-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    :goto_a
    return-void
.end method

.method protected useAnimatedSubtitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
