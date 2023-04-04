.class public Lorg/telegram/ui/Components/QRCodeBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "QRCodeBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private button2TextView:Landroid/widget/TextView;

.field private final buttonTextView:Landroid/widget/TextView;

.field private forceRefreshLoginToken:Z

.field private final help:Landroid/widget/TextView;

.field iconImage:Lorg/telegram/ui/Components/RLottieImageView;

.field imageSize:I

.field private loginTokenCallback:Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;

.field private loginTokenRequestId:I

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field qrCode:Landroid/graphics/Bitmap;

.field private qrImageView:Landroid/widget/ImageView;

.field private refreshLoginTokenRunnable:Ljava/lang/Runnable;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$3WCOP_ndsSici4ayGOlHntjZ8HA(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A57Phuv8C8Y_1Bku-v6ylEvI2Tg(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$5(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EGy7xuUNYuqDMzo4xV51Pc8VtcY(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$6(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F872_A6MwT83omae9XwttxXP-Ec(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginToken()V

    return-void
.end method

.method public static synthetic $r8$lambda$ISpOVJBESOFzVQHtdnS6wmL5o1o(Lorg/telegram/ui/Components/QRCodeBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$refreshLoginToken$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ux6FfhMEWFHgQRr3T06stNb7nbU(Lorg/telegram/ui/Components/QRCodeBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XFNgnO2xoNpQOtbS2qlxZRB3wAo(Lorg/telegram/ui/Components/QRCodeBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$refreshLoginToken$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pj8uEsIOhKDYcvRX_VS-CmD464Y(Lorg/telegram/ui/Components/QRCodeBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$handleLoginTokenResult$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 78
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 268
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 74
    new-instance v4, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginTokenRunnable:Ljava/lang/Runnable;

    move/from16 v4, p6

    .line 269
    iput v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 270
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    const/4 v4, 0x1

    move-object/from16 v5, p2

    .line 272
    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 273
    new-instance v5, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    .line 280
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 282
    new-instance v6, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 288
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 291
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    .line 293
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v6, v3, v8, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 294
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    .line 297
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v8

    if-eq v8, v9, :cond_1

    .line 302
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 306
    :cond_1
    new-instance v8, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;

    invoke-direct {v8, v0, v1, v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 320
    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v9, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v10, 0x3c

    const/16 v11, 0x11

    invoke-static {v10, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0xdc

    const/16 v13, 0xdc

    const/4 v14, 0x1

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/16 v17, 0x1e

    const/16 v18, 0x0

    .line 322
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    .line 325
    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v10, p4

    .line 326
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrImageView:Landroid/widget/ImageView;

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v5

    if-ne v5, v10, :cond_3

    :cond_2
    const/high16 v5, 0x41880000    # 17.0f

    .line 331
    invoke-virtual {v8, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "fonts/rmono.ttf"

    .line 332
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/16 v15, 0x28

    .line 335
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v5

    if-ne v5, v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    :cond_5
    :goto_0
    move/from16 v16, v7

    const/16 v17, 0x28

    const/16 v18, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const/16 v7, 0x22

    .line 338
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v8, v3, v12, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 339
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 340
    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v8, "fonts/rmedium.ttf"

    .line 341
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 342
    sget v8, Lorg/telegram/messenger/R$string;->ShareQrCode:I

    const-string v12, "ShareQrCode"

    invoke-static {v12, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v8, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, -0x1

    const/16 v13, 0x30

    const/16 v14, 0x50

    const/16 v15, 0x10

    const/16 v16, 0xf

    const/16 v17, 0x10

    const/16 v18, 0x3

    .line 368
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_6

    .line 371
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    .line 372
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v8, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 373
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v7, "ShareLink"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v2, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/16 v13, 0x50

    const/16 v14, 0x10

    const/4 v15, 0x3

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    .line 389
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v1

    if-eq v1, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v1

    if-ne v1, v10, :cond_7

    goto :goto_1

    .line 395
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 396
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginToken()V

    :cond_8
    :goto_1
    return-void
.end method

.method private addOptionMenu()V
    .locals 9

    .line 163
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_sheet_other"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    .line 164
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "player_actionBarSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    .line 237
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenCallback:Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;

    invoke-interface {p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;->onTwoStepVerificationNeeded()V

    goto :goto_0

    .line 240
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->forceRefreshLoginToken:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginToken()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V
    .locals 7

    .line 204
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    .line 206
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tg://login?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->token:[B

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-boolean v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->forceRefreshLoginToken:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginToken()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 211
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->expires:I

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginTokenRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 214
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    if-eqz v0, :cond_3

    .line 215
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    .line 216
    iget v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    if-nez v0, :cond_2

    return-void

    .line 219
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;-><init>()V

    .line 220
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->token:[B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;->token:[B

    .line 221
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->dc_id:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    goto :goto_0

    .line 228
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 230
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenCallback:Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;->onAuthorized(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private isNeedOptionsMenu()Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$addOptionMenu$0(Landroid/view/View;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$addOptionMenu$1(I)V
    .locals 2

    .line 173
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v1, "TextCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleLoginTokenResult$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    if-eqz p2, :cond_0

    .line 223
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 226
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "qr_tmp.png"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 355
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 358
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 346
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$6(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 378
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 379
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 380
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    sget p0, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v0, "ShareLink"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 382
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$refreshLoginToken$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 199
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V

    return-void
.end method

.method private synthetic lambda$refreshLoginToken$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 194
    new-instance v0, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshLoginToken()V
    .locals 5

    .line 183
    iget v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;-><init>()V

    .line 187
    sget v1, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_id:I

    .line 188
    sget-object v1, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_hash:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 190
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    return-void
.end method


# virtual methods
.method public createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 403
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 404
    sget-object p1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object p1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance p1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 408
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/qrcode/QRCodeWriter;->setQrImageRes(I)V

    :cond_0
    const/16 v2, 0x300

    const/16 v3, 0x300

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 413
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;->getImageSize()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->imageSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 416
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 141
    sget p2, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    if-ne p1, p2, :cond_2

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 145
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->forceRefreshLoginToken:Z

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginTokenRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginToken()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCustomQrCenterImageRes()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->type:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 126
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->isNeedOptionsMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->addOptionMenu()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 132
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->refreshLoginTokenRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 134
    iget v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    if-eqz v0, :cond_0

    .line 135
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenRequestId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    return-void
.end method

.method public setCenterAnimation(I)V
    .locals 2

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x3c

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method public setCenterImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setupLoginTokenType(Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;)V
    .locals 2

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->loginTokenCallback:Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->Close:I

    const-string v1, "Close"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupWalletTypeBackup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    .line 94
    iput-object p3, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 96
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateColors()V
    .locals 5

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    const-string v1, "key_sheet_other"

    .line 442
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const-string v1, "featuredStickers_buttonText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const-string v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "featuredStickers_addButtonPressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 452
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    const-string v3, "listSelectorSDK21"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const-string v0, "dialogBackground"

    .line 460
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    return-void
.end method
