.class public Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;
.super Landroid/widget/FrameLayout;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintInnerCell"
.end annotation


# instance fields
.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private messageTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$qW3vYAmxc8eTvUrUDGgWZSzrrv0(Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 9

    .line 373
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 375
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 377
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fork_topics:I

    const/16 v3, 0x6e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->filters:I

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 381
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 385
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x6e

    const/16 v3, 0x6e

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const-string p2, "windowBackgroundWhiteGrayText4"

    .line 397
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p2, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->topic_new_info:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 404
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->CreateNewFilterInfo:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CreateNewFilterInfo"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/16 v3, 0x28

    const/16 v4, 0x79

    const/16 v5, 0x28

    const/16 v6, 0x18

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 410
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
