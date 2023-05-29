.class Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;
.super Landroid/view/View;
.source "SizeNotifierFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/content/Context;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 138
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 143
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 146
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 147
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawableMotion()Z

    move-result v3

    .line 148
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_4

    .line 149
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$302(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z

    .line 153
    :cond_1
    instance-of v4, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v4, :cond_2

    .line 154
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 155
    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 157
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$002(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v4, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow()V

    .line 161
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$402(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z

    .line 162
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$502(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)F

    .line 163
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 165
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$502(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v6, 0x2

    if-ge v3, v6, :cond_1e

    .line 167
    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_5

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_6

    goto/16 :goto_b

    :cond_6
    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    .line 171
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x437f0000    # 255.0f

    .line 172
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v9

    mul-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_7
    const/16 v8, 0xff

    .line 174
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_8

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v8

    goto :goto_3

    :cond_8
    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_9

    .line 181
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v8

    .line 182
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v9

    .line 183
    iget-object v10, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v10

    goto :goto_4

    :cond_9
    move v8, v4

    move v9, v5

    move v10, v9

    .line 190
    :goto_4
    instance-of v11, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v12, 0x15

    if-eqz v11, :cond_10

    .line 191
    move-object v11, v7

    check-cast v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 192
    invoke-virtual {v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 193
    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    goto :goto_5

    :cond_a
    move v11, v2

    :goto_5
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v12, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v12

    if-eqz v12, :cond_b

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_b
    move v12, v2

    :goto_6
    add-int/2addr v11, v12

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v11

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    int-to-float v14, v12

    .line 196
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 197
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 198
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    mul-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 199
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    mul-float/2addr v15, v8

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v14

    div-int/2addr v5, v6

    float-to-int v8, v9

    add-int/2addr v5, v8

    .line 201
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v8

    sub-int/2addr v12, v4

    div-int/2addr v12, v6

    add-int/2addr v8, v12

    add-int/2addr v8, v11

    float-to-int v6, v10

    add-int/2addr v8, v6

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v1, v2, v11, v14, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v14, v5

    add-int/2addr v4, v8

    .line 204
    invoke-virtual {v7, v5, v8, v14, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 209
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_d

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 213
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setTranslationY(I)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 215
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v5

    if-eqz v5, :cond_e

    int-to-float v4, v4

    .line 216
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_7

    .line 217
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    if-eqz v5, :cond_f

    .line 218
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 220
    :cond_f
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7, v2, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 226
    :cond_10
    instance-of v4, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_12

    .line 227
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_11

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 231
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 234
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 237
    :cond_12
    instance-of v4, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_14

    .line 238
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_13

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 242
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 245
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 248
    :cond_14
    instance-of v4, v7, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_18

    .line 249
    move-object v4, v7

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 250
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v4, v11, :cond_15

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v4

    .line 253
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 259
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    goto :goto_8

    :cond_16
    move v4, v2

    :goto_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v12, :cond_17

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_9

    :cond_17
    move v5, v2

    :goto_9
    add-int/2addr v4, v5

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v4

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, v5

    .line 262
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    .line 263
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 264
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    mul-float/2addr v12, v8

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 265
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    mul-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v12

    div-int/2addr v11, v6

    float-to-int v9, v9

    add-int/2addr v11, v9

    .line 267
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v9

    sub-int/2addr v5, v8

    div-int/2addr v5, v6

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    float-to-int v5, v10

    add-int/2addr v9, v5

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v12, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v12, v11

    add-int/2addr v8, v9

    .line 270
    invoke-virtual {v7, v11, v9, v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    .line 276
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_19

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v11

    sub-int/2addr v6, v11

    invoke-virtual {v1, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 280
    :cond_19
    instance-of v4, v7, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v4, :cond_1a

    .line 281
    move-object v4, v7

    check-cast v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->setParent(Landroid/view/View;)V

    .line 283
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v11, v8, v6

    mul-float/2addr v4, v11

    div-float/2addr v4, v5

    add-float/2addr v4, v9

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    div-float/2addr v6, v5

    add-float/2addr v6, v10

    float-to-int v5, v4

    .line 285
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 287
    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v6

    float-to-int v9, v9

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 289
    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    add-float/2addr v10, v6

    float-to-int v6, v10

    .line 285
    invoke-virtual {v7, v5, v9, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 293
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1b
    :goto_a
    if-nez v3, :cond_1d

    .line 297
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1d

    .line 298
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v5, :cond_1c

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v4, :cond_1c

    .line 299
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow()V

    .line 301
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 302
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$302(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z

    .line 303
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 304
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_1d
    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 307
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    .line 308
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1f
    :goto_c
    return-void
.end method
