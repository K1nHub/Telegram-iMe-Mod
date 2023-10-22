.class public Lorg/telegram/ui/Components/QRCodeBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "QRCodeBottomSheet.java"


# instance fields
.field private address:Ljava/lang/String;

.field private button2TextView:Landroid/widget/TextView;

.field private final buttonTextView:Landroid/widget/TextView;

.field private final help:Landroid/widget/TextView;

.field iconImage:Lorg/telegram/ui/Components/RLottieImageView;

.field imageSize:I

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field qrCode:Landroid/graphics/Bitmap;

.field private final qrImageView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$3WCOP_ndsSici4ayGOlHntjZ8HA(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5H_cjtzAJWOKb-9nurASUe7XK2Y(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$4(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HgGez72lz7L9b7SbZipx8y_b9DU(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RqxT_g7kHCYFiW68ybDk2FZ46bo(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ux6FfhMEWFHgQRr3T06stNb7nbU(Lorg/telegram/ui/Components/QRCodeBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 69
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
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 157
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    move/from16 v4, p6

    .line 159
    iput v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 160
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x32

    .line 161
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 162
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    const/16 v5, 0x8

    .line 163
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    const/4 v6, 0x1

    move-object/from16 v7, p2

    .line 167
    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 168
    new-instance v7, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    .line 175
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 177
    new-instance v8, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 183
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 186
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 188
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v8, v3, v10, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 189
    iget-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    new-instance v10, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    .line 192
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    iget-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 197
    iget-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v12, v13, v3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v10

    if-eq v10, v11, :cond_2

    .line 199
    iget-object v10, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 203
    :cond_2
    :goto_0
    new-instance v10, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;

    invoke-direct {v10, v0, v1, v7}, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 217
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v11, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v12, 0x3c

    const/16 v13, 0x11

    invoke-static {v12, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-static {v12, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v14, 0xdc

    const/16 v15, 0xdc

    const/16 v16, 0x1

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/16 v19, 0x1e

    const/16 v20, 0x0

    .line 220
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    .line 223
    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v11, p4

    .line 224
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iput-object v7, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrImageView:Landroid/widget/ImageView;

    .line 228
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    sget v11, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    if-eq v7, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    sget v12, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_BACKUP:I

    if-ne v7, v12, :cond_4

    :cond_3
    const/high16 v7, 0x41880000    # 17.0f

    .line 229
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "fonts/rmono.ttf"

    .line 230
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 232
    new-instance v7, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/16 v17, 0x28

    .line 236
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    if-eq v7, v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    sget v11, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_BACKUP:I

    if-ne v7, v11, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v18, v5

    goto :goto_2

    :cond_6
    :goto_1
    move/from16 v18, v9

    :goto_2
    const/16 v19, 0x28

    const/16 v20, 0x8

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const/16 v5, 0x22

    .line 239
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v7, v3, v9, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "fonts/rmedium.ttf"

    .line 242
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v7

    sget v9, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_LOGIN_TOKEN:I

    if-ne v7, v9, :cond_7

    .line 245
    sget v7, Lorg/telegram/messenger/R$string;->Close:I

    const-string v9, "Close"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 247
    :cond_7
    sget v7, Lorg/telegram/messenger/R$string;->ShareQrCode:I

    const-string v9, "ShareQrCode"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_3
    new-instance v7, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v14, -0x1

    const/16 v15, 0x30

    const/16 v16, 0x50

    const/16 v17, 0x10

    const/16 v18, 0xf

    const/16 v19, 0x10

    const/16 v20, 0x3

    .line 281
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_8

    .line 284
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    .line 285
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v7, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 286
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 287
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v5, "ShareLink"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v2, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/16 v12, 0x10

    const/4 v13, 0x3

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    .line 302
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v2, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private addOptionMenu()V
    .locals 9

    .line 124
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    .line 125
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 138
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

.method private copyAddressToClipboard()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method private isNeedOptionsMenu()Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addOptionMenu$0(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$addOptionMenu$1(I)V
    .locals 1

    .line 133
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->copyAddressToClipboard()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->copyAddressToClipboard()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 250
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_BACKUP:I

    if-eq p2, v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_LOGIN_TOKEN:I

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    if-ne p2, v0, :cond_1

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 256
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    iget-object v2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 258
    iget-object v3, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 259
    div-int/lit8 v2, v2, 0x2

    .line 260
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v2

    invoke-direct {v4, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 263
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "qr_tmp.png"

    invoke-static {p2, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 268
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    if-ne p2, v0, :cond_2

    .line 271
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    .line 251
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$4(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 291
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 292
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 293
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    sget p0, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v0, "ShareLink"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 295
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 309
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 310
    sget-object p1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object p1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance p1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_bg_white_circle:I

    invoke-virtual {p1, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->setQrImageRes(I)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 317
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->setQrImageRes(I)V

    .line 319
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_5

    .line 323
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const/16 v2, 0x300

    const/16 v3, 0x300

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    .line 326
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 327
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;->getImageSize()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->imageSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 330
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCustomQrCenterImageRes()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCustomQrCenterImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->isNeedOptionsMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->addOptionMenu()V

    :cond_0
    return-void
.end method

.method public setCenterAnimation(I)V
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x3c

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method public setCenterImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tg://login?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, v2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setupWalletTypeBackup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p3, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const/4 p3, 0x1

    .line 88
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 89
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateColors()V
    .locals 5

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 356
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0xff

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 369
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    return-void
.end method
