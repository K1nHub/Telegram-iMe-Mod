.class Lorg/telegram/ui/Components/StorageUsageView$ProgressView;
.super Landroid/view/View;
.source "StorageUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StorageUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StorageUsageView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StorageUsageView;Landroid/content/Context;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    .line 292
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 302
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 305
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StorageUsageView;->access$000(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StorageUsageView;->access$100(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StorageUsageView;->access$200(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$100(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$200(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$000(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 313
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$300(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x18

    .line 315
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v4, v2

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v6, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v7, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StorageUsageView;->access$000(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StorageUsageView;->access$400(Lorg/telegram/ui/Components/StorageUsageView;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget v3, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p1

    goto/16 :goto_2

    .line 317
    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StorageUsageView;->access$400(Lorg/telegram/ui/Components/StorageUsageView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget-boolean v7, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgressIncrement:Z

    const v8, 0x3cc9a634

    if-eqz v7, :cond_2

    .line 319
    iget v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    add-float/2addr v5, v8

    iput v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    .line 321
    iput v4, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    const/4 v5, 0x0

    .line 322
    iput-boolean v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgressIncrement:Z

    goto :goto_1

    .line 325
    :cond_2
    iget v7, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    sub-float/2addr v7, v8

    iput v7, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_4

    .line 327
    iput v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    const/4 v5, 0x1

    .line 328
    iput-boolean v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgressIncrement:Z

    goto :goto_1

    .line 333
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget v7, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    const v8, 0x3dda740e

    sub-float/2addr v7, v8

    iput v7, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_4

    .line 335
    iput v5, v3, Lorg/telegram/ui/Components/StorageUsageView;->calculatingProgress:F

    .line 338
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 341
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v7, 0x11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/16 v9, 0x17

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StorageUsageView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 343
    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StorageUsageView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v5, v15, v3, v7, v8}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 345
    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 346
    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v5}, Lorg/telegram/ui/Components/StorageUsageView;->access$400(Lorg/telegram/ui/Components/StorageUsageView;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget v7, v7, Lorg/telegram/ui/Components/StorageUsageView;->progress2:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 348
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v10, v3

    .line 349
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v11, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v5

    int-to-float v12, v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v13, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v5}, Lorg/telegram/ui/Components/StorageUsageView;->access$200(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v10, v7

    .line 350
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v11, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v7, v5

    int-to-float v12, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v13, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v5}, Lorg/telegram/ui/Components/StorageUsageView;->access$300(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v5}, Lorg/telegram/ui/Components/StorageUsageView;->access$400(Lorg/telegram/ui/Components/StorageUsageView;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    iget v7, v7, Lorg/telegram/ui/Components/StorageUsageView;->progress:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 355
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 356
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 358
    :cond_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v10, v3

    .line 359
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v11, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-float v12, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$100(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v10, v4

    .line 360
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v11, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v4, v1

    int-to-float v12, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;->this$0:Lorg/telegram/ui/Components/StorageUsageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StorageUsageView;->access$300(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x28

    .line 297
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
