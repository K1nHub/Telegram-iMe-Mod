.class Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideTextView"
.end annotation


# instance fields
.field arrowPaint:Landroid/graphics/Paint;

.field arrowPath:Landroid/graphics/Path;

.field bluePaint:Landroid/text/TextPaint;

.field cancelAlpha:F

.field cancelCharOffset:I

.field cancelLayout:Landroid/text/StaticLayout;

.field public cancelRect:Landroid/graphics/Rect;

.field cancelString:Ljava/lang/String;

.field cancelToProgress:F

.field cancelWidth:F

.field grayPaint:Landroid/text/TextPaint;

.field private lastSize:I

.field lastUpdateTime:J

.field moveForward:Z

.field private pressed:Z

.field selectableBackground:Landroid/graphics/drawable/Drawable;

.field slideProgress:F

.field slideToAlpha:F

.field slideToCancelString:Ljava/lang/String;

.field slideToCancelWidth:F

.field slideToLayout:Landroid/text/StaticLayout;

.field smallSize:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field xOffset:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 4

    .line 10836
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 10837
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10759
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 10772
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 10778
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    .line 10784
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    .line 10838
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const/16 v1, 0x140

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    if-gt p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    .line 10839
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    .line 10840
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/16 v3, 0xf

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10842
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    .line 10843
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10845
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10847
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10848
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10849
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p2, 0x3fcccccd    # 1.6f

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10850
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 10851
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 10853
    sget p1, Lorg/telegram/messenger/R$string;->SlideToCancel:I

    const-string p2, "SlideToCancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    .line 10854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    .line 10856
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    .line 10858
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    .line 10860
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->updateColors()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 10874
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 10875
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getSlideToCancelWidth()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 11018
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 10885
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 10886
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 10887
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .line 10822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10823
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 10824
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_0

    .line 10826
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 10827
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 10829
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3302(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 10830
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10921
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 10924
    :cond_0
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 10926
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 10927
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToAlpha:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 10928
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelAlpha:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 10929
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 10931
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    .line 10932
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    goto :goto_0

    .line 10934
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    sub-long/2addr v9, v11

    .line 10935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    .line 10936
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    const v11, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v4, v11

    if-lez v4, :cond_3

    .line 10937
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    const/high16 v11, 0x437a0000    # 250.0f

    const/4 v12, 0x3

    const/4 v13, 0x6

    if-eqz v4, :cond_2

    .line 10938
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    long-to-float v9, v9

    mul-float/2addr v12, v9

    add-float/2addr v4, v12

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 10939
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3

    .line 10940
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 10941
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    goto :goto_0

    .line 10944
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    long-to-float v9, v9

    mul-float/2addr v12, v9

    sub-float/2addr v4, v12

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 10945
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_3

    .line 10946
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 10947
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    .line 10953
    :cond_3
    :goto_0
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    .line 10955
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    sub-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v4, v10

    .line 10956
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    float-to-int v10, v10

    if-eqz v5, :cond_5

    .line 10957
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    invoke-virtual {v11, v12}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v11

    goto :goto_2

    :cond_5
    move v11, v8

    :goto_2
    if-eqz v5, :cond_6

    int-to-float v12, v4

    add-float/2addr v12, v11

    int-to-float v13, v10

    sub-float/2addr v12, v13

    goto :goto_3

    :cond_6
    move v12, v8

    :goto_3
    int-to-float v4, v4

    .line 10959
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    iget v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    sub-float v15, v7, v14

    mul-float/2addr v13, v15

    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    mul-float/2addr v13, v15

    add-float/2addr v4, v13

    mul-float/2addr v12, v14

    sub-float/2addr v4, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v4, v12

    const/16 v12, 0xc

    if-eqz v5, :cond_7

    move v13, v8

    goto :goto_4

    .line 10961
    :cond_7
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 10963
    :goto_4
    iget v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v14, v14, v7

    if-eqz v14, :cond_a

    .line 10964
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    neg-int v14, v14

    const/4 v15, 0x4

    div-int/2addr v14, v15

    int-to-float v14, v14

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    sub-float v6, v7, v6

    mul-float/2addr v14, v6

    float-to-int v6, v14

    .line 10965
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10966
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v14

    if-nez v14, :cond_8

    move v14, v8

    goto :goto_5

    :cond_8
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->getLeftProperty()F

    move-result v14

    :goto_5
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v14, v8, v15, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 10967
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    float-to-int v7, v4

    .line 10968
    iget-boolean v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x7

    goto :goto_6

    :cond_9
    const/16 v14, 0xa

    :goto_6
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v7, v14

    add-int/2addr v14, v6

    int-to-float v14, v14

    invoke-virtual {v1, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10969
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10970
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10972
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v7, v6

    int-to-float v6, v7

    .line 10973
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v7, v13

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10974
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10975
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10976
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10980
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v9

    if-nez v5, :cond_b

    .line 10982
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v13

    sub-float/2addr v6, v7

    :cond_b
    if-eqz v5, :cond_c

    add-float/2addr v4, v11

    goto :goto_7

    :cond_c
    int-to-float v4, v10

    .line 10989
    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v9, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v6

    float-to-int v11, v11

    invoke-virtual {v5, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 10990
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 10991
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_d

    .line 10992
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 10993
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v2

    .line 10994
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    .line 10992
    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10996
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10998
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10999
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11000
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11001
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 11003
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 11006
    :goto_8
    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    .line 11007
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 10894
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 10895
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 10896
    iget v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastSize:I

    if-eq v2, v1, :cond_1

    .line 10897
    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastSize:I

    .line 10898
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    .line 10899
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    .line 10900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    .line 10902
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    .line 10903
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 10904
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10905
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    int-to-float v1, v1

    const v6, 0x4047ae14    # 3.12f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float v7, v1, v7

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 10906
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10907
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 10909
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    int-to-float v1, v1

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float v7, v1, v7

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 10910
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10911
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10914
    :goto_0
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    float-to-int v7, v2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    .line 10915
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    float-to-int v15, v2

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 10791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 10792
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 10794
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 10797
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 10798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 10799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 10800
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    if-eqz p1, :cond_4

    .line 10802
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_3

    .line 10803
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    int-to-float v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 10805
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 10807
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    return p1

    .line 10808
    :cond_5
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    if-eqz v4, :cond_8

    .line 10809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 10810
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    return v2

    .line 10813
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10814
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->onCancelButtonPressed()V

    :cond_7
    return v1

    :cond_8
    return v4

    :cond_9
    :goto_0
    return v2
.end method

.method public setCancelToProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 11013
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    return-void
.end method

.method public setSlideX(F)V
    .locals 0

    .line 11022
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 10864
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 10865
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordVoiceCancel:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 10866
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToAlpha:F

    .line 10867
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelAlpha:F

    const/16 v0, 0x3c

    .line 10868
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 10869
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 10880
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
