.class public Lorg/telegram/ui/Cells/ReactedUserHolderView;
.super Landroid/widget/FrameLayout;
.source "ReactedUserHolderView.java"


# static fields
.field public static STYLE_DEFAULT:I = 0x0

.field public static STYLE_STORY:I = 0x1

.field public static final reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

.field public static final seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field currentAccount:I

.field public dialogId:J

.field overlaySelectorView:Landroid/view/View;

.field public params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field reactView:Lorg/telegram/ui/Components/BackupImageView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field style:I

.field subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 71
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_checks:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(II)V

    sput-object v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    .line 72
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const v7, 0x40b51eb8    # 5.66f

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(IIIIF)V

    sput-object v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 75
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 60
    new-instance v4, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;Z)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 76
    iput v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    move/from16 v4, p2

    .line 77
    iput v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    .line 78
    iput-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 79
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v6, 0x32

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_0

    const/16 v4, 0x30

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    .line 82
    :goto_0
    new-instance v6, Lorg/telegram/ui/Cells/ReactedUserHolderView$2;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/Cells/ReactedUserHolderView$2;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;Landroid/content/Context;I)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    .line 98
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 99
    iget-object v6, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v9, v4

    const v10, 0x800013

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v8, v9

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_1

    .line 101
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 103
    :cond_1
    new-instance v4, Lorg/telegram/ui/Cells/ReactedUserHolderView$3;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Cells/ReactedUserHolderView$3;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 110
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 111
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 112
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 113
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 114
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 115
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v9, 0x1e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 116
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 118
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_3

    const v10, 0x40f51eb8    # 7.66f

    goto :goto_2

    :cond_3
    const v10, 0x40aa8f5c    # 5.33f

    :goto_2
    move/from16 v16, v10

    if-ne v1, v4, :cond_4

    const/high16 v4, 0x42920000    # 73.0f

    goto :goto_3

    :cond_4
    const/high16 v4, 0x425c0000    # 55.0f

    :goto_3
    move/from16 v20, v4

    .line 120
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x37

    const/high16 v17, 0x41400000    # 12.0f

    const/16 v18, 0x0

    move/from16 v15, v20

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v4, v0, v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 123
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v10, 0x3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 124
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0xd

    .line 127
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 128
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 129
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 130
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 131
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v11, v4

    :cond_5
    invoke-virtual {v3, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    sget v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v3, :cond_6

    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_4

    :cond_6
    const/high16 v1, 0x41980000    # 19.0f

    :goto_4
    move/from16 v21, v1

    .line 133
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x37

    const/high16 v22, 0x41a00000    # 20.0f

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const v10, 0x800015

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v14, 0x0

    .line 136
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    .line 139
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 275
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 255
    iget p2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    sget v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_DEFAULT:I

    if-ne p2, v0, :cond_0

    const/16 p2, 0x32

    goto :goto_0

    :cond_0
    const/16 p2, 0x3a

    .line 256
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openStory(JLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setUserReaction(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 246
    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v5, v0

    move-object v6, v3

    goto :goto_0

    .line 248
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v6, v0

    move-object v5, v3

    .line 250
    :goto_0
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    int-to-long v8, v0

    iget-boolean v10, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;JZZ)V

    return-void
.end method

.method public setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;JZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 152
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    const/4 v6, 0x0

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    .line 154
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v4, :cond_3

    .line 155
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2

    .line 160
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 162
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 164
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    if-eqz v1, :cond_5

    .line 166
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    .line 167
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    .line 169
    :cond_5
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    .line 170
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 173
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_6

    .line 175
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    goto :goto_4

    .line 179
    :cond_6
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    :goto_4
    move-object v4, v1

    .line 183
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const-string v8, "50_50"

    invoke-virtual {v1, v7, v8, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eqz p3, :cond_b

    .line 188
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 189
    iget-object v7, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 190
    iget v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v13, :cond_8

    .line 192
    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5, v7, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    .line 193
    iget-object v8, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "40_40_lastreactframe"

    const-string v11, "webp"

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_5

    .line 196
    :cond_8
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v5, v6

    goto :goto_6

    .line 199
    :cond_9
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    iget-wide v8, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 200
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 201
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :goto_5
    move v5, v2

    .line 204
    :goto_6
    sget v7, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v4, p3

    :goto_7
    aput-object v4, v8, v2

    const-string v4, "AccDescrReactedWith"

    invoke-static {v4, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 206
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrPersonHasSeen:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "AccDescrPersonHasSeen"

    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    :goto_8
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-eqz v7, :cond_c

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_c
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0x9

    const/4 v8, 0x0

    if-eqz v7, :cond_f

    .line 216
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p6, :cond_d

    .line 217
    sget-object v7, Lorg/telegram/ui/Cells/ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    goto :goto_9

    :cond_d
    sget-object v7, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->getSpanned(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 218
    iget-object v9, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v7, v3, v6

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 219
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p6, :cond_e

    const/4 v3, -0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_a

    :cond_e
    move v3, v8

    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 220
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p7, :cond_10

    .line 222
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_b

    .line 228
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    :cond_10
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x1e

    if-eqz v5, :cond_11

    move v6, v2

    :cond_11
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 233
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v5, :cond_12

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_c

    :cond_12
    move v3, v8

    :goto_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 234
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_13

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_13

    const/16 v3, 0x24

    goto :goto_d

    :cond_13
    const/16 v3, 0xc

    :goto_d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 235
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v5, :cond_14

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v8, v2

    :cond_14
    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
