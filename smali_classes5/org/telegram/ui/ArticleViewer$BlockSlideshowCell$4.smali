.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 8653
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 8656
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$18100(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8660
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$18500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x7

    .line 8661
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 8663
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0xd

    if-ge v1, v3, :cond_1

    .line 8664
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    .line 8666
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 8667
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 8668
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/2addr v5, v3

    .line 8669
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v6

    sub-int v7, v0, v5

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    .line 8670
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F

    move-result v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v6, v0

    sub-int v0, v1, v6

    goto :goto_1

    .line 8671
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v6

    if-lt v6, v7, :cond_3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    :goto_0
    sub-int v0, v1, v0

    goto :goto_1

    .line 8673
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v0

    if-le v0, v5, :cond_4

    .line 8674
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F

    move-result v0

    int-to-float v6, v3

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v6

    sub-int/2addr v6, v5

    mul-int/2addr v6, v3

    add-int/2addr v0, v6

    goto :goto_0

    .line 8675
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    .line 8676
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F

    move-result v0

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    const/4 v1, 0x0

    move v3, v1

    .line 8679
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$18100(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 8680
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 8681
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17900(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result v6

    if-ne v6, v3, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$18600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$18700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_3
    const/4 v7, 0x5

    .line 8682
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v5, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    const/16 v7, 0xa

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8683
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
