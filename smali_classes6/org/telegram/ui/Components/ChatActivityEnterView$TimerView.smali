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

    .line 10901
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 10902
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10888
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    .line 10889
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    .line 10890
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    const/16 p1, 0xf

    .line 10898
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    return-void
.end method


# virtual methods
.method public getLeftProperty()F
    .locals 1

    .line 11083
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10926
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 10927
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v4, 0xf

    .line 10928
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10929
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10930
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v5, "chat_recordTime"

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 10932
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10933
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

    .line 10934
    div-long v10, v6, v8

    .line 10935
    rem-long v8, v6, v8

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0xa

    .line 10937
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v12, 0x0

    if-eqz v8, :cond_2

    const-wide/32 v13, 0xe86c

    cmp-long v6, v6, v13

    if-ltz v6, :cond_2

    .line 10938
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    if-nez v6, :cond_2

    .line 10939
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 10940
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v6

    invoke-interface {v6, v9, v3, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    .line 10941
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    .line 10945
    :cond_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    const-wide/16 v13, 0x1388

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 10946
    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 10947
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v14

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

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
    const-wide/16 v4, 0x3c

    .line 10951
    div-long v6, v10, v4

    cmp-long v8, v6, v4

    const/4 v13, 0x2

    if-ltz v8, :cond_5

    .line 10952
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    div-long v15, v6, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    rem-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v14, v3

    rem-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v13

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v9

    const-string v2, "%01d:%02d:%02d,%d"

    invoke-static {v8, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 10954
    :cond_5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v14, v12

    rem-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v3

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v13

    const-string v2, "%01d:%02d,%d"

    invoke-static {v8, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10956
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v4, v9, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_e

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

    if-eq v4, v6, :cond_e

    .line 10957
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 10959
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10960
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10961
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 10962
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10963
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10964
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, -0x1

    move v7, v6

    move v8, v12

    move v9, v8

    move v10, v9

    :goto_3
    add-int/lit8 v11, v4, -0x1

    const/16 v14, 0x21

    if-ge v8, v11, :cond_b

    .line 10973
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v11, v15, :cond_8

    if-nez v10, :cond_6

    move v7, v8

    :cond_6
    add-int/lit8 v10, v10, 0x1

    if-eqz v9, :cond_a

    .line 10980
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v15, v4, -0x2

    if-ne v8, v15, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 10984
    :cond_7
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v6

    invoke-virtual {v15, v11, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10985
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15, v11, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v9, v12

    goto :goto_4

    :cond_8
    if-nez v9, :cond_9

    move v6, v8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    if-eqz v10, :cond_a

    .line 10994
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v15, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v15}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v11, v15, v7, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v10, v12

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_c

    .line 11001
    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    .line 11002
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v6

    add-int/2addr v9, v3

    invoke-virtual {v8, v4, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11003
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    if-eqz v10, :cond_d

    .line 11006
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v10, v7

    invoke-virtual {v3, v4, v7, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11009
    :cond_d
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    .line 11010
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    .line 11012
    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    goto :goto_6

    .line 11014
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_f

    .line 11015
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    .line 11017
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_10

    goto :goto_5

    .line 11021
    :cond_10
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v15, v4, -0x1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int v18, v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v17, v2

    invoke-virtual/range {v14 .. v19}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 11018
    :cond_11
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 11019
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11025
    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-eqz v6, :cond_12

    const v6, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v6

    .line 11026
    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    .line 11028
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    .line 11032
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 11035
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v6, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v6, :cond_13

    .line 11036
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 11037
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

    .line 11038
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11039
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11040
    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11041
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11042
    invoke-virtual {v5, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    goto/16 :goto_7

    .line 11044
    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v6, :cond_14

    .line 11045
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11046
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float v9, v5, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11047
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

    .line 11048
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11049
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11052
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_15

    .line 11053
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11054
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11055
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

    .line 11056
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11057
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11060
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11061
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 11062
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

    .line 11063
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11064
    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11065
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 11066
    invoke-virtual {v5, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    .line 11069
    :goto_7
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    .line 11071
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_17

    .line 11072
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 11087
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    .line 11088
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 11089
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 10906
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 10907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    .line 10908
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    .line 10909
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 5

    .line 10913
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10914
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    .line 10915
    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 10916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    .line 10918
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10920
    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 11077
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 11078
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "chat_recordTime"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
