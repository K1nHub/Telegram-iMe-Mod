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

.field qrCode:Landroid/graphics/Bitmap;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$3WCOP_ndsSici4ayGOlHntjZ8HA(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ux6FfhMEWFHgQRr3T06stNb7nbU(Lorg/telegram/ui/Components/QRCodeBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$addOptionMenu$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$f5pz9bG655B9CNhnaU_Et_tMgvs(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sL5vl6c0IuJE6-El6F5kMkMtkXo(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->lambda$new$3(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 140
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    const/4 v4, 0x1

    move-object/from16 v5, p2

    .line 143
    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 144
    new-instance v5, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    .line 151
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 153
    new-instance v6, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 159
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 162
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    .line 164
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v6, v3, v8, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    .line 168
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v8

    if-eq v8, v9, :cond_1

    .line 173
    iget-object v8, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 177
    :cond_1
    new-instance v8, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;

    invoke-direct {v8, v0, v1, v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet$3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 191
    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v9, 0x3c

    const/16 v10, 0x11

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0xdc

    const/16 v12, 0xdc

    const/4 v13, 0x1

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/16 v16, 0x1e

    const/16 v17, 0x0

    .line 193
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    .line 196
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v9, p4

    .line 197
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v9

    const/4 v11, 0x2

    if-eq v9, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v9

    if-ne v9, v11, :cond_3

    :cond_2
    const/high16 v9, 0x41880000    # 17.0f

    .line 201
    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "fonts/rmono.ttf"

    .line 202
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/16 v15, 0x28

    .line 205
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v9

    if-eq v9, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v9

    if-ne v9, v11, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    const/16 v16, 0x8

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x10

    :goto_1
    const/16 v17, 0x28

    const/16 v18, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const/16 v7, 0x22

    .line 208
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v5, v9, v3, v11, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 209
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "fonts/rmedium.ttf"

    .line 211
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    sget v9, Lorg/telegram/messenger/R$string;->ShareQrCode:I

    const-string v11, "ShareQrCode"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v9, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/16 v13, 0x50

    const/16 v14, 0x10

    const/16 v15, 0xf

    const/16 v16, 0x10

    const/16 v17, 0x3

    .line 238
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_6

    .line 241
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    .line 242
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v9, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v7, "ShareLink"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v2, v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/16 v9, 0x50

    const/16 v10, 0x10

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/16 v13, 0x10

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    .line 259
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    :cond_7
    return-void
.end method

.method private addOptionMenu()V
    .locals 9

    .line 109
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

    .line 110
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "player_actionBarSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lcom/smedialink/common/IdFabric$Menu;->COPY:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 125
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

.method private isNeedOptionsMenu()Z
    .locals 2

    .line 105
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

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$addOptionMenu$1(I)V
    .locals 2

    .line 119
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v1, "TextCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 220
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->qrCode:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "qr_tmp.png"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 225
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
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

    .line 234
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$3(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 248
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    .line 249
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 250
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    sget p0, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v0, "ShareLink"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 252
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 271
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 272
    sget-object p1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object p1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance p1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 276
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->getCustomQrCenterImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/qrcode/QRCodeWriter;->setQrImageRes(I)V

    :cond_0
    const/16 v2, 0x300

    const/16 v3, 0x300

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 281
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/QRCodeWriter;->getImageSize()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->imageSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 284
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCustomQrCenterImageRes()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->type:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->isNeedOptionsMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->addOptionMenu()V

    :cond_0
    return-void
.end method

.method public setCenterAnimation(I)V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x3c

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 292
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method public setCenterImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->iconImage:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setupWalletTypeBackup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 85
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    .line 76
    iput-object p3, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->address:Ljava/lang/String;

    const/4 p3, 0x1

    .line 77
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 78
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleClickable(Z)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateColors()V
    .locals 5

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    const-string v1, "key_sheet_other"

    .line 310
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->buttonTextView:Landroid/widget/TextView;

    const-string v1, "featuredStickers_buttonText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
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

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->button2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 320
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
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

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/QRCodeBottomSheet;->help:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const-string v0, "dialogBackground"

    .line 328
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    return-void
.end method
