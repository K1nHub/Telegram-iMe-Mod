.class final Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;
.super Landroid/widget/FrameLayout;
.source "ReactedUsersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactedUsersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReactedUserHolderView"
.end annotation


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field overlaySelectorView:Landroid/view/View;

.field reactView:Lorg/telegram/ui/Components/BackupImageView;

.field final synthetic this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;)V
    .locals 11

    .line 377
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    .line 378
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 374
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 379
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x20

    .line 382
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x42100000    # 36.0f

    const v5, 0x800013

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView$1;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactedUsersListView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 392
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "actionBarDefaultSubmenuItem"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x17

    const/high16 v7, 0x42680000    # 58.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    new-instance p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const v6, 0x800015

    const/4 v7, 0x0

    .line 403
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    .line 406
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 457
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x30

    .line 452
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method setUserReaction(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 11

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$600(Lorg/telegram/ui/Components/ReactedUsersListView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 418
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 421
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const-string v5, "50_50"

    invoke-virtual {v2, v4, v5, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 424
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 425
    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 426
    iget-object v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 427
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$600(Lorg/telegram/ui/Components/ReactedUsersListView;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v5

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v10, :cond_2

    .line 429
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v9

    .line 430
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v7, "40_40_lastreactframe"

    const-string/jumbo v8, "webp"

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    goto :goto_1

    .line 436
    :cond_3
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$600(Lorg/telegram/ui/Components/ReactedUsersListView;)I

    move-result v5

    iget-wide v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 437
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :goto_0
    const/4 v1, 0x1

    .line 441
    :goto_1
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    aput-object p1, v5, v3

    const-string p1, "AccDescrReactedWith"

    invoke-static {p1, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 443
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrPersonHasSeen:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "AccDescrPersonHasSeen"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 446
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x1e

    if-eqz v1, :cond_5

    const/16 v4, 0x1e

    :cond_5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
