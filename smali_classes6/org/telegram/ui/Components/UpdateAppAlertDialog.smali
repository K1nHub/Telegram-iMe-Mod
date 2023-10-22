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

.field private final changelogTextView:Landroid/widget/TextView;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private location:[I

.field private messageTextView:Landroid/widget/TextView;

.field private scrollOffsetY:I

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private final setChangelogRunnable:Ljava/lang/Runnable;

.field private final setStickerRunnable:Ljava/lang/Runnable;

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$6ze9duavlrYJsgnxtSq3OVIPo00(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$0(Lorg/telegram/ui/Components/BackupImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CM_xv7LFjcRIksWQEQb0ddpYrAs(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$buFb1SoW61bfv5pVtMLobP5IQUk(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r0ZMXKgENhTg5gS2eBw-rAgIniY(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILandroid/widget/FrameLayout;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v3, 0x0

    .line 179
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 100
    iput-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    move-object/from16 v4, p2

    .line 180
    iput-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    move/from16 v4, p3

    .line 181
    iput v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->accountNum:I

    .line 182
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 185
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 190
    new-instance v4, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V

    .line 218
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 219
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 221
    new-instance v5, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v6, 0x1

    .line 266
    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 267
    iget-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 268
    iget-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 269
    iget-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 270
    iget-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x82

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    .line 273
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 274
    iget-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v9, -0x2

    const/16 v10, 0x33

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 278
    new-instance v7, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v5}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Lorg/telegram/ui/Components/BackupImageView;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->setStickerRunnable:Ljava/lang/Runnable;

    .line 289
    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0xa0

    const/16 v12, 0xa0

    const/16 v13, 0x31

    const/16 v14, 0x11

    const/16 v15, 0x8

    const/16 v16, 0x11

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    const-string v7, "fonts/rmedium.ttf"

    .line 293
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 294
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 295
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 297
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 298
    sget v9, Lorg/telegram/messenger/R$string;->AppUpdate:I

    const-string v11, "AppUpdate"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v9, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v14, 0x17

    const/16 v15, 0x10

    const/16 v16, 0x17

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    .line 302
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 303
    invoke-virtual {v5, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    new-instance v11, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v11}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 305
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v12, 0x31

    .line 309
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    iget-object v12, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v18, 0x17

    const/16 v19, 0x5

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    .line 313
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    invoke-virtual {v5, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v7}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 316
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 320
    new-instance v7, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v5}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/widget/TextView;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->setChangelogRunnable:Ljava/lang/Runnable;

    .line 326
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x33

    const/16 v12, 0x17

    const/16 v13, 0xf

    const/16 v14, 0x17

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v7

    const/16 v9, 0x53

    invoke-direct {v5, v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v7, 0x82

    .line 330
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 331
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    .line 332
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 334
    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v7, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v4, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v5, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    .line 338
    sget v7, Lorg/telegram/messenger/R$string;->AppUpdateDownloadNow:I

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "AppUpdateDownloadNow"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 339
    invoke-static {v5}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, -0x1

    const/16 v10, 0x32

    const/16 v11, 0x53

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x32

    .line 343
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v7, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v7, v0, v1, v6}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    .line 346
    sget v1, Lorg/telegram/messenger/R$string;->AppUpdateRemindMeLater:I

    const-string v6, "AppUpdateRemindMeLater"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v3}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 347
    invoke-static {v7}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x1

    const/16 v9, 0x32

    const/16 v10, 0x53

    const/4 v11, 0x0

    .line 348
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->updateUI()V

    if-eqz v2, :cond_0

    const/4 v8, -0x1

    const/16 v9, 0x32

    const/16 v10, 0x53

    const/16 v11, 0x17

    const/4 v12, 0x0

    const/16 v13, 0x17

    const/16 v14, 0xf

    .line 352
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v1, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 355
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 356
    invoke-virtual/range {p4 .. p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 357
    iget-object v2, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v1, v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 359
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 360
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->updateLayout()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 14

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    if-eqz v6, :cond_0

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "250_250"

    const-string v8, "update"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "250_250"

    const-string v13, "update"

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/TextView;)V
    .locals 7

    .line 321
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 323
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    .line 340
    iget p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v1, "update"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 366
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

    .line 367
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

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 372
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 374
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v0, [Landroid/animation/Animator;

    .line 375
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

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;-><init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
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

    .line 405
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    .line 409
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    if-eq v1, v0, :cond_1

    .line 410
    iput v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->scrollOffsetY:I

    .line 411
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

.method public updateUI()V
    .locals 9

    .line 52
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iput-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 53
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->setStickerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    iget-object v3, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61
    iget-object v3, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    if-eqz v3, :cond_2

    .line 63
    iget-object v4, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->AppUpdateVersionAndSize:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    int-to-long v7, v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v0, "AppUpdateVersionAndSize"

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 65
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->setChangelogRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 71
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method
