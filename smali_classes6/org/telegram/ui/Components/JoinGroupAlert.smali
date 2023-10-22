.class public Lorg/telegram/ui/Components/JoinGroupAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "JoinGroupAlert.java"


# instance fields
.field private chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final hash:Ljava/lang/String;

.field private requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private requestTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2DMGEpq7XN7rYexpSVUflXMlRFE(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8tBrcXG2FAP9Bs-5swlEtBGri-Q(Lorg/telegram/ui/Components/JoinGroupAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$AseK4-oUXkiQDAchBqaTq60CJa0(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bj-GrLlJOsYQtaYXgE8NTAlNDJc(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGcgZZ7yTPeCBzUxxcUZfBmFFkw(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJYPrnvMcqVddx78a7kUAwz4zVw(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$4(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkN7_LCXluMTV-Y2BZgcR_uLDOc(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iKKKhJaUXuBoJOv3nMlCWKdmjT8(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vLpLcygyVB1EDraLH_NGQeexylE(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$7(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzlmIe7ih_FW5HzeBgTWJByyEoc(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydK6NKmDSdviYIaI0a0pf7W2i5Y(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$2(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 53
    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 54
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 55
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 56
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    move-object/from16 v5, p4

    .line 58
    iput-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 59
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v5, :cond_0

    .line 60
    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1

    .line 62
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :cond_1
    :goto_0
    move-object/from16 v2, p3

    .line 64
    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    .line 66
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 67
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 70
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v7, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v7, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v7, v6}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 77
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 80
    sget v8, Lorg/telegram/messenger/R$drawable;->ic_layer_close:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v8, 0x8

    .line 82
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 83
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v10, 0x24

    const/16 v11, 0x24

    const v12, 0x800035

    const/4 v13, 0x6

    const/16 v14, 0x8

    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 84
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x2d

    .line 94
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v9, 0x5a

    const/16 v10, 0x5a

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/16 v13, 0x1b

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 95
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    .line 98
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_2

    .line 99
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 100
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 101
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 102
    invoke-virtual {v6, v10, v7, v9}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    move-object v9, v11

    goto :goto_1

    .line 104
    :cond_2
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const-wide/16 v10, 0x0

    .line 105
    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-virtual {v7, v10, v11, v12, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    .line 107
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 108
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 109
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const-string v13, "50_50"

    invoke-virtual {v6, v9, v13, v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v9, v10

    .line 111
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    .line 112
    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    .line 113
    iget-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    .line 114
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    goto :goto_3

    .line 115
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_6

    .line 116
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v10}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 117
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 118
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 119
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 120
    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v11, :cond_5

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    goto :goto_2

    :cond_5
    move v11, v4

    :goto_2
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 121
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v6, v11, v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    .line 122
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 123
    iget-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    .line 124
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    move-object/from16 v24, v10

    move v10, v7

    move-object v7, v9

    move-object/from16 v9, v24

    goto :goto_3

    :cond_6
    move v6, v4

    move v10, v6

    move v11, v10

    move v12, v11

    move-object v7, v9

    .line 127
    :goto_3
    new-instance v13, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v13, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    const-string v14, "fonts/rmedium.ttf"

    .line 128
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v15, 0x14

    .line 129
    invoke-virtual {v13, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 130
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v13, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 131
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v9, 0x11

    .line 132
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x31

    const/16 v18, 0xa

    const/16 v19, 0xa

    const/16 v20, 0xa

    if-lez v12, :cond_7

    move/from16 v21, v4

    goto :goto_4

    :cond_7
    const/16 v21, 0x14

    .line 133
    :goto_4
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v6, :cond_9

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v10, :cond_a

    .line 138
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_9
    :goto_5
    xor-int/2addr v6, v5

    .line 136
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/JoinGroupAlert;->getScamDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_a
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v6, :cond_c

    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v10, :cond_b

    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v10, :cond_d

    :cond_b
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_e

    :cond_d
    move v6, v5

    goto :goto_7

    :cond_e
    move v6, v4

    .line 142
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v5

    .line 144
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41500000    # 13.0f

    .line 145
    invoke-virtual {v11, v5, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 148
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v6, :cond_f

    .line 150
    sget v13, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v4, "ChannelPrivate"

    invoke-static {v4, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 151
    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v13, "MegaPrivate"

    invoke-static {v13, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 149
    :goto_8
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0xa

    if-eqz v10, :cond_10

    const/16 v23, 0x0

    goto :goto_9

    :cond_10
    const/16 v23, 0x14

    .line 153
    :goto_9
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v10, :cond_11

    .line 156
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 160
    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x30

    const/16 v20, 0x18

    const/16 v21, 0xa

    const/16 v22, 0x18

    const/16 v23, 0x14

    .line 161
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/high16 v7, 0x41600000    # 14.0f

    if-eqz v4, :cond_1c

    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v8, :cond_12

    goto/16 :goto_10

    :cond_12
    if-eqz v4, :cond_1f

    .line 236
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 237
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const v6, 0x3f266666    # 0.65f

    const/16 v8, 0x26

    .line 241
    new-instance v10, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    const/16 v11, 0x14

    .line 242
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 243
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    .line 244
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 245
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v3, :cond_13

    .line 247
    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v15, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v10, v11, v13, v15}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    .line 249
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    int-to-float v8, v8

    add-int/lit8 v11, v3, -0x1

    int-to-float v11, v11

    mul-float/2addr v6, v8

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v6, v13

    mul-float/2addr v11, v6

    add-float/2addr v8, v11

    float-to-int v6, v8

    const/16 v18, 0x2c

    const/16 v19, 0x11

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v17, v6

    .line 251
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 254
    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 255
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v3, v5, :cond_14

    .line 260
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v8, 0x0

    invoke-direct {v0, v6, v1, v8}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    move v11, v8

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    const/4 v1, 0x2

    if-ne v3, v1, :cond_15

    .line 262
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersTwo:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 264
    invoke-direct {v0, v6, v4, v8}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 265
    invoke-direct {v0, v6, v4, v5}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v5

    const-string v4, "RequestToJoinMembersTwo"

    .line 262
    invoke-static {v4, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_15
    if-ne v12, v4, :cond_16

    .line 268
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersThree:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 270
    invoke-direct {v0, v6, v10, v8}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v4, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 271
    invoke-direct {v0, v6, v8, v5}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v4, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 272
    invoke-direct {v0, v6, v8, v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v4, v1

    const-string v1, "RequestToJoinMembersThree"

    .line 268
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    goto :goto_c

    :cond_16
    sub-int/2addr v12, v3

    .line 275
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v8, "RequestToJoinMembersAll"

    .line 277
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v11, 0x0

    .line 278
    invoke-direct {v0, v6, v10, v11}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v4, v11

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 279
    invoke-direct {v0, v6, v10, v5}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v4, v5

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 276
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 284
    :goto_c
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x31

    const/16 v18, 0xa

    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x18

    .line 285
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_17
    const/4 v11, 0x0

    .line 288
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v3, :cond_18

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v3, :cond_19

    :cond_18
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1a

    :cond_19
    move v4, v5

    goto :goto_e

    :cond_1a
    move v4, v11

    .line 289
    :goto_e
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x8

    .line 290
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-static {v3, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 292
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz v4, :cond_1b

    .line 294
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    const-string v4, "ProfileJoinChannel"

    goto :goto_f

    :cond_1b
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    const-string v4, "ProfileJoinGroup"

    :goto_f
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, -0x1

    const/16 v5, 0x30

    const v6, 0x800003

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/16 v10, 0xe

    .line 298
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    .line 165
    :cond_1c
    :goto_10
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const/4 v8, -0x2

    .line 166
    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 169
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 170
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v8, 0x20

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 171
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v8, 0x30

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    .line 175
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-static {v8, v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 177
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 179
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_1d

    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinChannel:I

    const-string v8, "RequestToJoinChannel"

    goto :goto_11

    :cond_1d
    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinGroup:I

    const-string v8, "RequestToJoinGroup"

    :goto_11
    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v17, 0x30

    const v18, 0x800003

    const/16 v19, 0xe

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 231
    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v6, :cond_1e

    .line 232
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinChannelDescription:I

    const-string v4, "RequestToJoinChannelDescription"

    goto :goto_12

    :cond_1e
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinGroupDescription:I

    const-string v4, "RequestToJoinGroupDescription"

    :goto_12
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x11

    const/16 v9, 0x18

    const/16 v10, 0xf

    .line 234
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    :goto_13
    return-void
.end method

.method private ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;
    .locals 1

    .line 363
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 367
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 p3, 0x78

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, p1, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getScamDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    .line 373
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_0
    return-object p1
.end method

.method private getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 337
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 301
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 303
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$2(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 200
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "INVITE_REQUEST_SENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 201
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$4(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "INVITE_REQUEST_SENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance p1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 219
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, p3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 211
    new-instance p3, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 10

    .line 184
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    const-wide/16 v0, 0x190

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 190
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    .line 191
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 193
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    new-instance v9, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    .line 191
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 210
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 313
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 314
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 315
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 316
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 317
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    .line 318
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 319
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 320
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 321
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 322
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 328
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p3, :cond_0

    .line 305
    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 306
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 308
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    :cond_0
    return-void

    .line 352
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 353
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->timer_3:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 354
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RequestToJoinSent:I

    const-string v2, "RequestToJoinSent"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 356
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinChannelSentDescription:I

    const-string p2, "RequestToJoinChannelSentDescription"

    invoke-static {p2, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 357
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinGroupSentDescription:I

    const-string p2, "RequestToJoinGroupSentDescription"

    invoke-static {p2, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 358
    :goto_0
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0xabe

    .line 359
    invoke-static {p1, v0, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
