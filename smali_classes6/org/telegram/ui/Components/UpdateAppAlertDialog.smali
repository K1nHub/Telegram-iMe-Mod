.class public Lorg/telegram/ui/Components/UpdateAppAlertDialog;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;
    }
.end annotation


# instance fields
.field private accountNum:I

.field private animationInProgress:Z

.field private appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private location:[I

.field private scrollOffsetY:I

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$Ec_n2Ko6Hg9ZZ70gVv2vh1xFpmo(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWt6wiHetSsFroTsHnr4U-PRsrQ(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 138
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 59
    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    .line 139
    iput-object v2, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    move/from16 v5, p3

    .line 140
    iput v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->accountNum:I

    .line 141
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 144
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    new-instance v5, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V

    .line 177
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 178
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 180
    new-instance v6, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v7, 0x1

    .line 225
    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 226
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 227
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 228
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 229
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x33

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x82

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    .line 232
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/16 v11, 0x33

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1

    .line 236
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 237
    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v8, v10, v12}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v15

    .line 238
    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v10, 0x5a

    invoke-static {v8, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 239
    iget-object v10, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v15, :cond_0

    .line 242
    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/16 v16, 0x0

    const-string v14, "250_250"

    const-string v17, "update"

    move-object v12, v6

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v10, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v14, "250_250"

    const-string v18, "update"

    move-object v12, v6

    move-object v15, v8

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    .line 246
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0xa0

    const/16 v13, 0xa0

    const/16 v14, 0x31

    const/16 v15, 0x11

    const/16 v16, 0x8

    const/16 v17, 0x11

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_1
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "fonts/rmedium.ttf"

    .line 250
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 251
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 254
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    sget v10, Lorg/telegram/messenger/R$string;->AppUpdate:I

    const-string v12, "AppUpdate"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v10, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x31

    const/16 v15, 0x17

    const/16 v16, 0x10

    const/16 v17, 0x17

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 260
    invoke-virtual {v6, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    new-instance v12, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v12}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 262
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 263
    sget v13, Lorg/telegram/messenger/R$string;->AppUpdateVersionAndSize:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    aput-object v15, v4, v3

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v7

    const-string v14, "AppUpdateVersionAndSize"

    invoke-static {v14, v13, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x31

    .line 264
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0x17

    const/16 v17, 0x0

    const/16 v18, 0x17

    const/16 v19, 0x5

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 271
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 272
    iget-object v6, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    sget v2, Lorg/telegram/messenger/R$string;->AppUpdateChangelogEmpty:I

    const-string v6, "AppUpdateChangelogEmpty"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 275
    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v6

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 277
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_1
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    iget-object v2, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x33

    const/16 v13, 0x17

    const/16 v14, 0xf

    const/16 v15, 0x17

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    const/16 v6, 0x53

    invoke-direct {v2, v9, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v4, 0x82

    .line 283
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 284
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    .line 285
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 286
    iget-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 287
    iget-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    iget-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v5, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v2, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    .line 291
    sget v4, Lorg/telegram/messenger/R$string;->AppUpdateDownloadNow:I

    new-array v6, v3, [Ljava/lang/Object;

    const-string v8, "AppUpdateDownloadNow"

    invoke-static {v8, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 292
    invoke-static {v2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x1

    const/16 v9, 0x32

    const/16 v10, 0x53

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x32

    .line 296
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v2, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v2, v0, v1, v7}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    .line 299
    sget v1, Lorg/telegram/messenger/R$string;->AppUpdateRemindMeLater:I

    const-string v4, "AppUpdateRemindMeLater"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 300
    invoke-static {v2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, -0x1

    const/16 v7, 0x32

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 301
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->updateLayout()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I
    .locals 0

    .line 36
    iget p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I
    .locals 0

    .line 36
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 293
    iget p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v1, "update"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 294
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 300
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 305
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 306
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v0, [Landroid/animation/Animator;

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    if-eqz p2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    aput v5, v0, p1

    invoke-static {v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    iget-object v2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 342
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 343
    iget-object v3, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    aget v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/16 v5, 0x71

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 344
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    .line 348
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    if-eq v1, v0, :cond_1

    .line 349
    iput v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
