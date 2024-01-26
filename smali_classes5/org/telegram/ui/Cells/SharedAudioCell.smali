.class public Lorg/telegram/ui/Cells/SharedAudioCell;
.super Landroid/widget/FrameLayout;
.source "SharedAudioCell.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private TAG:I

.field private buttonPressed:Z

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private captionLayout:Landroid/text/StaticLayout;

.field captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private captionLayoutLeft:F

.field private captionLayoutWidth:F

.field private captionTextPaint:Landroid/text/TextPaint;

.field private captionY:I

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkForButtonPress:Z

.field private currentAccount:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private dateLayout:Landroid/text/StaticLayout;

.field private dateLayoutX:I

.field private description2TextPaint:Landroid/text/TextPaint;

.field private descriptionLayout:Landroid/text/StaticLayout;

.field descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private descriptionLayoutLeft:F

.field private descriptionLayoutWidth:F

.field private descriptionY:I

.field private dotSpan:Landroid/text/SpannableStringBuilder;

.field enterAlpha:F

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private hasMiniProgress:I

.field private isChatNoForwards:Z

.field private isInPlaylist:Z

.field private isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private miniButtonPressed:Z

.field private miniButtonState:I

.field private needDivider:Z

.field private optionsButton:Landroid/widget/ImageView;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field showName:Z

.field showNameProgress:F

.field showReorderIcon:Z

.field showReorderIconProgress:F

.field private titleLayout:Landroid/text/StaticLayout;

.field titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private titleLayoutLeft:F

.field private titleLayoutWidth:F

.field titlePaint:Landroid/text/TextPaint;

.field private titleY:I

.field private viewType:I


