.class Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockChannelCell"
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonWidth:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

.field private currentState:I

.field private currentType:I

.field private imageView:Landroid/widget/ImageView;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textView:Landroid/widget/TextView;

.field private textX:I

.field private textX2:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$DKnhx7DKCgdblTXK2peYxVCdX-c(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 2

    .line 10762
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10763
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 10751
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    const/16 p1, 0xb

    .line 10752
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    .line 10764
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    .line 10765
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 10766
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 10767
    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    .line 10769
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 p4, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 10770
    invoke-virtual {p3, p4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10771
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const-string p4, "fonts/rmedium.ttf"

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10772
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    sget p4, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    const-string v0, "ChannelJoin"

    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10773
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/16 p4, 0x13

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setGravity(I)V

    .line 10774
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 p4, -0x2

    const/16 v0, 0x27

    const/16 v1, 0x35

    invoke-static {p4, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10775
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    new-instance p4, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10783
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    .line 10784
    sget p4, Lorg/telegram/messenger/R$drawable;->list_check:I

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10785
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10786
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10788
    new-instance p3, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {p3, p2, p1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 10789
    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 10776
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentState:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 10779
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 10780
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$20700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$20800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;",
            ">;)V"
        }
    .end annotation

    .line 10922
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10923
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 10901
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10904
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    const/16 v0, 0x27

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10905
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 10906
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10907
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10908
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 10910
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10912
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-nez v0, :cond_2

    .line 10913
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->access$15000(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10915
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10916
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 10894
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    const/16 p3, 0x13

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int/2addr p2, p4

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    const/16 p5, 0x14

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p4, v0

    const/16 v0, 0x27

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, p4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 10895
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 10896
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 10871
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0x30

    .line 10872
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 10874
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v1, 0x27

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 10875
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    .line 10876
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 10877
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 10878
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz p1, :cond_1

    .line 10879
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 p1, 0x34

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p2, p1

    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    sub-int v4, p2, p1

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_LEFT()Landroid/text/Layout$Alignment;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$14900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 10880
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10881
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    goto :goto_0

    .line 10883
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    .line 10885
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_1

    .line 10886
    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10887
    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10862
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-eqz v0, :cond_0

    .line 10863
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 10865
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V
    .locals 5

    .line 10793
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 10795
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-nez v0, :cond_0

    .line 10796
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 10797
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 10798
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 10799
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 10800
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$20500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10801
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x22

    invoke-static {v4, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10802
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$20300()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 10804
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10805
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10806
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10808
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10809
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10813
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->access$20702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 10814
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez p1, :cond_2

    .line 10815
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    .line 10817
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_2

    .line 10810
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p0, v2, p1}, Lorg/telegram/ui/ArticleViewer;->access$20600(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 p1, 0x1

    .line 10811
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 10820
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setState(IZ)V
    .locals 12

    .line 10824
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 10825
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10827
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    .line 10829
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const/16 v5, 0x9

    new-array v5, v5, [Landroid/animation/Animator;

    .line 10830
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    if-nez p1, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v0

    :goto_0
    const/4 v10, 0x0

    aput v9, v8, v10

    .line 10831
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    if-nez p1, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    aput v9, v8, v10

    .line 10832
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v3, [F

    if-nez p1, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v2

    :goto_2
    aput v9, v8, v10

    .line 10833
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    if-ne p1, v3, :cond_4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v0

    :goto_3
    aput v11, v9, v10

    .line 10835
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    if-ne p1, v3, :cond_5

    move v11, v4

    goto :goto_4

    :cond_5
    move v11, v2

    :goto_4
    aput v11, v9, v10

    .line 10836
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v3, [F

    if-ne p1, v3, :cond_6

    move v11, v4

    goto :goto_5

    :cond_6
    move v11, v2

    :goto_5
    aput v11, v9, v10

    .line 10837
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    if-ne p1, v1, :cond_7

    move v0, v4

    :cond_7
    aput v0, v9, v10

    .line 10839
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    if-ne p1, v1, :cond_8

    move v9, v4

    goto :goto_6

    :cond_8
    move v9, v2

    :goto_6
    aput v9, v8, v10

    .line 10840
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x8

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    if-ne p1, v1, :cond_9

    move v2, v4

    :cond_9
    aput v2, v3, v10

    .line 10841
    invoke-static {v6, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v5, v0

    .line 10830
    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10843
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10844
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_e

    .line 10846
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez p1, :cond_b

    move v5, v4

    goto :goto_7

    :cond_b
    move v5, v0

    :goto_7
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 10847
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez p1, :cond_c

    move v5, v4

    goto :goto_8

    :cond_c
    move v5, v2

    :goto_8
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setScaleX(F)V

    .line 10848
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez p1, :cond_d

    move v5, v4

    goto :goto_9

    :cond_d
    move v5, v2

    :goto_9
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setScaleY(F)V

    .line 10850
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne p1, v3, :cond_e

    move v5, v4

    goto :goto_a

    :cond_e
    move v5, v0

    :goto_a
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 10851
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne p1, v3, :cond_f

    move v5, v4

    goto :goto_b

    :cond_f
    move v5, v2

    :goto_b
    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 10852
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne p1, v3, :cond_10

    move v3, v4

    goto :goto_c

    :cond_10
    move v3, v2

    :goto_c
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 10854
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_11

    move v0, v4

    :cond_11
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10855
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_12

    move v0, v4

    goto :goto_d

    :cond_12
    move v0, v2

    :goto_d
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 10856
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_13

    move v2, v4

    :cond_13
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_e
    return-void
.end method
