.class Lorg/telegram/ui/MessageSeenView$UserCell;
.super Landroid/widget/FrameLayout;
.source "MessageSeenView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MessageSeenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCell"
.end annotation


# static fields
.field private static seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentAccount:I

.field nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field object:Lorg/telegram/tgnet/TLObject;

.field readView:Landroid/widget/TextView;

.field statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 358
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_checks:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(II)V

    sput-object v0, Lorg/telegram/ui/MessageSeenView$UserCell;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 361
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 348
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->currentAccount:I

    .line 353
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 362
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x12

    .line 363
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 365
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    .line 366
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 372
    new-instance v0, Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StatusBadgeComponent;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 375
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    const/high16 p1, 0x41500000    # 13.0f

    .line 376
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 383
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x22

    const/16 v1, 0x22

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x35

    const/high16 v3, 0x41000000    # 8.0f

    const v4, 0x40ca8f5c    # 6.33f

    const/high16 v5, 0x425c0000    # 55.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v3, 0xd

    const/16 v4, 0x14

    const/16 v5, 0x37

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 388
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x22

    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x13

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x425c0000    # 55.0f

    const v4, 0x40ca8f5c    # 6.33f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v3, 0x37

    const/16 v4, 0x14

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private updateStatus(Z)V
    .locals 4

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->object:Lorg/telegram/tgnet/TLObject;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLObject;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 432
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 433
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 434
    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->object:Lorg/telegram/tgnet/TLObject;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 435
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 436
    iput-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->object:Lorg/telegram/tgnet/TLObject;

    const/4 p1, 0x1

    .line 437
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSeenView$UserCell;->updateStatus(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 448
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onAttachedToWindow()V

    .line 450
    iget v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 455
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onDetachedFromWindow()V

    .line 457
    iget v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 423
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrPersonHasSeen:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AccDescrPersonHasSeen"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x32

    .line 396
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLObject;I)V
    .locals 6

    .line 400
    iput-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->object:Lorg/telegram/tgnet/TLObject;

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0}, Lorg/telegram/ui/MessageSeenView$UserCell;->updateStatus(Z)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v3, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->currentAccount:I

    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 405
    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v5, "50_50"

    invoke-virtual {v3, v2, v5, v4, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 407
    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_0
    if-gtz p2, :cond_1

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x9

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    sget-object v3, Lorg/telegram/ui/MessageSeenView$UserCell;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->getSpanned(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    int-to-long v3, p2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->readView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView$UserCell;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
