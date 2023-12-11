.class public LComponents/UpdateAppAlertDialog;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LComponents/UpdateAppAlertDialog$BottomSheetCell;
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
.method public static synthetic $r8$lambda$WpWqkHPGe7kcFInVjwMuyZ9Zu7Y(LComponents/UpdateAppAlertDialog;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateAppAlertDialog;->lambda$new$1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YhGmbbJ6AHbXt7t2HrS9ciigPlE(LComponents/UpdateAppAlertDialog;Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateAppAlertDialog;->lambda$new$0(Lorg/telegram/ui/Components/BackupImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1LZWIS0e2TYsQk0lc2-YM31Uvc(LComponents/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateAppAlertDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjLfW6lTqHkbX6To-Xfe-8TIEGE(LComponents/UpdateAppAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateAppAlertDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 180
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 101
    iput-object v3, v0, LComponents/UpdateAppAlertDialog;->location:[I

    move-object/from16 v3, p2

    .line 181
    iput-object v3, v0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    move/from16 v3, p3

    .line 182
    iput v3, v0, LComponents/UpdateAppAlertDialog;->accountNum:I

    .line 183
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 186
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080642

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, LComponents/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    new-instance v3, LComponents/UpdateAppAlertDialog$1;

    invoke-direct {v3, v0, v1}, LComponents/UpdateAppAlertDialog$1;-><init>(LComponents/UpdateAppAlertDialog;Landroid/content/Context;)V

    .line 219
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 220
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 222
    new-instance v4, LComponents/UpdateAppAlertDialog$2;

    invoke-direct {v4, v0, v1}, LComponents/UpdateAppAlertDialog$2;-><init>(LComponents/UpdateAppAlertDialog;Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v5, 0x1

    .line 267
    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 268
    iget-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 269
    iget-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 270
    iget-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 271
    iget-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x33

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x82

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    .line 274
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    iget-object v4, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v8, -0x2

    const/16 v9, 0x33

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 279
    new-instance v6, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v4}, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda3;-><init>(LComponents/UpdateAppAlertDialog;Lorg/telegram/ui/Components/BackupImageView;)V

    iput-object v6, v0, LComponents/UpdateAppAlertDialog;->setStickerRunnable:Ljava/lang/Runnable;

    .line 290
    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0xa0

    const/16 v11, 0xa0

    const/16 v12, 0x31

    const/16 v13, 0x11

    const/16 v14, 0x8

    const/16 v15, 0x11

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    .line 294
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 295
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 298
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v8, "AppUpdate"

    const v10, 0x7f110232

    .line 299
    invoke-static {v8, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v8, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v13, 0x17

    const/16 v14, 0x10

    const/16 v15, 0x17

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    .line 303
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    .line 304
    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 306
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v11, 0x31

    .line 310
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    iget-object v11, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x31

    const/16 v17, 0x17

    const/16 v18, 0x5

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LComponents/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    .line 314
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 317
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 321
    new-instance v6, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v4}, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda2;-><init>(LComponents/UpdateAppAlertDialog;Landroid/widget/TextView;)V

    iput-object v6, v0, LComponents/UpdateAppAlertDialog;->setChangelogRunnable:Ljava/lang/Runnable;

    .line 327
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x33

    const/16 v11, 0x17

    const/16 v12, 0xf

    const/16 v13, 0x17

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    const/16 v8, 0x53

    invoke-direct {v4, v7, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v6, 0x82

    .line 331
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 332
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    .line 333
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 335
    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v6, v0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v3, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v4, LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v4, v0, v1, v2}, LComponents/UpdateAppAlertDialog$BottomSheetCell;-><init>(LComponents/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "AppUpdateDownloadNow"

    const v8, 0x7f110234

    .line 339
    invoke-static {v7, v8, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 340
    invoke-static {v4}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$700(LComponents/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v6

    new-instance v7, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda0;-><init>(LComponents/UpdateAppAlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x1

    const/16 v9, 0x32

    const/16 v10, 0x53

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x32

    .line 344
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v6, LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {v6, v0, v1, v5}, LComponents/UpdateAppAlertDialog$BottomSheetCell;-><init>(LComponents/UpdateAppAlertDialog;Landroid/content/Context;Z)V

    const-string v1, "AppUpdateRemindMeLater"

    const v5, 0x7f110237

    .line 347
    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 348
    invoke-static {v6}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$700(LComponents/UpdateAppAlertDialog$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v2, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, LComponents/UpdateAppAlertDialog$$ExternalSyntheticLambda1;-><init>(LComponents/UpdateAppAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, -0x1

    const/16 v8, 0x32

    const/16 v9, 0x53

    const/4 v10, 0x0

    .line 349
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, LComponents/UpdateAppAlertDialog;->updateUI()V

    .line 352
    iget-object v1, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 353
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 354
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x32

    .line 355
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 356
    iget-object v2, v0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v1, v0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 358
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 359
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(LComponents/UpdateAppAlertDialog;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, LComponents/UpdateAppAlertDialog;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$200(LComponents/UpdateAppAlertDialog;)V
    .locals 0

    .line 40
    invoke-direct {p0}, LComponents/UpdateAppAlertDialog;->updateLayout()V

    return-void
.end method

.method static synthetic access$300(LComponents/UpdateAppAlertDialog;)I
    .locals 0

    .line 40
    iget p0, p0, LComponents/UpdateAppAlertDialog;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$400(LComponents/UpdateAppAlertDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(LComponents/UpdateAppAlertDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40
    iget-object p0, p0, LComponents/UpdateAppAlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(LComponents/UpdateAppAlertDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(LComponents/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iget-object p0, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(LComponents/UpdateAppAlertDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iput-object p1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(LComponents/UpdateAppAlertDialog;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 14

    .line 280
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 281
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 282
    iget-object v1, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    if-eqz v6, :cond_0

    .line 285
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "250_250"

    const-string v8, "update"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

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

    .line 322
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 324
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    .line 341
    iget p1, p0, LComponents/UpdateAppAlertDialog;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v1, "update"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 348
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 364
    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 365
    :cond_1
    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

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

    .line 367
    iget-object v1, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_3
    iget-object v1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 372
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v0, [Landroid/animation/Animator;

    .line 373
    iget-object v3, p0, LComponents/UpdateAppAlertDialog;->shadow:Landroid/view/View;

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

    .line 374
    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 375
    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, LComponents/UpdateAppAlertDialog$3;

    invoke-direct {v0, p0, p2}, LComponents/UpdateAppAlertDialog$3;-><init>(LComponents/UpdateAppAlertDialog;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iget-object p1, p0, LComponents/UpdateAppAlertDialog;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 398
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    iget-object v2, p0, LComponents/UpdateAppAlertDialog;->location:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 400
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 401
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 402
    iget-object v3, p0, LComponents/UpdateAppAlertDialog;->location:[I

    aget v3, v3, v2

    iget-object v4, p0, LComponents/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

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

    .line 403
    invoke-direct {p0, v1, v1}, LComponents/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0, v1, v2}, LComponents/UpdateAppAlertDialog;->runShadowAnimation(IZ)V

    .line 407
    :goto_0
    iget v1, p0, LComponents/UpdateAppAlertDialog;->scrollOffsetY:I

    if-eq v1, v0, :cond_1

    .line 408
    iput v0, p0, LComponents/UpdateAppAlertDialog;->scrollOffsetY:I

    .line 409
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->scrollView:Landroidx/core/widget/NestedScrollView;

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

    .line 53
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iput-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 54
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->setStickerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    iget-object v3, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

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

    .line 62
    iget-object v3, p0, LComponents/UpdateAppAlertDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    if-eqz v3, :cond_2

    .line 64
    iget-object v4, p0, LComponents/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    const v5, 0x7f110238

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

    .line 66
    :cond_2
    iget-object v3, p0, LComponents/UpdateAppAlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_2
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->setChangelogRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 72
    :cond_3
    iget-object v0, p0, LComponents/UpdateAppAlertDialog;->changelogTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method
