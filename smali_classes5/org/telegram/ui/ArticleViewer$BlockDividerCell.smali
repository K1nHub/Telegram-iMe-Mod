.class Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockDividerCell"
.end annotation


# instance fields
.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9673
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9670
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 9683
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 9684
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9685
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$8000()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 9678
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x12

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
