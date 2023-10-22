.class Lorg/telegram/ui/PhotoViewer$QualityChooseView;
.super Landroid/view/View;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityChooseView"
.end annotation


# instance fields
.field private circleSize:I

.field private gapSize:I

.field private hightQualityDescription:Ljava/lang/String;

.field private lineSize:I

.field private lowQualityDescription:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private sideSide:I

.field private startMovingQuality:I

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 17901
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 17902
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17904
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    .line 17905
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0xe

    .line 17906
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 17907
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const p2, -0x323233

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 17909
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVideoCompressLow:I

    const-string p2, "AccDescrVideoCompressLow"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lowQualityDescription:Ljava/lang/String;

    .line 17910
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVideoCompressHigh:I

    const-string p2, "AccDescrVideoCompressHigh"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 17954
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v6, :cond_0

    .line 17955
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    mul-int/2addr v2, v7

    sub-int/2addr v2, v7

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    sub-int/2addr v1, v6

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    goto :goto_0

    .line 17957
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    .line 17959
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v7

    const/4 v8, 0x6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v9, v0, v1

    const/4 v0, 0x0

    move v10, v0

    .line 17960
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 17961
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v10

    add-int/2addr v0, v1

    div-int/2addr v2, v7

    add-int/2addr v0, v2

    .line 17962
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-gt v10, v1, :cond_1

    .line 17963
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v2, -0xac5111

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 17965
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v2, 0x66ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    int-to-float v1, v0

    int-to-float v2, v9

    .line 17968
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-ne v10, v3, :cond_2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_3

    :cond_2
    iget v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/2addr v3, v7

    :goto_3
    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v10, :cond_5

    .line 17971
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/2addr v1, v7

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    sub-int/2addr v0, v1

    .line 17972
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    add-int/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v10, v1, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    goto :goto_4

    :cond_3
    move v1, v3

    .line 17973
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    if-ne v10, v4, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    :cond_4
    int-to-float v2, v0

    add-float/2addr v1, v2

    .line 17974
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v3, v0, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 17978
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lowQualityDescription:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    int-to-float v1, v1

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v9, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 17979
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 17980
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v9, v0

    int-to-float v0, v9

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 17946
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 p1, 0x8

    .line 17947
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    const/4 p1, 0x2

    .line 17948
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    const/16 p1, 0x12

    .line 17949
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 17915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 17916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 17917
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    .line 17918
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17920
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 17935
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 17936
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    if-eq p1, v0, :cond_3

    .line 17937
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$29800(Lorg/telegram/ui/PhotoViewer;I)V

    .line 17939
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$29902(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_2

    :cond_4
    :goto_0
    move p1, v3

    .line 17922
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$29600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 17923
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v1, v7

    div-int/lit8 v7, v8, 0x2

    add-int/2addr v1, v7

    .line 17924
    div-int/2addr v5, v4

    div-int/2addr v8, v4

    add-int/2addr v5, v8

    add-int/2addr v5, v6

    sub-int v6, v1, v5

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 17926
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 17927
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$20102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17928
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$29700(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 17929
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v2
.end method
