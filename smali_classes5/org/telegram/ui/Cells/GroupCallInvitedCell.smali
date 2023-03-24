.class public Lorg/telegram/ui/Cells/GroupCallInvitedCell;
.super Landroid/widget/FrameLayout;
.source "GroupCallInvitedCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dividerPaint:Landroid/graphics/Paint;

.field private grayIconColor:Ljava/lang/String;

.field private muteButton:Landroid/widget/ImageView;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 44
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "voipgroup_mutedIcon"

    .line 39
    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->grayIconColor:Ljava/lang/String;

    .line 46
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->dividerPaint:Landroid/graphics/Paint;

    const-string v3, "voipgroup_actionBar"

    .line 47
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 51
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x18

    .line 52
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 53
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    or-int/lit8 v9, v6, 0x30

    const/16 v6, 0xb

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    move v10, v14

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    const/4 v11, 0x6

    if-eqz v3, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v14

    :goto_2
    const/4 v13, 0x0

    const/16 v7, 0x2e

    const/16 v8, 0x2e

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, "voipgroup_nameText"

    .line 56
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 57
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 59
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 60
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, -0x1

    const/16 v7, 0x14

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    move v9, v5

    :goto_4
    or-int/lit8 v9, v9, 0x30

    const/16 v13, 0x36

    const/16 v15, 0x43

    if-eqz v8, :cond_5

    move v10, v13

    goto :goto_5

    :cond_5
    move v10, v15

    :goto_5
    const/16 v11, 0xa

    if-eqz v8, :cond_6

    move v12, v15

    goto :goto_6

    :cond_6
    move v12, v13

    :goto_6
    const/16 v16, 0x0

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v16

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xf

    .line 63
    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 64
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_7

    move v6, v4

    goto :goto_7

    :cond_7
    move v6, v5

    :goto_7
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 65
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 66
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/messenger/R$string;->Invited:I

    const-string v7, "Invited"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 67
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, -0x1

    const/16 v7, 0x14

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    move v9, v4

    goto :goto_8

    :cond_8
    move v9, v5

    :goto_8
    or-int/lit8 v9, v9, 0x30

    if-eqz v8, :cond_9

    move v10, v13

    goto :goto_9

    :cond_9
    move v10, v15

    :goto_9
    const/16 v11, 0x20

    if-eqz v8, :cond_a

    goto :goto_a

    :cond_a
    move v15, v13

    :goto_a
    const/4 v12, 0x0

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v15

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    .line 70
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_invited:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 73
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v14, v14, v2, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 74
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    const/16 v6, 0x30

    const/4 v7, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    or-int/lit8 v8, v4, 0x10

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 131
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 132
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x44

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hasAvatarSet()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setData(ILjava/lang/Long;)V
    .locals 1

    .line 87
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 90
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 93
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void
.end method

.method public setDrawDivider(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->needDivider:Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setGrayIconColor(Ljava/lang/String;I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->grayIconColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->grayIconColor:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x24ffffff

    and-int/2addr p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method
