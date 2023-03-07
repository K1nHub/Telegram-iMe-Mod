.class Lorg/telegram/ui/Components/ChatActivityEnterView$17;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private animationDuration:F

.field private animationProgress:F

.field private drawableColor:I

.field private lastAnimationTime:J

.field private prevColorType:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 2723
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2775
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 2776
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 2778
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2779
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2780
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    .line 2782
    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 2788
    :cond_1
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v8, "chat_messagePanelVoicePressed"

    const-string v9, "chat_messagePanelSend"

    if-eqz v5, :cond_3

    .line 2789
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    goto :goto_2

    .line 2792
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 2795
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->drawableColor:I

    const/high16 v13, 0x43480000    # 200.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v4

    if-eq v10, v12, :cond_6

    .line 2796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->lastAnimationTime:J

    .line 2797
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->prevColorType:I

    if-eqz v3, :cond_5

    if-eq v3, v11, :cond_5

    .line 2798
    iput v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    if-eqz v5, :cond_4

    .line 2800
    iput v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationDuration:F

    goto :goto_3

    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    .line 2802
    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationDuration:F

    goto :goto_3

    .line 2805
    :cond_5
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    .line 2807
    :goto_3
    iput v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->prevColorType:I

    .line 2808
    iput v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->drawableColor:I

    .line 2809
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2810
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    .line 2811
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/16 v11, 0xb4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v11, v12, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2812
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2814
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2815
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "switchTrackChecked"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2816
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "checkboxCheck"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2820
    :cond_6
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_8

    .line 2821
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2822
    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->lastAnimationTime:J

    sub-long v10, v3, v10

    .line 2823
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    long-to-float v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationDuration:F

    div-float/2addr v8, v10

    add-float/2addr v6, v8

    iput v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    cmpl-float v6, v6, v15

    if-lez v6, :cond_7

    .line 2825
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    .line 2827
    :cond_7
    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->lastAnimationTime:J

    .line 2828
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2831
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2832
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v14

    if-nez v3, :cond_c

    .line 2833
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2835
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2837
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    sub-long v6, v3, v6

    .line 2838
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8002(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 2839
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2840
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v6

    div-float/2addr v4, v13

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7916(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2841
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_e

    .line 2842
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_4

    .line 2845
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v6

    div-float/2addr v4, v13

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7924(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2846
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpg-float v3, v3, v14

    if-gez v3, :cond_e

    .line 2847
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2850
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2852
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v14

    if-eqz v3, :cond_10

    .line 2853
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 2854
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/2addr v6, v4

    .line 2855
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    .line 2856
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v8

    div-int/2addr v7, v4

    sub-int v4, v3, v7

    sub-int v10, v6, v7

    add-int/2addr v3, v7

    add-int/2addr v6, v7

    invoke-virtual {v8, v4, v10, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2857
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-nez v5, :cond_12

    .line 2862
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2863
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v16, v6

    move/from16 v7, v16

    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2864
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_11
    move/from16 v7, v16

    .line 2866
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2867
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_12
    move/from16 v7, v16

    :goto_5
    if-nez v5, :cond_13

    .line 2870
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_17

    .line 2871
    :cond_13
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x14

    .line 2872
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-eqz v5, :cond_16

    .line 2874
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2875
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    const/high16 v5, 0x3e800000    # 0.25f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_14

    div-float/2addr v4, v5

    int-to-float v3, v3

    const/4 v5, 0x2

    .line 2878
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v5, v6

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v5, v5, v4

    :goto_6
    add-float/2addr v3, v5

    :goto_7
    float-to-int v3, v3

    goto :goto_8

    :cond_14
    sub-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v8, v4, v6

    if-gtz v8, :cond_15

    div-float/2addr v4, v6

    int-to-float v3, v3

    const/4 v5, 0x2

    .line 2883
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v5, v6

    const/4 v6, 0x3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v6, v6, v4

    sub-float/2addr v5, v6

    goto :goto_6

    :cond_15
    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    int-to-float v3, v3

    const/4 v5, 0x1

    .line 2887
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v5, v5, v4

    add-float/2addr v6, v5

    add-float/2addr v3, v6

    goto :goto_7

    :cond_16
    const/high16 v4, 0x437f0000    # 255.0f

    .line 2891
    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->animationProgress:F

    sub-float/2addr v15, v5

    mul-float v15, v15, v4

    float-to-int v4, v15

    .line 2892
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2893
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2895
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v5, v6

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2896
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v2, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2897
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2903
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2906
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 2756
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2757
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 2740
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 2748
    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2749
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2750
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 2731
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2732
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2735
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    return-void
.end method
