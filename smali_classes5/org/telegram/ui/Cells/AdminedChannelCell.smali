.class public Lorg/telegram/ui/Cells/AdminedChannelCell;
.super Landroid/widget/FrameLayout;
.source "AdminedChannelCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private currentAccount:I

.field private currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private deleteButton:Landroid/widget/ImageView;

.field private isLast:Z

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 48
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentAccount:I

    .line 50
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 51
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v4, 0x18

    .line 52
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 53
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    or-int/lit8 v11, v8, 0x30

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v9, p4, 0xc

    move v12, v9

    :goto_1
    const/4 v13, 0x6

    if-eqz v5, :cond_2

    add-int/lit8 v5, p4, 0xc

    move v14, v5

    goto :goto_2

    :cond_2
    move v14, v8

    :goto_2
    const/4 v15, 0x6

    const/16 v9, 0x30

    const/16 v10, 0x30

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_6

    .line 56
    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v5, 0x15

    invoke-direct {v3, v1, v5}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v5, -0x1

    .line 57
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v3, v5, v9, v10}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 58
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 59
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 60
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x18

    const/16 v10, 0x18

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    or-int/lit8 v11, v11, 0x30

    if-eqz v5, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    add-int/lit8 v12, p4, 0x2a

    :goto_4
    const/16 v13, 0x20

    if-eqz v5, :cond_5

    add-int/lit8 v5, p4, 0x2a

    move v14, v5

    goto :goto_5

    :cond_5
    move v14, v8

    :goto_5
    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    const/16 v4, 0x3e

    .line 64
    :goto_6
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 65
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 66
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 67
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_7

    :cond_8
    move v5, v7

    :goto_7
    or-int/lit8 v5, v5, 0x30

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 68
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, -0x1

    const/high16 v10, 0x41a00000    # 20.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    move v11, v6

    goto :goto_8

    :cond_9
    move v11, v7

    :goto_8
    or-int/lit8 v11, v11, 0x30

    if-eqz v5, :cond_a

    int-to-float v12, v4

    goto :goto_9

    :cond_a
    add-int/lit8 v12, p4, 0x49

    int-to-float v12, v12

    :goto_9
    const/high16 v13, 0x41180000    # 9.5f

    if-eqz v5, :cond_b

    add-int/lit8 v5, p4, 0x49

    int-to-float v5, v5

    goto :goto_a

    :cond_b
    int-to-float v5, v4

    :goto_a
    move v14, v5

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xe

    .line 71
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 72
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 73
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    .line 74
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_c

    move v9, v6

    goto :goto_b

    :cond_c
    move v9, v7

    :goto_b
    or-int/lit8 v9, v9, 0x30

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 75
    iget-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, -0x1

    const/high16 v10, 0x41a00000    # 20.0f

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_d

    move v12, v6

    goto :goto_c

    :cond_d
    move v12, v7

    :goto_c
    or-int/lit8 v12, v12, 0x30

    if-eqz v11, :cond_e

    int-to-float v13, v4

    goto :goto_d

    :cond_e
    add-int/lit8 v13, p4, 0x49

    int-to-float v13, v13

    :goto_d
    const/high16 v14, 0x42020000    # 32.5f

    if-eqz v11, :cond_f

    add-int/lit8 v4, p4, 0x49

    :cond_f
    int-to-float v4, v4

    const/high16 v15, 0x40c00000    # 6.0f

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v4

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_13

    .line 78
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    .line 79
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v1, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_panel_clear:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v1, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v1, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    iget-object v1, v0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    const/16 v9, 0x30

    const/16 v10, 0x30

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    move v6, v7

    :cond_10
    or-int/lit8 v11, v6, 0x30

    const/4 v3, 0x7

    if-eqz v2, :cond_11

    move v12, v3

    goto :goto_e

    :cond_11
    move v12, v8

    :goto_e
    const/4 v13, 0x6

    if-eqz v2, :cond_12

    move v14, v8

    goto :goto_f

    :cond_12
    move v14, v3

    :goto_f
    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getStatusTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->isLast:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iput-object p1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 93
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 97
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->isLast:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public update()V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
