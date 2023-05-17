.class final Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;
.super Landroid/widget/FrameLayout;
.source "ReactedUsersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactedUsersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReactedUserHolderView"
.end annotation


# static fields
.field private static final reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

.field private static final seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field currentAccount:I

.field overlaySelectorView:Landroid/view/View;

.field reactView:Lorg/telegram/ui/Components/BackupImageView;

.field rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 400
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_checks:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(II)V

    sput-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    .line 401
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const v7, 0x40b51eb8    # 5.66f

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(IIIIF)V

    sput-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;)V
    .locals 13

    .line 404
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 396
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 405
    iput p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->currentAccount:I

    .line 406
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x22

    .line 409
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x42080000    # 34.0f

    const v4, 0x800013

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance p1, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView$1;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 419
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 427
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x37

    const/high16 v9, 0x425c0000    # 55.0f

    const v10, 0x40aa8f5c    # 5.33f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-direct {p1, p0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xd

    .line 434
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x37

    const/high16 v5, 0x425c0000    # 55.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const v4, 0x800015

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    .line 442
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    const/4 p2, 0x0

    .line 445
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 535
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 543
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 529
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x32

    .line 524
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method setUserReaction(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 454
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 459
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 466
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 469
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 470
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    move-object v1, v4

    .line 473
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v7, "50_50"

    invoke-virtual {v4, v6, v7, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 477
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v4, 0x2

    if-eqz v1, :cond_7

    .line 478
    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 479
    iget-object v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 480
    iget v6, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v12, :cond_4

    .line 482
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    .line 483
    iget-object v7, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const-string v9, "40_40_lastreactframe"

    const-string v10, "webp"

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 486
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v2, v3

    goto :goto_2

    .line 489
    :cond_5
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v6, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->currentAccount:I

    iget-wide v7, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 490
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 491
    iget-object v6, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :goto_1
    move v2, v5

    .line 494
    :goto_2
    sget v6, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :goto_3
    aput-object v0, v7, v5

    const-string v0, "AccDescrReactedWith"

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 496
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrPersonHasSeen:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "AccDescrPersonHasSeen"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 500
    :goto_4
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    if-eqz v1, :cond_8

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    if-eqz v0, :cond_9

    sget-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    goto :goto_5

    :cond_9
    sget-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->getSpanned(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 508
    iget-object v6, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v0, v4, v3

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    if-nez p1, :cond_a

    const/4 p1, -0x1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_6

    :cond_a
    move p1, v1

    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    .line 512
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 516
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x1e

    if-eqz v2, :cond_c

    move v3, v0

    :cond_c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_d

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_d

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_8

    :cond_d
    move v3, v1

    :goto_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_e

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_e

    const/16 v3, 0x24

    goto :goto_9

    :cond_e
    const/16 v3, 0xc

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 519
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v1, v0

    :cond_f
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
