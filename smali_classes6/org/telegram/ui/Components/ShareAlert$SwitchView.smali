.class Lorg/telegram/ui/Components/ShareAlert$SwitchView;
.super Landroid/widget/FrameLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchView"
.end annotation


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private currentTab:I

.field private lastColor:I

.field private leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchBackground:Landroid/view/View;

.field private slidingView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$bE8BgWxHxN12Hgl1xW4Gcfjobzk(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mih3jliXx92_0JmhUhbgwM5qdKc(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 11

    .line 382
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->paint:Landroid/graphics/Paint;

    .line 385
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rect:Landroid/graphics/RectF;

    .line 387
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->searchBackground:Landroid/view/View;

    const/16 v1, 0x12

    .line 388
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchBackground:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    :goto_0
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$300(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->searchBackground:Landroid/view/View;

    const/4 v1, -0x1

    const/16 v2, 0x24

    const/16 v3, 0x33

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/content/Context;Lorg/telegram/ui/Components/ShareAlert;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    const/4 v1, -0x1

    .line 417
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 420
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_tabs_mic1:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->VoipGroupInviteCanSpeak:I

    const-string v4, "VoipGroupInviteCanSpeak"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 429
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$900(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_tabs_mic2:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->VoipGroupInviteListenOnly:I

    const-string v0, "VoipGroupInviteListenOnly"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 367
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I
    .locals 0

    .line 367
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I
    .locals 0

    .line 367
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lastColor:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 367
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 367
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/Paint;
    .locals 0

    .line 367
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/RectF;
    .locals 0

    .line 367
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 426
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->switchToTab(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 435
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->switchToTab(I)V

    return-void
.end method

.method private switchToTab(I)V
    .locals 6

    .line 443
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-ne v0, p1, :cond_0

    return-void

    .line 446
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 448
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 450
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    .line 451
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v0, [F

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 461
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->onTabSwitch(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 466
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 468
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 471
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0xe

    .line 472
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 474
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 475
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 481
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onTabSwitch(I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
