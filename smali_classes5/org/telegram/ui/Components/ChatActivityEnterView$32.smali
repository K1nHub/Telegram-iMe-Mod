.class Lorg/telegram/ui/Components/ChatActivityEnterView$32;
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

    .line 3871
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3923
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 3924
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 3926
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3927
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3928
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    .line 3930
    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 3936
    :cond_1
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

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

    .line 3937
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    goto :goto_2

    .line 3940
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 3943
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->drawableColor:I

    const/high16 v13, 0x43480000    # 200.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v4

    if-eq v10, v12, :cond_6

    .line 3944
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->lastAnimationTime:J

    .line 3945
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->prevColorType:I

    if-eqz v3, :cond_5

    if-eq v3, v11, :cond_5

    .line 3946
    iput v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    if-eqz v5, :cond_4

    .line 3948
    iput v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationDuration:F

    goto :goto_3

    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    .line 3950
    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationDuration:F

    goto :goto_3

    .line 3953
    :cond_5
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    .line 3955
    :goto_3
    iput v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->prevColorType:I

    .line 3956
    iput v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->drawableColor:I

    .line 3957
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3958
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    .line 3959
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

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

    .line 3960
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3962
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3963
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "switchTrackChecked"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3964
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

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

    .line 3968
    :cond_6
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_8

    .line 3969
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3970
    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->lastAnimationTime:J

    sub-long v10, v3, v10

    .line 3971
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    long-to-float v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationDuration:F

    div-float/2addr v8, v10

    add-float/2addr v6, v8

    iput v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    cmpl-float v6, v6, v15

    if-lez v6, :cond_7

    .line 3973
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    .line 3975
    :cond_7
    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->lastAnimationTime:J

    .line 3976
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 3979
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3980
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v14

    if-nez v3, :cond_c

    .line 3981
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3983
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3985
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11800(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    sub-long v6, v3, v6

    .line 3986
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11802(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 3987
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3988
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v6

    div-float/2addr v4, v13

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11716(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3989
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_e

    .line 3990
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_4

    .line 3993
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v6

    div-float/2addr v4, v13

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11724(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3994
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpg-float v3, v3, v14

    if-gez v3, :cond_e

    .line 3995
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3998
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 4000
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v14

    if-eqz v3, :cond_10

    .line 4001
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 4002
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/2addr v6, v4

    .line 4003
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    .line 4004
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v8

    div-int/2addr v7, v4

    sub-int v4, v3, v7

    sub-int v10, v6, v7

    add-int/2addr v3, v7

    add-int/2addr v6, v7

    invoke-virtual {v8, v4, v10, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4005
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-nez v5, :cond_12

    .line 4010
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4011
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v16, v6

    move/from16 v7, v16

    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4012
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_11
    move/from16 v7, v16

    .line 4014
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4015
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_12
    move/from16 v7, v16

    :goto_5
    if-nez v5, :cond_13

    .line 4018
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_17

    .line 4019
    :cond_13
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x14

    .line 4020
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-eqz v5, :cond_16

    .line 4022
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4023
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    const/high16 v5, 0x3e800000    # 0.25f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_14

    div-float/2addr v4, v5

    int-to-float v3, v3

    const/4 v5, 0x2

    .line 4026
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

    .line 4031
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

    .line 4035
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

    .line 4039
    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->animationProgress:F

    sub-float/2addr v15, v5

    mul-float v15, v15, v4

    float-to-int v4, v15

    .line 4040
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4041
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4043
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

    .line 4044
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v2, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4045
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4051
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4054
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 3904
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3905
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3906
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 3888
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3889
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 3896
    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 3897
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3898
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 3879
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3880
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3881
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3883
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$32;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    return-void
.end method
