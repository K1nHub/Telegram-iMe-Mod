.class public Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "FilesMigrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FilesMigrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesMigrationBottomSheet"
.end annotation


# instance fields
.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$vlejTVbJlvan7_tGi8V43Yhdjbk(Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 17

    move-object/from16 v0, p0

    .line 237
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v1, p1

    .line 238
    iput-object v1, v0, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 239
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 241
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 242
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    new-instance v5, Lorg/telegram/ui/Components/StickerImageView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v5, v1, v6}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    const/4 v6, 0x7

    .line 245
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    .line 246
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/16 v7, 0x90

    const/16 v8, 0x90

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 247
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x800003

    .line 250
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 252
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v8, "fonts/rmedium.ttf"

    .line 253
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    sget v9, Lorg/telegram/messenger/R$string;->MigrateOldFolderTitle:I

    const-string v10, "MigrateOldFolderTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v13, 0x15

    const/16 v14, 0x1e

    const/16 v15, 0x15

    const/16 v16, 0x0

    .line 255
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 259
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    sget v6, Lorg/telegram/messenger/R$string;->MigrateOldFolderDescription:I

    const-string v7, "MigrateOldFolderDescription"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/16 v12, 0x15

    const/16 v13, 0xf

    const/16 v14, 0x15

    const/16 v15, 0x10

    .line 262
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x22

    .line 266
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v7, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x11

    .line 267
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 268
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    sget v6, Lorg/telegram/messenger/R$string;->MigrateOldFolderButton:I

    const-string v7, "MigrateOldFolderButton"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v4, v4, [F

    const/high16 v7, 0x40c00000    # 6.0f

    aput v7, v4, v2

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xf

    const/16 v11, 0x10

    const/16 v12, 0x10

    .line 275
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v2, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 327
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 328
    sput-object v0, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    return-void
.end method

.method public migrateOldFolder()V
    .locals 12

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 294
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "android.permission.READ_MEDIA_AUDIO"

    const-string v7, "android.permission.READ_MEDIA_VIDEO"

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v9, "android.permission.READ_MEDIA_IMAGES"

    const/16 v10, 0x21

    if-lt v5, v10, :cond_2

    .line 296
    invoke-virtual {v0, v9}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    .line 297
    invoke-virtual {v0, v7}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    .line 298
    invoke-virtual {v0, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    if-ge v5, v10, :cond_3

    .line 300
    invoke-virtual {v0, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    .line 321
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService;->start()V

    .line 322
    invoke-virtual {p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->dismiss()V

    return-void

    .line 304
    :cond_6
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_8

    if-lt v5, v10, :cond_7

    .line 307
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 311
    :cond_7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 315
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 318
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
