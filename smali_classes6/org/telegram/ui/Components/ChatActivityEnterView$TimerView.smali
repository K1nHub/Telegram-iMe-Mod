.class public Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerView"
.end annotation


# instance fields
.field inLayout:Landroid/text/StaticLayout;

.field isRunning:Z

.field lastSendTypingTime:J

.field left:F

.field oldString:Ljava/lang/String;

.field outLayout:Landroid/text/StaticLayout;

.field final replaceDistance:F

.field replaceIn:Landroid/text/SpannableStringBuilder;

.field replaceOut:Landroid/text/SpannableStringBuilder;

.field replaceStable:Landroid/text/SpannableStringBuilder;

.field replaceTransition:F

.field startTime:J

.field stopTime:J

.field stoppedInternal:Z

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 11362
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 11363
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11349
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    .line 11350
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    .line 11351
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    const/16 p1, 0xf

    .line 11359
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    return-void
.end method


# virtual methods
.method public getLeftProperty()F
    .locals 1

    .line 11539
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 11387
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 11388
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v4, 0xf

    .line 11389
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 11390
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11391
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 11393
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 11394
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v2, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long v6, v4, v6

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    iget-wide v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long/2addr v6, v8

    :goto_0
    const-wide/16 v8, 0x3e8

    .line 11395
    div-long v10, v6, v8

    .line 11396
    rem-long v8, v6, v8

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0xa

    .line 11398
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v12, 0x0

    if-eqz v8, :cond_2

    const-wide/32 v13, 0xe86c

    cmp-long v6, v6, v13

    if-ltz v6, :cond_2

    .line 11399
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    if-nez v6, :cond_2

    .line 11400
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 11401
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v6

    invoke-interface {v6, v9, v3, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    .line 11402
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    .line 11406
    :cond_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    const-wide/16 v13, 0x1388

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 11407
    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 11408
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v14

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v16

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    move/from16 v17, v4

    goto :goto_1

    :cond_3
    move/from16 v17, v3

    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIII)Z

    :cond_4
    long-to-int v4, v10

    int-to-long v4, v4

    .line 11411
    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatTimerDurationFast(JI)Ljava/lang/String;

    move-result-object v2

    .line 11412
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v4, v9, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_d

    .line 11413
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 11415
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 11416
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 11417
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 11418
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11419
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11420
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, -0x1

    move v7, v6

    move v8, v12

    move v9, v8

    move v10, v9

    :goto_2
    add-int/lit8 v11, v4, -0x1

    const/16 v13, 0x21

    if-ge v8, v11, :cond_a

    .line 11429
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v11, v14, :cond_7

    if-nez v10, :cond_5

    move v7, v8

    :cond_5
    add-int/lit8 v10, v10, 0x1

    if-eqz v9, :cond_9

    .line 11436
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v14, v4, -0x2

    if-ne v8, v14, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 11440
    :cond_6
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v6

    invoke-virtual {v14, v11, v6, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11441
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v11, v6, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v9, v12

    goto :goto_3

    :cond_7
    if-nez v9, :cond_8

    move v6, v8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    if-eqz v10, :cond_9

    .line 11450
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v14, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v14}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v11, v14, v7, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v10, v12

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    if-eqz v9, :cond_b

    .line 11457
    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    .line 11458
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v6

    add-int/2addr v9, v3

    invoke-virtual {v8, v4, v6, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11459
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4, v6, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    if-eqz v10, :cond_c

    .line 11462
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v3, v4, v7, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11465
    :cond_c
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    .line 11466
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    .line 11468
    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    goto :goto_5

    .line 11470
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_e

    .line 11471
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    .line 11473
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_f

    goto :goto_4

    .line 11477
    :cond_f
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int v17, v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 11474
    :cond_10
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 11475
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11481
    :goto_5
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-eqz v6, :cond_11

    const v6, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v6

    .line 11482
    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    .line 11484
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    .line 11488
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 11491
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v6, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v6, :cond_12

    .line 11492
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 11493
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 11494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11495
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11496
    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11498
    invoke-virtual {v5, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    goto/16 :goto_6

    .line 11500
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v6, :cond_13

    .line 11501
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11502
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float v9, v5, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11503
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11504
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11508
    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_14

    .line 11509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11510
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11511
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float/2addr v5, v9

    mul-float/2addr v8, v5

    add-float/2addr v6, v8

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11512
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11513
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11516
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11517
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11518
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 11519
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11520
    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11521
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11522
    invoke-virtual {v5, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    .line 11525
    :goto_6
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    .line 11527
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-nez v1, :cond_15

    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_16

    .line 11528
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 11543
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    .line 11544
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 11545
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 11367
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 11368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    .line 11369
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 11370
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 5

    .line 11374
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 11375
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 11376
    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 11377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 11379
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11381
    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 11533
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 11534
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
