.class public Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;
.super Landroid/widget/FrameLayout;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintInnerCell"
.end annotation


# instance fields
.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;


# direct methods
.method public static synthetic $r8$lambda$FdE5O8KREfPhOdMb_L8BJuyk2-c(Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V
    .locals 7

    .line 198
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 202
    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_0

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->fork_topic_new:I

    const/16 v2, 0x7d

    invoke-virtual {p2, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->filter_new:I

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 206
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 209
    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p1

    if-ne p1, v0, :cond_1

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x7d

    const/16 v1, 0x7d

    const/16 v2, 0x11

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 212
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x64

    const/16 v1, 0x64

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x9c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
