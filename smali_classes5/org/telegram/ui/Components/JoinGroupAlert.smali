.class public Lorg/telegram/ui/Components/JoinGroupAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "JoinGroupAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;
    }
.end annotation


# instance fields
.field private chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private hash:Ljava/lang/String;

.field private requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private requestTextView:Landroid/widget/TextView;


# direct methods
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

.method public static synthetic $r8$lambda$MZPd-3QPVUtPGffI7WtY68npTE8(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1j0B8rMkLN5oT8UJQeZCOEM5EI(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$10(Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJYPrnvMcqVddx78a7kUAwz4zVw(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$4(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f5gPtKP8iUi4tR0k4_Talg3gaQA(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$8(Landroid/view/View;)V

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

.method public static synthetic $r8$lambda$ilA4-A9unR1dukcDuhAu81nriMo(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$11(Landroid/view/View;)V

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
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 54
    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 55
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 56
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    const-string/jumbo v5, "windowBackgroundWhite"

    .line 57
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    move-object/from16 v5, p4

    .line 59
    iput-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 60
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v5, :cond_0

    .line 61
    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    goto :goto_0

    .line 62
    :cond_0
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1

    .line 63
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :cond_1
    :goto_0
    move-object/from16 v2, p3

    .line 65
    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    .line 67
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 71
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance v7, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v7, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v7, v6}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 78
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v8, "listSelectorSDK21"

    .line 79
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v8, "key_sheet_other"

    .line 80
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81
    sget v8, Lorg/telegram/messenger/R$drawable;->ic_layer_close:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v8, 0x8

    .line 83
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 84
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v10, 0x24

    const/16 v11, 0x24

    const v12, 0x800035

    const/4 v13, 0x6

    const/16 v14, 0x8

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 85
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x23

    .line 92
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v9, 0x46

    const/16 v10, 0x46

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/16 v13, 0x1d

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 93
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    .line 96
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_2

    .line 97
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 98
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 99
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 100
    invoke-virtual {v6, v10, v7, v9}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    move-object v9, v11

    goto :goto_1

    .line 102
    :cond_2
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const-wide/16 v10, 0x0

    .line 103
    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-virtual {v7, v10, v11, v12, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    .line 105
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 106
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 107
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const-string v13, "50_50"

    invoke-virtual {v6, v9, v13, v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v9, v10

    .line 109
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    goto :goto_3

    .line 110
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_6

    .line 111
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v10}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 112
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 113
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 114
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 115
    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v11, :cond_5

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 116
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v6, v11, v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    move-object v6, v9

    move-object v9, v10

    goto :goto_3

    :cond_6
    move-object v6, v9

    const/4 v12, 0x0

    .line 119
    :goto_3
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "fonts/rmedium.ttf"

    .line 120
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v11, 0x41880000    # 17.0f

    .line 121
    invoke-virtual {v7, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v11, "dialogTextBlack"

    .line 122
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 125
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0xa

    const/16 v17, 0x9

    const/16 v18, 0xa

    if-lez v12, :cond_7

    const/16 v19, 0x0

    goto :goto_4

    :cond_7
    const/16 v19, 0x14

    .line 126
    :goto_4
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v7, :cond_9

    iget-boolean v13, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v13, :cond_8

    iget-boolean v13, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v13, :cond_a

    :cond_8
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_b

    :cond_a
    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    .line 129
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v5

    const-string v14, "dialogTextGray3"

    const/high16 v15, 0x41600000    # 14.0f

    if-lez v12, :cond_e

    .line 131
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v9, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 135
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v7, :cond_c

    new-array v15, v4, [Ljava/lang/Object;

    const-string v8, "Subscribers"

    .line 137
    invoke-static {v8, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    new-array v8, v4, [Ljava/lang/Object;

    const-string v15, "Members"

    .line 139
    invoke-static {v15, v12, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x31

    const/16 v18, 0xa

    const/16 v19, 0x3

    const/16 v20, 0xa

    if-eqz v13, :cond_d

    const/16 v21, 0x0

    goto :goto_7

    :cond_d
    const/16 v21, 0x14

    .line 141
    :goto_7
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    const/high16 v8, 0x41700000    # 15.0f

    const/16 v9, 0x11

    if-eqz v13, :cond_f

    .line 145
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {v12, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x30

    const/16 v18, 0x18

    const/16 v19, 0xa

    const/16 v20, 0x18

    const/16 v21, 0x14

    .line 150
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/16 v11, 0x30

    const/4 v12, -0x1

    if-eqz v6, :cond_15

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v13, :cond_10

    goto/16 :goto_9

    :cond_10
    if-eqz v6, :cond_18

    .line 225
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 226
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x8

    .line 227
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v4, v4, v4, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 228
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 229
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 230
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 232
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 233
    new-instance v6, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v6, "dialogScrollGlow"

    .line 234
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    const/4 v13, -0x2

    const/16 v14, 0x5a

    const/16 v15, 0x31

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7

    .line 235
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :cond_11
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v6, "dialogShadowLine"

    .line 239
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v7

    invoke-direct {v6, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v5, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v5, v1, v4, v3}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0x53

    .line 243
    invoke-static {v12, v11, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 245
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string v3, "dialogTextBlue2"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v7, "Cancel"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v6, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 249
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v2, :cond_13

    :cond_12
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_14

    .line 253
    :cond_13
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    const-string v3, "ProfileJoinChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 255
    :cond_14
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->JoinGroup:I

    const-string v3, "JoinGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_8
    iget-object v1, v5, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    .line 154
    :cond_15
    :goto_9
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x2

    .line 155
    invoke-static {v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const-string v3, "featuredStickers_addButton"

    .line 158
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 159
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 160
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v6, 0x6

    .line 164
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v11, "featuredStickers_addButtonPressed"

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v6, v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 168
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_16

    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinChannel:I

    const-string v6, "RequestToJoinChannel"

    goto :goto_a

    :cond_16
    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinGroup:I

    const-string v6, "RequestToJoinGroup"

    :goto_a
    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const-string v4, "featuredStickers_buttonText"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v7}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v15, -0x1

    const/16 v16, 0x30

    const v17, 0x800003

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 220
    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v7, :cond_17

    .line 221
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinChannelDescription:I

    const-string v4, "RequestToJoinChannelDescription"

    goto :goto_b

    :cond_17
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinGroupDescription:I

    const-string v4, "RequestToJoinGroupDescription"

    :goto_b
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x11

    const/16 v9, 0x18

    const/16 v10, 0xf

    .line 223
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    :goto_c
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p3, :cond_0

    .line 263
    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 264
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 266
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 259
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 261
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$2(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 189
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "INVITE_REQUEST_SENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 190
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$4(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 205
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "INVITE_REQUEST_SENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance p1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 208
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, p3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 211
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 200
    new-instance p3, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 10

    .line 173
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    const-wide/16 v0, 0x190

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 179
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    .line 180
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 182
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    new-instance v9, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    .line 180
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    goto :goto_0

    .line 197
    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 199
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 271
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 272
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 274
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 275
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    .line 276
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 277
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 278
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 279
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 282
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 286
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public static showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 295
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 296
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->timer_3:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 297
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RequestToJoinSent:I

    const-string v2, "RequestToJoinSent"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 299
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinChannelSentDescription:I

    const-string p2, "RequestToJoinChannelSentDescription"

    invoke-static {p2, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 300
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinGroupSentDescription:I

    const-string p2, "RequestToJoinGroupSentDescription"

    invoke-static {p2, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 301
    :goto_0
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0xabe

    .line 302
    invoke-static {p1, v0, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
