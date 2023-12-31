.class public Lorg/telegram/ui/SessionBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SessionBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SessionBottomSheet$Callback;,
        Lorg/telegram/ui/SessionBottomSheet$ItemView;
    }
.end annotation


# instance fields
.field imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field session:Lorg/telegram/tgnet/TLRPC$TL_authorization;


# direct methods
.method public static synthetic $r8$lambda$2fEDj1-esmBGqLR7f1ezNTXIea4(Lorg/telegram/ui/SessionBottomSheet;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionBottomSheet;->lambda$copyText$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEZ190QiEjrhpbuJ6z6aAywalzU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/SessionBottomSheet;->lambda$uploadSessionSettings$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_authorization;ZLorg/telegram/ui/SessionBottomSheet$Callback;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 47
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOpenNoDelay(Z)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 50
    iput-object v2, v0, Lorg/telegram/ui/SessionBottomSheet;->session:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 51
    iput-object v1, v0, Lorg/telegram/ui/SessionBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 54
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/SessionBottomSheet;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 58
    new-instance v8, Lorg/telegram/ui/SessionBottomSheet$1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/SessionBottomSheet$1;-><init>(Lorg/telegram/ui/SessionBottomSheet;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v7, v0, Lorg/telegram/ui/SessionBottomSheet;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    iget-object v7, v0, Lorg/telegram/ui/SessionBottomSheet;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x46

    const/16 v9, 0x46

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x2

    const/high16 v9, 0x41a00000    # 20.0f

    .line 71
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "fonts/rmedium.ttf"

    .line 72
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    .line 74
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/16 v14, 0x15

    const/16 v15, 0xc

    const/16 v16, 0x15

    const/16 v17, 0x0

    .line 75
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41500000    # 13.0f

    .line 79
    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x15

    const/16 v19, 0x15

    .line 81
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/2addr v12, v3

    if-eqz v12, :cond_0

    .line 86
    sget v12, Lorg/telegram/messenger/R$string;->Online:I

    const-string v13, "Online"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 88
    :cond_0
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_active:I

    int-to-long v12, v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    .line 90
    :goto_0
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    .line 94
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const-string v13, " "

    if-nez v12, :cond_4

    .line 97
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 98
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_2
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    .line 101
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 102
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_3
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_4
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, v0, Lorg/telegram/ui/SessionBottomSheet;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v2, v7}, Lorg/telegram/ui/SessionBottomSheet;->setAnimation(Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/ui/Components/RLottieImageView;)V

    .line 110
    new-instance v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;

    invoke-direct {v7, v5, v4}, Lorg/telegram/ui/SessionBottomSheet$ItemView;-><init>(Landroid/content/Context;Z)V

    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v12, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v11, Lorg/telegram/messenger/R$drawable;->menu_devices:I

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 116
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 117
    iget-object v12, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v11, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->Application:I

    const-string v14, "Application"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    .line 124
    new-instance v11, Lorg/telegram/ui/SessionBottomSheet$ItemView;

    invoke-direct {v11, v5, v4}, Lorg/telegram/ui/SessionBottomSheet$ItemView;-><init>(Landroid/content/Context;Z)V

    .line 125
    iget-object v12, v11, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_location:I

    invoke-static {v5, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 127
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    iget-object v10, v11, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v10, v11, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->Location:I

    const-string v14, "Location"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v10, Lorg/telegram/ui/SessionBottomSheet$2;

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/SessionBottomSheet$2;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v10, Lorg/telegram/ui/SessionBottomSheet$3;

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/SessionBottomSheet$3;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iput-boolean v3, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    move-object v7, v11

    .line 153
    :cond_5
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_6

    .line 154
    new-instance v10, Lorg/telegram/ui/SessionBottomSheet$ItemView;

    invoke-direct {v10, v5, v4}, Lorg/telegram/ui/SessionBottomSheet$ItemView;-><init>(Landroid/content/Context;Z)V

    .line 155
    iget-object v11, v10, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_language:I

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 157
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 158
    iget-object v12, v10, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v11, v10, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->IpAddress:I

    const-string v14, "IpAddress"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v11, Lorg/telegram/ui/SessionBottomSheet$4;

    invoke-direct {v11, v0, v2}, Lorg/telegram/ui/SessionBottomSheet$4;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v11, Lorg/telegram/ui/SessionBottomSheet$5;

    invoke-direct {v11, v0, v2}, Lorg/telegram/ui/SessionBottomSheet$5;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iput-boolean v3, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    move-object v7, v10

    .line 186
    :cond_6
    invoke-direct {v0, v2}, Lorg/telegram/ui/SessionBottomSheet;->secretChatsEnabled(Lorg/telegram/tgnet/TLRPC$TL_authorization;)Z

    move-result v8

    const/4 v10, 0x7

    if-eqz v8, :cond_7

    .line 187
    new-instance v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;

    invoke-direct {v8, v5, v3}, Lorg/telegram/ui/SessionBottomSheet$ItemView;-><init>(Landroid/content/Context;Z)V

    .line 188
    iget-object v11, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->AcceptSecretChats:I

    const-string v14, "AcceptSecretChats"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 190
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    iget-object v12, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v11, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->encrypted_requests_disabled:Z

    xor-int/2addr v12, v3

    invoke-virtual {v11, v12, v4}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 193
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    new-instance v11, Lorg/telegram/ui/SessionBottomSheet$6;

    invoke-direct {v11, v0, v8, v2}, Lorg/telegram/ui/SessionBottomSheet$6;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/ui/SessionBottomSheet$ItemView;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-boolean v3, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    .line 206
    iget-object v7, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->AcceptSecretChatsDescription:I

    const-string v12, "AcceptSecretChatsDescription"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v7, v8

    .line 211
    :cond_7
    new-instance v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;

    invoke-direct {v8, v5, v3}, Lorg/telegram/ui/SessionBottomSheet$ItemView;-><init>(Landroid/content/Context;Z)V

    .line 212
    iget-object v11, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->AcceptCalls:I

    const-string v14, "AcceptCalls"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 214
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 215
    iget-object v12, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v11, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;->call_requests_disabled:Z

    xor-int/2addr v12, v3

    invoke-virtual {v11, v12, v4}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 217
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    new-instance v10, Lorg/telegram/ui/SessionBottomSheet$7;

    invoke-direct {v10, v0, v8, v2}, Lorg/telegram/ui/SessionBottomSheet$7;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/ui/SessionBottomSheet$ItemView;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iput-boolean v3, v7, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    .line 230
    iget-object v7, v8, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->AcceptCallsChatsDescription:I

    const-string v11, "AcceptCallsChatsDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez p3, :cond_8

    .line 234
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x22

    .line 235
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v10, v4, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    .line 236
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 237
    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    sget v3, Lorg/telegram/messenger/R$string;->TerminateSession:I

    const-string v4, "TerminateSession"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x6

    .line 242
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    const/16 v9, 0x78

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v3, v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, -0x1

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/16 v12, 0xf

    const/16 v13, 0x10

    const/16 v14, 0x10

    .line 244
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v3, Lorg/telegram/ui/SessionBottomSheet$8;

    move-object/from16 v4, p4

    invoke-direct {v3, v0, v4, v2, v1}, Lorg/telegram/ui/SessionBottomSheet$8;-><init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/ui/SessionBottomSheet$Callback;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_8
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SessionBottomSheet;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionBottomSheet;->copyText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SessionBottomSheet;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/SessionBottomSheet;->uploadSessionSettings()V

    return-void
.end method

.method private copyText(Ljava/lang/String;)V
    .locals 4

    .line 300
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 301
    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v3, "Copy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/telegram/ui/SessionBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionBottomSheet;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$copyText$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "label"

    .line 303
    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 304
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string p3, "TextCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$uploadSessionSettings$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private secretChatsEnabled(Lorg/telegram/tgnet/TLRPC$TL_authorization;)Z
    .locals 1

    .line 282
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->api_id:I

    const/16 v0, 0x7f8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9c0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setAnimation(Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 7

    .line 312
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safari"

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 323
    sget p1, Lorg/telegram/messenger/R$raw;->safari_30:I

    .line 324
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    .line 325
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    :goto_0
    move v1, v3

    goto/16 :goto_4

    :cond_1
    const-string v2, "edge"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    sget p1, Lorg/telegram/messenger/R$raw;->edge_30:I

    .line 328
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    .line 329
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    goto :goto_0

    :cond_2
    const-string v2, "chrome"

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    sget p1, Lorg/telegram/messenger/R$raw;->chrome_30:I

    .line 332
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    .line 333
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    goto :goto_0

    :cond_3
    const-string v2, "opera"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "firefox"

    if-nez v5, :cond_c

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "vivaldi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v2, "ubuntu"

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    sget p1, Lorg/telegram/messenger/R$raw;->ubuntu_30:I

    .line 347
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    .line 348
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Blue:I

    goto :goto_0

    :cond_5
    const-string v2, "ios"

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "ipad"

    .line 350
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$raw;->ipad_30:I

    goto :goto_1

    :cond_6
    sget p1, Lorg/telegram/messenger/R$raw;->iphone_30:I

    .line 351
    :goto_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    .line 352
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Blue:I

    goto :goto_0

    :cond_7
    const-string v1, "windows"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 354
    sget p1, Lorg/telegram/messenger/R$raw;->windows_30:I

    .line 355
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    .line 356
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Cyan:I

    goto :goto_0

    :cond_8
    const-string v1, "macos"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 358
    sget p1, Lorg/telegram/messenger/R$raw;->mac_30:I

    .line 359
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    .line 360
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Cyan:I

    goto/16 :goto_0

    :cond_9
    const-string v1, "android"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    sget p1, Lorg/telegram/messenger/R$raw;->android_30:I

    .line 363
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    .line 364
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Green:I

    goto/16 :goto_0

    .line 366
    :cond_a
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "desktop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 367
    sget p1, Lorg/telegram/messenger/R$raw;->windows_30:I

    .line 368
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    .line 369
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Cyan:I

    goto/16 :goto_0

    .line 371
    :cond_b
    sget p1, Lorg/telegram/messenger/R$raw;->chrome_30:I

    .line 372
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    .line 373
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    goto/16 :goto_0

    .line 336
    :cond_c
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 337
    sget p1, Lorg/telegram/messenger/R$drawable;->device_web_opera:I

    goto :goto_3

    .line 338
    :cond_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 339
    sget p1, Lorg/telegram/messenger/R$drawable;->device_web_firefox:I

    goto :goto_3

    .line 341
    :cond_e
    sget p1, Lorg/telegram/messenger/R$drawable;->device_web_other:I

    .line 343
    :goto_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    .line 344
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Pink:I

    move v1, v4

    :goto_4
    const/16 v2, 0x2a

    .line 377
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v4

    .line 380
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    aput v0, v1, v3

    const/16 v0, 0x32

    .line 381
    invoke-virtual {p2, p1, v0, v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    goto :goto_5

    .line 383
    :cond_f
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method

.method private uploadSessionSettings()V
    .locals 3

    .line 289
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;-><init>()V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/SessionBottomSheet;->session:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->encrypted_requests_disabled:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->encrypted_requests_disabled:Z

    .line 291
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->call_requests_disabled:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->call_requests_disabled:Z

    const/4 v2, 0x3

    .line 292
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    .line 293
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->hash:J

    .line 294
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SessionBottomSheet$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/SessionBottomSheet$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 451
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/SessionBottomSheet;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method
