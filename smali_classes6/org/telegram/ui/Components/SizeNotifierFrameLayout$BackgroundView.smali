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

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 128
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 142
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 145
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$002(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getThemeAnimationValue()F

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_18

    .line 149
    iget-object v5, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_5

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_6

    goto/16 :goto_a

    :cond_6
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 153
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 154
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_7
    const/16 v6, 0xff

    .line 156
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    :goto_3
    instance-of v6, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v7, 0x15

    if-eqz v6, :cond_e

    .line 159
    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 160
    invoke-virtual {v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 161
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    goto :goto_4

    :cond_8
    move v6, v2

    :goto_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_9
    move v7, v2

    :goto_5
    add-int/2addr v6, v7

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v6

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v7

    .line 164
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 166
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget-object v10, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 167
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v8

    mul-float/2addr v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v9

    div-int/2addr v10, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 169
    iget-object v11, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v11

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    add-int/2addr v11, v7

    add-int/2addr v11, v6

    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v11, v4

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p1, v2, v6, v9, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v9, v10

    add-int/2addr v8, v11

    .line 172
    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 177
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_b

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v2, v2, v4, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 181
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setTranslationY(I)V

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 183
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v6

    if-eqz v6, :cond_c

    int-to-float v4, v4

    .line 184
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_6

    .line 185
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    if-eqz v6, :cond_d

    .line 186
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 188
    :cond_d
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v2, v2, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 194
    :cond_e
    instance-of v6, v5, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_10

    .line 195
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_f

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 199
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v2, v2, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 202
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 205
    :cond_10
    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_12

    .line 206
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_11

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 210
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 213
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 216
    :cond_12
    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_16

    .line 217
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 218
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v6, v8, :cond_13

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40000000    # 2.0f

    .line 220
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v6

    .line 221
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v5, v2, v2, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 227
    :cond_13
    iget-object v6, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    goto :goto_7

    :cond_14
    move v6, v2

    :goto_7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_15

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v7

    if-eqz v7, :cond_15

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_8

    :cond_15
    move v7, v2

    :goto_8
    add-int/2addr v6, v7

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v6

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v7

    .line 230
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 231
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 232
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget-object v10, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 233
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v8

    mul-float/2addr v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v9

    div-int/2addr v10, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 235
    iget-object v11, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v11

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    add-int/2addr v11, v7

    add-int/2addr v11, v6

    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v11, v4

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p1, v2, v6, v9, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v9, v10

    add-int/2addr v8, v11

    .line 238
    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    :goto_9
    if-nez v3, :cond_17

    .line 244
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_17

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_17

    .line 245
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_17
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_18
    :goto_b
    return-void
.end method