# direct methods
.method public static synthetic $r8$lambda$1t6JYtGvCPyJWMDx7mkTLzseMdk(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$1w_et4-pBk9VPXy1f-Wy5hko0Ks(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$1(Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4ACR02G7EO7RdskGKQe30y2GlCw(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$AA0_MCgcEy23MsVcwe0vBBzHc-o(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$C3PX-xHGqlChWrBbSPlLo2k_v74(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$NHQt_npuLXr1hk6JUtup_Lj12Z0(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$O151UuYM0PDMZC4W7h9-YjAkJsI(Lorg/telegram/ui/Cells/SharedAudioCell;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$0(Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wgqnd-PR8SFDRWzX32fe-km1h-k(Lorg/telegram/ui/Cells/SharedAudioCell;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRVZyxI1265ltSS-O9MP7mkysnQ(Lorg/telegram/ui/Cells/SharedAudioCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jUl0mD_FvotNLIivie3Ztl2UaT4(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$8()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 348
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x9

    .line 296
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    const/16 v4, 0x1d

    .line 301
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    .line 306
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    .line 315
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    const/4 v4, 0x1

    .line 334
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    const/4 v5, 0x0

    .line 335
    iput v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    .line 879
    iput v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    .line 349
    iput-object v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 350
    iput v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    .line 351
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 352
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 354
    new-instance v6, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v6, v0, v3}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 355
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 357
    iget v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->TAG:I

    const/4 v6, 0x0

    .line 358
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 360
    new-instance v7, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x16

    invoke-direct {v7, v1, v8, v3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v8, 0x4

    .line 361
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v10, -0x1

    invoke-virtual {v7, v10, v8, v9}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 363
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 364
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 365
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    :cond_0
    or-int/lit8 v12, v8, 0x30

    if-eqz v9, :cond_1

    move v13, v5

    goto :goto_0

    :cond_1
    const v8, 0x42186666    # 38.1f

    move v13, v8

    :goto_0
    const v14, 0x42006666    # 32.1f

    if-eqz v9, :cond_2

    const/high16 v5, 0x40c00000    # 6.0f

    :cond_2
    move v15, v5

    const/16 v16, 0x0

    const/16 v10, 0x18

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    sget v5, Lcom/iMe/common/IdFabric$CustomType;->SHARED_AUDIO_CELL_MUSIC:I

    if-ne v2, v5, :cond_3

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_tone_on:I

    invoke-static {v5, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 370
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    .line 371
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 372
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 375
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v7, "AccDescrMoreOptions"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v7, 0x30

    const/16 v8, 0x30

    const/16 v9, 0x35

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/16 v1, 0xd

    if-ne v2, v4, :cond_4

    .line 395
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    .line 396
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 398
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, "."

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    .line 399
    new-instance v5, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-virtual {v2, v5, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 402
    :cond_4
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    .line 403
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v3, :cond_5

    .line 406
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titlePaint:Landroid/text/TextPaint;

    const-string v2, "fonts/rmedium.ttf"

    .line 407
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 408
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titlePaint:Landroid/text/TextPaint;

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 409
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titlePaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private checkAudioMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x24

    .line 599
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 601
    iget v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    const/16 v3, 0x1b

    .line 602
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 603
    iget v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonX:I

    add-int v7, v6, v3

    if-lt v0, v7, :cond_0

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    if-gt v0, v6, :cond_0

    iget v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonY:I

    add-int v7, v6, v3

    if-lt v1, v7, :cond_0

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    if-gt v1, v6, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 605
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 607
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 609
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_1
    move p1, v4

    goto/16 :goto_4

    .line 611
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkForButtonPress:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 612
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 613
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 615
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 618
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 619
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    if-eqz p1, :cond_3

    .line 620
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 621
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 622
    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedMiniButton(Z)V

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 624
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz p1, :cond_4

    .line 625
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 626
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 627
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    .line 628
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 630
    :cond_4
    :goto_2
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 631
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 632
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 633
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 634
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 635
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 636
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    if-nez v2, :cond_7

    .line 637
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    if-eqz p1, :cond_7

    .line 638
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 639
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7
    :goto_3
    move p1, v5

    .line 642
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    if-nez p1, :cond_9

    .line 643
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :cond_9
    :goto_5
    return v4
.end method

.method private didPressedMiniButton(Z)V
    .locals 4

    .line 664
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 665
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 667
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v2, v3, v1, v0}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 668
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 669
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    .line 671
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 674
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 675
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 677
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 937
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 938
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 940
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 942
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayoutX:I

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 947
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    .line 948
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v9

    .line 949
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_4

    .line 950
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v9

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 952
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 953
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x18

    goto :goto_2

    :cond_5
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xc

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    :cond_7
    move v2, v12

    :goto_4
    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutWidth:F

    sub-float/2addr v2, v3

    goto :goto_5

    :cond_8
    move v2, v14

    :goto_5
    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 954
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 955
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v13, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 957
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_9

    .line 958
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 962
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_c

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 965
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x18

    goto :goto_6

    :cond_a
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutWidth:F

    sub-float/2addr v2, v3

    goto :goto_7

    :cond_b
    move v2, v14

    :goto_7
    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 966
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 970
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_11

    .line 971
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 972
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v13

    .line 973
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_d

    .line 974
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v13

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 976
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 977
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x18

    goto :goto_8

    :cond_e
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutWidth:F

    sub-float/2addr v2, v3

    goto :goto_9

    :cond_f
    move v2, v14

    :goto_9
    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 979
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz v1, :cond_10

    .line 980
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v12, v12, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 982
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0x14

    .line 983
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10, v1, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 986
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 987
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 989
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_11

    .line 990
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 994
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz v2, :cond_12

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    goto :goto_a

    :cond_12
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    :goto_a
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 995
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setOverlayImageAlpha(F)V

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 998
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    if-eqz v1, :cond_14

    .line 999
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const-string v2, "paintDivider"

    const/16 v3, 0x48

    if-eqz v1, :cond_13

    const/4 v4, 0x0

    .line 1000
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v6, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v7, v1

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v8

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 1002
    :cond_13
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_14
    :goto_b
    return-void
.end method

.method private drawReorder(Landroid/graphics/Canvas;)V
    .locals 7

    .line 915
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    :cond_0
    const v2, 0x3dda740e

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 916
    iget v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_1

    add-float/2addr v4, v2

    .line 917
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 918
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 919
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_2

    sub-float/2addr v0, v2

    .line 920
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 921
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 923
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 925
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 926
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 929
    iget v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    int-to-float v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 930
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 931
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 932
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 732
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getMiniIconForCurrentState()I
    .locals 1

    .line 721
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-gez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    .line 383
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    .line 385
    sget v0, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 1

    const/4 v0, 0x2

    .line 386
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 1

    const/4 v0, 0x5

    .line 387
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    const/4 v0, 0x4

    .line 388
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 4

    .line 379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    .line 380
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 381
    invoke-static {p1, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 382
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 383
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->music_player_remove_from_playlist:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->music_player_add_to_playlist:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isChatNoForwards:Z

    xor-int/lit8 v0, v0, 0x1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v2, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v3, "Forward"

    .line 384
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isChatNoForwards:Z

    xor-int/lit8 v0, v0, 0x1

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    sget v2, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    .line 385
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isChatNoForwards:Z

    xor-int/lit8 v0, v0, 0x1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v3, "ShareFile"

    .line 386
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isChatNoForwards:Z

    xor-int/lit8 v0, v0, 0x1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v2, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v3, "SaveToMusic"

    .line 387
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v1, Lorg/telegram/messenger/R$string;->ShowInChat:I

    const-string v2, "ShowInChat"

    .line 388
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$onSubItemClick$0(Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 12

    .line 123
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessagePreviewParams;Z)I

    .line 124
    instance-of v0, p1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->UNDO_AUDIO_SAVE_TO_CLOUD:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSubItemClick$1(Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v1, p8

    const/4 v15, 0x1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v1, v12}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return v15

    .line 151
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x0

    if-gt v1, v15, :cond_5

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    if-nez p5, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->isInMultiSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 163
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "scrollToTopOnResume"

    .line 164
    invoke-virtual {v3, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "user_id"

    .line 168
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    neg-long v1, v1

    const-string v4, "chat_id"

    .line 170
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    :goto_0
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 173
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v10, p2

    .line 174
    invoke-virtual {v10, v1, v15, v11}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v1, v15, v12}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 177
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_3

    :cond_5
    :goto_1
    move-object/from16 v10, p2

    .line 152
    invoke-virtual {v13, v12}, Lorg/telegram/ui/DialogsActivity;->filterSelectedForwardingMessages(Ljava/util/ArrayList;)V

    move v9, v11

    .line 153
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_7

    .line 154
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p5, :cond_6

    .line 156
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-boolean v2, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v5, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v17, v3

    move/from16 v26, v2

    move/from16 v27, v5

    invoke-static/range {v16 .. v30}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 158
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v8, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v16, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v2, p1

    move/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessagePreviewParams;Z)I

    add-int/lit8 v9, v19, 0x1

    move-object/from16 v10, p2

    const/4 v11, 0x0

    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 180
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 183
    instance-of v2, v1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v2, :cond_9

    .line 184
    check-cast v1, Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MediaActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 186
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v15, :cond_8

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    const/16 v4, 0x35

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    const-wide/16 v2, 0x0

    const/16 v4, 0x35

    .line 189
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v1

    move-wide/from16 p2, v2

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_9
    :goto_4
    return v15
.end method

.method private synthetic lambda$onSubItemClick$2(Landroid/net/Uri;)V
    .locals 1

    const/4 p1, 0x0

    .line 277
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public didPressedButton()V
    .locals 7

    .line 682
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 683
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 685
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v5, v6, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 687
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-eq v0, v4, :cond_1

    .line 689
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 693
    :cond_1
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 695
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 698
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 702
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v2, :cond_4

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 707
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 708
    iput v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 710
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    .line 712
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 713
    iput v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 715
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 872
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 887
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    const v1, 0x3dda740e

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_0

    add-float/2addr v4, v1

    .line 888
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 889
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 890
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_1

    sub-float/2addr v0, v1

    .line 891
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 892
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 894
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 895
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 896
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v8, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    sub-float/2addr v3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v9, v3

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 897
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 899
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 900
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 902
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    mul-float/2addr v1, v0

    float-to-int v7, v1

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 903
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawInternal(Landroid/graphics/Canvas;)V

    .line 904
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 905
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawReorder(Landroid/graphics/Canvas;)V

    .line 906
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 908
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawInternal(Landroid/graphics/Canvas;)V

    .line 909
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawReorder(Landroid/graphics/Canvas;)V

    .line 910
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 848
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->TAG:I

    return v0
.end method

.method public initStreamingIcons()V
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    return-void
.end method

.method protected needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 556
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    .line 559
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 560
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 561
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 563
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 564
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 565
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 570
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 571
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onDetachedFromWindow()V

    .line 573
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 574
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 575
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 817
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 857
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 858
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 859
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "AccDescrMusicInfo"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 864
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 865
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 592
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 416
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 417
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    .line 418
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    .line 420
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 421
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 423
    iget-object v1, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    if-eqz v1, :cond_0

    .line 424
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    move v1, v0

    .line 430
    iget v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    const/16 v3, 0x14

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 431
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v8, v0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 432
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 433
    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move v12, v0

    move v13, v0

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    sub-int v8, v1, v0

    .line 434
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayoutX:I

    const/16 v8, 0xc

    .line 435
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    const/16 v8, 0xa

    const/16 v9, 0x20

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 440
    :try_start_0
    iget v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v12, v5, :cond_3

    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 441
    :cond_2
    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v12, v5}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    .line 443
    :cond_3
    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 445
    :goto_1
    iget-object v13, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v14, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object v12, v13

    .line 449
    :cond_4
    iget-object v13, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titlePaint:Landroid/text/TextPaint;

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    :goto_2
    sub-int v14, v1, v0

    int-to-float v14, v14

    .line 450
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v12, v13, v14, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 451
    new-instance v12, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    sub-int v17, v14, v0

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v12

    move-object/from16 v16, v13

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    .line 452
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v11

    :goto_3
    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutLeft:F

    .line 453
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_4

    :cond_7
    move v0, v11

    :goto_4
    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutWidth:F

    .line 454
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v12, v5, [Landroid/text/Layout;

    iget-object v13, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    aput-object v13, v12, v6

    invoke-static {v6, v7, v0, v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 459
    :goto_5
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 460
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v12, "\n"

    const-string v13, " "

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v12, " +"

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v12, v3, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 461
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 463
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    const/16 v13, 0x82

    invoke-static {v0, v3, v1, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    int-to-float v12, v1

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 464
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int v17, v1, v12

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v0

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    .line 465
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_6

    :cond_8
    move v0, v11

    :goto_6
    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutLeft:F

    .line 466
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_7

    :cond_9
    move v0, v11

    :goto_7
    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutWidth:F

    .line 468
    :cond_a
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v5, [Landroid/text/Layout;

    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    aput-object v12, v3, v6

    invoke-static {v6, v7, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 471
    :cond_b
    :try_start_1
    iget v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v0, v5, :cond_e

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 472
    :cond_c
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v8

    double-to-int v0, v8

    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object v0

    .line 473
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_d

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    goto :goto_8

    :cond_d
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    :goto_8
    move-object v14, v3

    int-to-float v3, v1

    .line 474
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v14, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 475
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v15, v1, v3

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    goto :goto_a

    .line 477
    :cond_e
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object v0, v3

    .line 482
    :cond_f
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_10

    .line 483
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3, v5}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 485
    :cond_10
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_11

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    goto :goto_9

    :cond_11
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    :goto_9
    move-object v14, v3

    int-to-float v3, v1

    .line 486
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v14, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 487
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v15, v1, v3

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 489
    :goto_a
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_b

    :cond_12
    move v0, v11

    :goto_b
    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutLeft:F

    .line 490
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v11

    :cond_13
    iput v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutWidth:F

    .line 491
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v1, v5, [Landroid/text/Layout;

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    aput-object v3, v1, v6

    invoke-static {v6, v7, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 493
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 496
    :goto_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    const/16 v8, 0x12

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    :goto_d
    add-int/2addr v1, v6

    iget-boolean v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    add-int/2addr v1, v3

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/16 v0, 0x34

    .line 498
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 499
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    goto :goto_e

    :cond_15
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 500
    :goto_e
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonX:I

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 502
    iget-object v2, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 504
    iget-object v2, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_16

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    .line 505
    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 509
    :cond_16
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    const/16 v1, 0x1d

    if-eqz v0, :cond_17

    .line 510
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    .line 511
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    goto :goto_f

    .line 513
    :cond_17
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    :goto_f
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    long-to-float p1, p2

    long-to-float p2, p4

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 828
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 829
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 830
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 831
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-eq p1, p3, :cond_1

    .line 832
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    goto :goto_0

    .line 835
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    .line 836
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSubItemClick(I)V
    .locals 7

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    .line 107
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    .line 108
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lcom/iMe/fork/controller/MusicController;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object p1

    .line 109
    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 111
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v4, v5, v2}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/iMe/fork/controller/MusicController;->showAddToPlaylistUndoView(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v4, v5, v1}, Lcom/iMe/fork/controller/MusicController;->addPlaylistMessage(JLjava/util/List;)V

    .line 116
    invoke-virtual {p1, v0, v3}, Lcom/iMe/fork/controller/MusicController;->showAddToPlaylistUndoView(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 118
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_7

    .line 120
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    if-ne p1, v0, :cond_4

    .line 121
    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 122
    new-instance v0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 131
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_3

    .line 132
    new-instance v1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {v1, p1, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 134
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    goto/16 :goto_7

    :cond_4
    if-ne p1, v3, :cond_6

    .line 137
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    if-eq p1, v0, :cond_5

    .line 138
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 140
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "onlySelect"

    .line 141
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const-string v1, "dialogsType"

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 196
    invoke-virtual {v2, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_7

    :cond_6
    const/4 v0, 0x2

    const/4 v4, 0x0

    if-ne p1, v0, :cond_c

    .line 201
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 202
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move-object p1, v4

    :cond_8
    if-nez p1, :cond_9

    .line 208
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 211
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x18

    const-string v5, "android.intent.extra.STREAM"

    if-lt v1, v4, :cond_a

    .line 216
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 222
    :cond_a
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const-string p1, "ShareFile"

    .line 225
    sget v1, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 227
    :cond_b
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    .line 228
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "OK"

    .line 229
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "PleaseDownload"

    .line 230
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 231
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    .line 234
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 237
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    if-eq p1, v0, :cond_d

    .line 238
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 241
    :cond_d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 243
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 244
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    const-string v3, "enc_id"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 245
    :cond_e
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "user_id"

    .line 246
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 248
    :cond_f
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 249
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_10

    const-string v5, "migrated_to"

    .line 250
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v3, v3

    :cond_10
    neg-long v3, v3

    const-string v0, "chat_id"

    .line 253
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 255
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v3, "message_id"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 257
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_7

    :cond_11
    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    .line 259
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_13

    const/16 v1, 0x1c

    if-le p1, v1, :cond_12

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p1, :cond_13

    :cond_12
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 260
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 263
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 269
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_3

    :cond_15
    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_17

    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    move-object v1, v4

    goto :goto_5

    .line 275
    :cond_17
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_5
    const/4 v3, 0x3

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_6

    :cond_18
    const-string v0, ""

    :goto_6
    move-object v5, v0

    new-instance v6, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_19
    :goto_7
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    const/4 p1, 0x0

    .line 823
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 649
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 651
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->checkAudioMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 653
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 654
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    move v0, v2

    :cond_1
    return v0
.end method

.method public setCheckForButtonPress(Z)V
    .locals 0

    .line 551
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkForButtonPress:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setEnterAnimationAlpha(F)V
    .locals 1

    .line 1008
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1009
    iput p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    .line 1010
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    .line 518
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    .line 519
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 521
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(J)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isChatNoForwards:Z

    .line 522
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    sget v0, Lcom/iMe/common/IdFabric$CustomType;->SHARED_AUDIO_CELL_MUSIC:I

    if-ne p2, v0, :cond_0

    .line 523
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p2}, Lcom/iMe/fork/controller/MusicController;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/iMe/fork/controller/MusicController;->getPlaylistForDialog(J)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    .line 526
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 528
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x168

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 529
    :goto_0
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 532
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 534
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Ljava/lang/String;)V

    goto :goto_2

    .line 536
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v0, v0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    goto :goto_2

    .line 530
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :goto_2
    const/4 p1, 0x0

    .line 539
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public showName(ZZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1028
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 1030
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    if-ne p2, p1, :cond_2

    return-void

    .line 1033
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    .line 1034
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public showReorderIcon(ZZ)V
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1019
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1021
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 1023
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateButtonState(ZZ)V
    .locals 10

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 748
    :goto_1
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    long-to-int v1, v8

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v6

    .line 749
    :goto_2
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    move v2, v4

    goto :goto_3

    .line 752
    :cond_4
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    .line 753
    iput v7, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 755
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    goto :goto_4

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    :goto_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniProgressBackgroundColor(I)V

    .line 757
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v1, :cond_6

    .line 758
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 761
    :cond_6
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    goto :goto_6

    .line 759
    :cond_7
    :goto_5
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 763
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 764
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    if-ne v1, v4, :cond_8

    .line 765
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 766
    iput v7, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    goto/16 :goto_a

    .line 769
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 770
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 771
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    goto/16 :goto_a

    .line 774
    :cond_9
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 776
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto/16 :goto_a

    .line 780
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto/16 :goto_a

    :cond_b
    if-eqz v2, :cond_e

    .line 785
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 786
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v0, :cond_c

    .line 787
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 790
    :cond_c
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    goto :goto_8

    .line 788
    :cond_d
    :goto_7
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 792
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 794
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_a

    .line 796
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 797
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 799
    iput v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_9

    :cond_f
    const/4 v1, 0x4

    .line 802
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 803
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 805
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_9

    .line 807
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 810
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 811
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_a
    return-void
.end method
