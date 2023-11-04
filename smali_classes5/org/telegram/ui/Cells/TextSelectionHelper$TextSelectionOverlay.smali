.class public Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;
.super Landroid/view/View;
.source "TextSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextSelectionOverlay"
.end annotation


# instance fields
.field cancelPressedX:F

.field cancelPressedY:F

.field handleViewPaint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field pressedTime:J

.field pressedX:F

.field pressedY:F

.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/content/Context;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    .line 774
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 765
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    const-wide/16 p1, 0x0

    .line 769
    iput-wide p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedTime:J

    .line 771
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public checkCancel(FFZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object p1

    const/4 p2, 0x1

    .line 1331
    aget p1, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget p1, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    .line 1333
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    if-eqz p2, :cond_1

    .line 1334
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_1
    return-void
.end method

.method public checkCancelAction(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->cancelPressedX:F

    .line 1343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->cancelPressedY:F

    .line 1344
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    goto :goto_0

    .line 1345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->cancelPressedX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->cancelPressedY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1346
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkCancel(FFZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkOnTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedX:F

    float-to-int v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedY:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v3, v4, p1}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$900(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return v2

    .line 783
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedX:F

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedY:F

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->pressedTime:J

    :cond_3
    :goto_0
    return v1
.end method

.method public invalidate()V
    .locals 1

    .line 1352
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1150
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x16

    .line 1151
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 1154
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2000(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v3

    .line 1155
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickEndView()V

    .line 1156
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v4, :cond_7

    .line 1157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1158
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object v4

    .line 1159
    aget v9, v4, v6

    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    .line 1160
    aget v4, v4, v7

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    .line 1162
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1164
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_1

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    .line 1165
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1166
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1168
    :cond_2
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1171
    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 1173
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v11, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-ltz v12, :cond_6

    if-gt v12, v10, :cond_6

    .line 1174
    iget-object v10, v11, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v11, v12, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1175
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v12, v11, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-eqz v12, :cond_6

    .line 1177
    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v11, v11, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    sub-int/2addr v10, v11

    .line 1178
    invoke-virtual {v12}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-le v10, v11, :cond_3

    move v10, v11

    .line 1183
    :cond_3
    invoke-virtual {v12, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 1184
    invoke-virtual {v12, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    .line 1185
    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v11, v11

    .line 1186
    iget-object v13, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v14, v13, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v15, v14, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v11, v15

    float-to-int v11, v11

    .line 1187
    iget v14, v14, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    add-float/2addr v10, v14

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 1189
    iget v14, v13, Lorg/telegram/ui/Cells/TextSelectionHelper;->keyboardSize:I

    add-int/2addr v14, v3

    int-to-float v14, v14

    cmpl-float v14, v9, v14

    if-lez v14, :cond_5

    iget-object v13, v13, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v9, v13

    if-gez v13, :cond_5

    .line 1190
    iget-object v13, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v13, v13, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {v12, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1192
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1193
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    int-to-float v12, v2

    div-float v15, v12, v5

    .line 1194
    invoke-virtual {v1, v11, v11, v15, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1195
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 1196
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v15, v15, v15, v13}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1197
    iget-object v13, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    const/4 v14, 0x0

    const/4 v11, 0x0

    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v17, v15

    move v15, v11

    move/from16 v16, v17

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1198
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    iget-object v13, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1200
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v11

    add-float/2addr v4, v10

    sub-float v10, v9, v12

    add-float v13, v4, v12

    add-float/2addr v9, v12

    invoke-virtual {v11, v4, v10, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1204
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    move v4, v6

    goto/16 :goto_3

    .line 1207
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v15, v2

    sub-float v12, v10, v15

    .line 1208
    invoke-virtual {v1, v12, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1209
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    div-float v14, v15, v5

    .line 1210
    invoke-virtual {v1, v11, v11, v14, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1211
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 1212
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v14, v14, v14, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1213
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    const/4 v13, 0x0

    sget-object v16, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v12, v14

    move/from16 v17, v14

    move v14, v15

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1214
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1216
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v11

    add-float/2addr v4, v10

    sub-float v10, v4, v18

    sub-float v12, v9, v18

    add-float v9, v9, v18

    invoke-virtual {v11, v10, v12, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1220
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_2

    .line 1223
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    :cond_6
    :goto_2
    move v4, v7

    .line 1227
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_7
    move v4, v7

    .line 1229
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickStartView()V

    .line 1230
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v9, v9, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v9, :cond_c

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1232
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object v9

    .line 1233
    aget v6, v9, v6

    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v6, v11

    int-to-float v6, v6

    .line 1234
    aget v9, v9, v7

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 1235
    invoke-virtual {v1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1237
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1239
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ltz v11, :cond_b

    if-gt v11, v7, :cond_b

    .line 1240
    iget-object v7, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1241
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v10, v7, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v11, v10, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-eqz v11, :cond_b

    .line 1243
    iget v7, v7, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    sub-int/2addr v7, v10

    .line 1244
    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1245
    invoke-virtual {v11, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 1247
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    int-to-float v10, v10

    .line 1248
    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v13, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v14, v13, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v10, v14

    float-to-int v10, v10

    .line 1249
    iget v13, v13, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    add-float/2addr v7, v13

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 1251
    iget v13, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->keyboardSize:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_9

    iget-object v3, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_9

    .line 1252
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v11, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v2

    sub-float v3, v7, v2

    .line 1254
    invoke-virtual {v1, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1255
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    invoke-interface {v3, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    div-float v15, v2, v5

    .line 1256
    invoke-virtual {v1, v3, v3, v15, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1257
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1258
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v15, v15, v15, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1259
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    const/4 v13, 0x0

    sget-object v16, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v12, v15

    move v14, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1260
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1262
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v3

    add-float/2addr v9, v7

    sub-float v5, v9, v2

    sub-float v7, v6, v2

    add-float/2addr v6, v2

    invoke-virtual {v3, v5, v7, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1266
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1269
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1270
    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1271
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    invoke-interface {v3, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v2, v2

    div-float v14, v2, v5

    .line 1272
    invoke-virtual {v1, v3, v3, v14, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1273
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1274
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v14, v14, v14, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1275
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v15, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v13, v14

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1276
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->handleViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1278
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v3

    add-float/2addr v9, v7

    sub-float v5, v6, v2

    add-float v7, v9, v2

    add-float/2addr v6, v2

    invoke-virtual {v3, v9, v5, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1282
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-lez v2, :cond_a

    .line 1285
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-gez v2, :cond_a

    add-int/lit8 v4, v4, 0x1

    .line 1288
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 1292
    :cond_b
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    if-eqz v4, :cond_f

    .line 1296
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v2, :cond_f

    .line 1297
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-nez v2, :cond_d

    .line 1298
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickEndView()V

    .line 1300
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1100(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1600(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V

    .line 1301
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2200(Lorg/telegram/ui/Cells/TextSelectionHelper;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2300(Lorg/telegram/ui/Cells/TextSelectionHelper;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2400(Lorg/telegram/ui/Cells/TextSelectionHelper;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2500(Lorg/telegram/ui/Cells/TextSelectionHelper;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    .line 1302
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 1307
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2600(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1308
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1309
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1312
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1313
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 1314
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1315
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->updateViewLocationInWindow()V

    .line 1319
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    :cond_12
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 802
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 803
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return v1

    .line 807
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1100(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 808
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1200(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 810
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1102(Lorg/telegram/ui/Cells/TextSelectionHelper;I)I

    .line 811
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1202(Lorg/telegram/ui/Cells/TextSelectionHelper;I)I

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4a

    if-eq v4, v3, :cond_48

    if-eq v4, v5, :cond_2

    const/4 v1, 0x3

    if-eq v4, v1, :cond_48

    goto/16 :goto_1d

    .line 867
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v5, :cond_51

    .line 868
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v5, :cond_3

    .line 869
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickStartView()V

    goto :goto_0

    .line 871
    :cond_3
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickEndView()V

    .line 874
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-nez v5, :cond_4

    .line 875
    iget-boolean v1, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return v1

    .line 878
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 879
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 881
    invoke-virtual {v6, v5, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectLayout(II)Z

    move-result v10

    .line 883
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-nez v7, :cond_5

    return v3

    .line 887
    :cond_5
    iget-boolean v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v7, :cond_6

    .line 888
    iget v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget-object v8, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    goto :goto_1

    .line 890
    :cond_6
    iget v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget-object v8, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 893
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v8, v7, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v8, :cond_7

    return v3

    .line 897
    :cond_7
    iget v12, v7, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 898
    iget-object v13, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 900
    invoke-static {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object v6

    .line 901
    aget v7, v6, v3

    sub-int/2addr v4, v7

    .line 902
    aget v6, v6, v2

    sub-int v15, v5, v6

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$900(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v6, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentBottomPadding()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v6, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowScrollPrentRelative:Z

    if-nez v6, :cond_8

    iget-boolean v6, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-nez v6, :cond_8

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v6, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentBottomPadding()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_9

    :cond_8
    move v5, v3

    goto :goto_2

    :cond_9
    move v5, v2

    .line 905
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v7, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentTopPadding()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-nez v7, :cond_a

    iget-object v6, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentTopPadding()I

    move-result v7

    if-ge v6, v7, :cond_b

    :cond_a
    move v6, v3

    goto :goto_3

    :cond_b
    move v6, v2

    :goto_3
    if-nez v5, :cond_e

    if-eqz v6, :cond_c

    goto :goto_5

    .line 919
    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 920
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v5, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$102(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    .line 921
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    :goto_4
    move/from16 v16, v4

    goto :goto_7

    .line 907
    :cond_e
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 908
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$102(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    .line 909
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 911
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v4, v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$202(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    if-eqz v5, :cond_10

    .line 914
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    goto :goto_6

    .line 916
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    :goto_6
    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_4

    .line 925
    :goto_7
    iget-object v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v4, v14, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    iget v5, v14, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    iget-object v6, v14, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/16 v20, 0x0

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I

    move-result v8

    if-ltz v8, :cond_47

    .line 927
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    if-eqz v5, :cond_14

    if-eqz v10, :cond_11

    return v3

    .line 930
    :cond_11
    iget v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ge v8, v5, :cond_12

    .line 931
    iput-boolean v2, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    .line 932
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 933
    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    goto :goto_8

    .line 934
    :cond_12
    iget v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v8, v5, :cond_13

    .line 935
    iput-boolean v2, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    .line 936
    iput-boolean v2, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 937
    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    goto :goto_8

    :cond_13
    return v3

    .line 942
    :cond_14
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_2e

    .line 943
    iget v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-eq v5, v8, :cond_46

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 944
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 946
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 947
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v9, v7, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 949
    iget v11, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v5, v11, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 950
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-eqz v9, :cond_2d

    if-nez v5, :cond_15

    goto/16 :goto_12

    :cond_15
    move v11, v8

    :goto_9
    add-int/lit8 v7, v11, -0x1

    if-ltz v7, :cond_16

    .line 957
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_16

    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 961
    :cond_16
    invoke-virtual {v5, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 962
    iget-object v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v14, v14, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v5, v14}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 963
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    if-nez v10, :cond_2b

    if-ne v9, v5, :cond_2b

    .line 965
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v9, v9, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-eq v15, v9, :cond_17

    if-ne v15, v7, :cond_17

    goto/16 :goto_11

    .line 971
    :cond_17
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-eq v6, v9, :cond_28

    invoke-virtual {v5, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    if-nez v5, :cond_28

    if-ne v7, v14, :cond_28

    if-eq v15, v7, :cond_18

    goto/16 :goto_10

    :cond_18
    move v5, v8

    :goto_a
    add-int/lit8 v6, v5, 0x1

    .line 985
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_19

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_19

    move v5, v6

    goto :goto_a

    :cond_19
    sub-int v6, v8, v11

    .line 989
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v5, v8, v5

    .line 990
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 992
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 993
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    if-ltz v1, :cond_1a

    move v9, v3

    goto :goto_b

    :cond_1a
    move v9, v2

    :goto_b
    invoke-static {v7, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1802(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    :cond_1b
    add-int/lit8 v7, v8, -0x1

    if-lez v7, :cond_1c

    .line 995
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_1c

    move v7, v3

    goto :goto_c

    :cond_1c
    move v7, v2

    .line 998
    :goto_c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xa

    if-lt v8, v9, :cond_1d

    .line 999
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v9, v10

    goto :goto_d

    .line 1002
    :cond_1d
    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 1006
    :goto_d
    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lt v12, v13, :cond_1e

    .line 1007
    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    move v4, v10

    goto :goto_e

    .line 1010
    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-interface {v4, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1013
    :goto_e
    iget-object v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ge v8, v12, :cond_1f

    if-lt v6, v5, :cond_22

    :cond_1f
    if-le v8, v12, :cond_20

    if-ltz v1, :cond_22

    :cond_20
    invoke-static {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    if-eqz v8, :cond_22

    if-eqz v7, :cond_22

    if-ne v4, v10, :cond_46

    .line 1014
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-ne v8, v3, :cond_23

    return v3

    .line 1017
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ge v8, v1, :cond_25

    invoke-static {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    if-eq v4, v10, :cond_25

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v11, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1019
    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1802(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    goto :goto_f

    .line 1021
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1024
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v5, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v4, v5, :cond_26

    .line 1026
    iput v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1027
    iput v5, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1028
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1030
    :cond_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v2, v4, :cond_27

    .line 1031
    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1033
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto/16 :goto_1b

    .line 972
    :cond_28
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 973
    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v8, v4, :cond_29

    .line 975
    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 976
    iput v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 977
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 979
    :cond_29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v2, v4, :cond_2a

    .line 980
    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 982
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto/16 :goto_1b

    .line 966
    :cond_2b
    :goto_11
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v7, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    move v9, v11

    move v11, v1

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Cells/TextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V

    .line 967
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_2c

    .line 968
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 970
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto/16 :goto_1b

    :cond_2d
    :goto_12
    return v3

    .line 1038
    :cond_2e
    iget v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-eq v8, v5, :cond_46

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1040
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v4

    move v9, v8

    .line 1043
    :goto_13
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v9, v5, :cond_2f

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 1048
    :cond_2f
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1049
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v11, v7, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 1051
    iget v14, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {v5, v14, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1052
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-eqz v11, :cond_45

    if-nez v5, :cond_30

    goto/16 :goto_1a

    .line 1058
    :cond_30
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v8, v7, :cond_31

    .line 1059
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v8, v7

    .line 1062
    :cond_31
    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1063
    iget-object v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v14, v14, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {v5, v14}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 1064
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    if-nez v10, :cond_43

    if-ne v11, v5, :cond_43

    .line 1066
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {v5, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    if-eq v15, v11, :cond_32

    if-ne v15, v7, :cond_32

    goto/16 :goto_19

    .line 1072
    :cond_32
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-eq v6, v10, :cond_40

    invoke-virtual {v5, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    if-nez v5, :cond_40

    if-ne v14, v7, :cond_40

    if-eq v15, v7, :cond_33

    goto/16 :goto_18

    :cond_33
    move v5, v8

    :goto_14
    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_34

    .line 1086
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_34

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_34
    sub-int v6, v8, v9

    .line 1090
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v5, v8, v5

    .line 1091
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v7, v8, -0x1

    if-lez v7, :cond_35

    .line 1093
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_35

    move v7, v3

    goto :goto_15

    :cond_35
    move v7, v2

    .line 1095
    :goto_15
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 1096
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    if-gtz v1, :cond_36

    move v11, v3

    goto :goto_16

    :cond_36
    move v11, v2

    :goto_16
    invoke-static {v10, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1802(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    .line 1098
    :cond_37
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v10, v10, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-lez v10, :cond_38

    sub-int/2addr v10, v3

    invoke-interface {v4, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_38

    move v2, v3

    .line 1099
    :cond_38
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v10, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v8, v10, :cond_39

    if-le v6, v5, :cond_3b

    :cond_39
    if-ge v8, v10, :cond_3a

    if-gtz v1, :cond_3b

    :cond_3a
    if-eqz v7, :cond_3b

    if-eqz v2, :cond_46

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1100
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v8, v4, :cond_3d

    if-eqz v7, :cond_3d

    if-eqz v2, :cond_3c

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1101
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v9, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1102
    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1802(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    goto :goto_17

    .line 1104
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1106
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le v2, v4, :cond_3e

    .line 1108
    iput v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1109
    iput v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1110
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1112
    :cond_3e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v2, v4, :cond_3f

    .line 1113
    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1115
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto :goto_1b

    .line 1073
    :cond_40
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1074
    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-le v2, v8, :cond_41

    .line 1076
    iput v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1077
    iput v8, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1078
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1080
    :cond_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v2, v4, :cond_42

    .line 1081
    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1083
    :cond_42
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto :goto_1b

    .line 1067
    :cond_43
    :goto_19
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v7, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v11, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Cells/TextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V

    .line 1068
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_44

    .line 1069
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1071
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    goto :goto_1b

    :cond_45
    :goto_1a
    return v3

    .line 1121
    :cond_46
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onOffsetChanged()V

    .line 1123
    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1100(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1600(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V

    goto/16 :goto_1d

    .line 1128
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1900(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1129
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    .line 1130
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    .line 1131
    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$502(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 1134
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1135
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showHandleViews()V

    .line 1138
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$102(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 815
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v1, :cond_4b

    return v3

    .line 818
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 820
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v6

    int-to-float v7, v1

    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 821
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickStartView()V

    .line 822
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-nez v7, :cond_4c

    return v2

    .line 825
    :cond_4c
    iput-boolean v3, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    .line 826
    iput-boolean v3, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 827
    iget v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->offsetToCord(I)[I

    move-result-object v6

    .line 830
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v5, v7

    .line 832
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object v7

    .line 833
    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v9, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    if-eqz v9, :cond_4d

    .line 834
    aget v9, v6, v2

    iget v10, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v9, v10

    aget v2, v7, v2

    add-int/2addr v9, v2

    sub-int/2addr v9, v1

    int-to-float v1, v9

    iput v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    goto :goto_1c

    :cond_4d
    const/4 v1, 0x0

    .line 836
    iput v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 838
    :goto_1c
    aget v1, v6, v3

    iget v2, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v1, v2

    aget v2, v7, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 839
    invoke-static {v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 840
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    return v3

    .line 844
    :cond_4e
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 845
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickEndView()V

    .line 846
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-nez v7, :cond_4f

    return v2

    .line 849
    :cond_4f
    iput-boolean v3, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    .line 850
    iput-boolean v2, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 851
    iget v7, v6, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->offsetToCord(I)[I

    move-result-object v6

    .line 853
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v5, v7

    .line 854
    iget-object v7, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I

    move-result-object v7

    .line 855
    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    aget v9, v6, v2

    iget v10, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v9, v10

    aget v2, v7, v2

    add-int/2addr v9, v2

    sub-int/2addr v9, v1

    int-to-float v1, v9

    iput v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 856
    aget v1, v6, v3

    iget v2, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v1, v2

    aget v2, v7, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 857
    invoke-static {v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1100(Lorg/telegram/ui/Cells/TextSelectionHelper;)I

    move-result v1

    invoke-static {v8, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1600(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V

    .line 858
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 859
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    return v3

    .line 863
    :cond_50
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    .line 864
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    .line 1145
    :cond_51
    :goto_1d
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return v1
.end method
