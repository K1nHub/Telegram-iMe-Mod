.class Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifProgressEmptyView"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final kikliko:Z

.field private loadingState:Z

.field private final progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
    .locals 11

    .line 9534
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 9535
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9536
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->kikliko:Z

    .line 9538
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->imageView:Landroid/widget/ImageView;

    .line 9539
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9540
    sget v0, Lorg/telegram/messenger/R$drawable;->gif_empty:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9541
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "chat_emojiPanelEmptyText"

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9542
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9544
    new-instance p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->textView:Landroid/widget/TextView;

    .line 9545
    sget v0, Lorg/telegram/messenger/R$string;->NoGIFsFound:I

    const-string v2, "NoGIFsFound"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 9546
    invoke-virtual {p3, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9547
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0x2a

    const/4 v6, 0x0

    .line 9548
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9550
    new-instance p3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 p2, 0x8

    .line 9551
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "progressCircle"

    .line 9552
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    const/4 p1, -0x2

    const/16 p2, 0x11

    .line 9553
    invoke-static {p1, p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$17500(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/ImageView;
    .locals 0

    .line 9519
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$17600(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/TextView;
    .locals 0

    .line 9519
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$17700(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 9519
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 9558
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->kikliko:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    .line 9559
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 9561
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->loadingState:Z

    if-nez v0, :cond_1

    .line 9562
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    sub-int/2addr p2, v0

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x3

    int-to-float p2, p2

    const v0, 0x3fd9999a    # 1.7f

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    const/16 v0, 0x50

    .line 9564
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 9567
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setLoadingState(Z)V
    .locals 4

    .line 9575
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->loadingState:Z

    if-eq v0, p1, :cond_3

    .line 9576
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->loadingState:Z

    .line 9577
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9578
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9579
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
