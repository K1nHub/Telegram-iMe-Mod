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

.field final textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 1

    .line 10341
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 10342
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10327
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    .line 10328
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    .line 10329
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    .line 10336
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0xf

    .line 10337
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    .line 10343
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p2, "fonts/rmedium.ttf"

    .line 10344
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10345
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->updateColors()V

    return-void
.end method


# virtual methods
.method public getLeftProperty()F
    .locals 1

    .line 10518
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10370
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long v4, v2, v4

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long/2addr v4, v6

    :goto_0
    const-wide/16 v6, 0x3e8

    .line 10371
    div-long v8, v4, v6

    .line 10372
    rem-long v6, v4, v6

    long-to-int v7, v6

    div-int/lit8 v7, v7, 0xa

    .line 10374
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v6

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_1

    const-wide/32 v13, 0xe86c

    cmp-long v6, v4, v13

    if-ltz v6, :cond_1

    .line 10375
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    if-nez v4, :cond_1

    .line 10376
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2802(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 10377
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    invoke-interface {v4, v10, v12, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    .line 10378
    iput-boolean v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    .line 10382
    :cond_1
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    const-wide/16 v13, 0x1388

    add-long/2addr v4, v13

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 10383
    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 10384
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v14

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v16

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/16 v17, 0x7

    goto :goto_1

    :cond_2
    const/16 v17, 0x1

    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIII)Z

    :cond_3
    const-wide/16 v2, 0x3c

    .line 10388
    div-long v4, v8, v2

    const/4 v6, 0x2

    cmp-long v13, v4, v2

    if-ltz v13, :cond_4

    .line 10389
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    div-long v15, v4, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v11

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v12

    rem-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v14, v6

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v10

    const-string v2, "%01d:%02d:%02d,%d"

    invoke-static {v13, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 10391
    :cond_4
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v11

    rem-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v14, v12

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v6

    const-string v2, "%01d:%02d,%d"

    invoke-static {v13, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10393
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lt v3, v10, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v10, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v3, v5, :cond_d

    .line 10394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 10396
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10397
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10398
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10399
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10400
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10401
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v13, v3, -0x1

    const/16 v14, 0x21

    if-ge v8, v13, :cond_a

    .line 10410
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v13, v15, :cond_7

    if-nez v10, :cond_5

    move v7, v8

    :cond_5
    add-int/lit8 v10, v10, 0x1

    if-eqz v9, :cond_9

    .line 10417
    new-instance v13, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v13}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v15, v3, -0x2

    if-ne v8, v15, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 10421
    :cond_6
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v5

    invoke-virtual {v15, v13, v5, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10422
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15, v13, v5, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    if-nez v9, :cond_8

    move v5, v8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    if-eqz v10, :cond_9

    .line 10431
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v15, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v15}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v13, v15, v7, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x0

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    if-eqz v9, :cond_b

    .line 10438
    new-instance v3, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v3}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    .line 10439
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v5

    add-int/2addr v9, v12

    invoke-virtual {v8, v3, v5, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10440
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v3, v5, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    if-eqz v10, :cond_c

    .line 10443
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v5, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v3, v5, v7, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10446
    :cond_c
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    .line 10447
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    .line 10449
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    goto :goto_6

    .line 10451
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_e

    .line 10452
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    .line 10454
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_f

    goto :goto_5

    .line 10458
    :cond_f
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v17, v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 10455
    :cond_10
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10456
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10462
    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/4 v5, 0x0

    cmpl-float v7, v3, v5

    if-eqz v7, :cond_11

    const v7, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v7

    .line 10463
    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_11

    .line 10465
    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    .line 10469
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    .line 10472
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v5

    if-nez v6, :cond_12

    .line 10473
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 10474
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 10475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10476
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10477
    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10479
    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    goto/16 :goto_7

    .line 10481
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v6, :cond_13

    .line 10482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10483
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float v9, v4, v9

    mul-float v9, v9, v8

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 10484
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float v9, v9, v10

    sub-float/2addr v6, v9

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10485
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10486
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10489
    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_14

    .line 10490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10491
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float v9, v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 10492
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float/2addr v4, v9

    mul-float v8, v8, v4

    add-float/2addr v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10493
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10497
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10498
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 10499
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 10500
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10501
    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10502
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 10503
    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    .line 10506
    :goto_7
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    .line 10508
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-nez v1, :cond_15

    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_16

    .line 10509
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 10522
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    .line 10523
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 10524
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 10349
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 10350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    .line 10351
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 10352
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 5

    .line 10356
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10357
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 10358
    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 10359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 10361
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10363
    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 10514
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "chat_recordTime"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
