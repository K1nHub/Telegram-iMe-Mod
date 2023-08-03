.class Lorg/telegram/ui/Components/ChatActivityEnterView$21;
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

    .line 2951
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x14

    .line 3004
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 3005
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    .line 3006
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/2addr v5, v6

    .line 3007
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v6

    .line 3009
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3010
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3011
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_0

    .line 3013
    :cond_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 3019
    :cond_1
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    if-eqz v8, :cond_3

    .line 3020
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v10

    move v11, v4

    goto :goto_2

    .line 3023
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v10

    move v11, v6

    .line 3026
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->drawableColor:I

    const/high16 v13, 0x43480000    # 200.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v5

    if-eq v10, v12, :cond_6

    .line 3027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lastAnimationTime:J

    .line 3028
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->prevColorType:I

    if-eqz v4, :cond_5

    if-eq v4, v11, :cond_5

    .line 3029
    iput v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    if-eqz v8, :cond_4

    .line 3031
    iput v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationDuration:F

    goto :goto_3

    :cond_4
    const/high16 v4, 0x42f00000    # 120.0f

    .line 3033
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationDuration:F

    goto :goto_3

    .line 3036
    :cond_5
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    .line 3038
    :goto_3
    iput v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->prevColorType:I

    .line 3039
    iput v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->drawableColor:I

    .line 3040
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3041
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    .line 3042
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/16 v11, 0xb4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v11, v12, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3043
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v6

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3045
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3046
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3047
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3051
    :cond_6
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    cmpg-float v4, v4, v15

    if-gez v4, :cond_8

    .line 3052
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3053
    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lastAnimationTime:J

    sub-long v10, v4, v10

    .line 3054
    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    long-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationDuration:F

    div-float/2addr v10, v11

    add-float/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    cmpl-float v6, v6, v15

    if-lez v6, :cond_7

    .line 3056
    iput v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    .line 3058
    :cond_7
    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lastAnimationTime:J

    .line 3059
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 3062
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3063
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v14

    if-nez v4, :cond_c

    .line 3064
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3066
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3067
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3068
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v9

    sub-long v9, v4, v9

    .line 3069
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9602(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 3070
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3071
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v5, v9

    div-float/2addr v5, v13

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9516(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3072
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v15

    if-lez v4, :cond_e

    .line 3073
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_4

    .line 3076
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v5, v9

    div-float/2addr v5, v13

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9524(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3077
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_e

    .line 3078
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3081
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 3083
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v14

    if-eqz v4, :cond_10

    .line 3084
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    .line 3085
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v6, v9

    div-int/2addr v6, v5

    .line 3086
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 3087
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v10

    div-int/2addr v9, v5

    sub-int v5, v4, v9

    sub-int v11, v6, v9

    add-int/2addr v4, v9

    add-int/2addr v6, v9

    invoke-virtual {v10, v5, v11, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3088
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-nez v8, :cond_12

    .line 3093
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v4

    if-nez v4, :cond_11

    .line 3094
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v5, v16, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v7

    move/from16 v9, v16

    invoke-virtual {v4, v9, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3095
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_11
    move/from16 v9, v16

    .line 3097
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v9

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v4, v9, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3098
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_12
    move/from16 v9, v16

    :goto_5
    if-nez v8, :cond_13

    .line 3101
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_18

    .line 3102
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v5, :cond_14

    .line 3103
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 3105
    :cond_14
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    const/16 v6, 0x4b

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    if-eqz v8, :cond_17

    .line 3108
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3109
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    const/high16 v5, 0x3e800000    # 0.25f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_15

    div-float/2addr v4, v5

    int-to-float v2, v2

    const/4 v5, 0x2

    .line 3112
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v5, v4

    :goto_7
    add-float/2addr v2, v5

    :goto_8
    float-to-int v2, v2

    goto :goto_9

    :cond_15
    sub-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v8, v4, v6

    if-gtz v8, :cond_16

    div-float/2addr v4, v6

    int-to-float v2, v2

    const/4 v5, 0x2

    .line 3117
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    goto :goto_7

    :cond_16
    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    int-to-float v2, v2

    const/4 v5, 0x1

    .line 3121
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

    mul-float/2addr v5, v4

    add-float/2addr v6, v5

    add-float/2addr v2, v6

    goto :goto_8

    :cond_17
    const/high16 v4, 0x437f0000    # 255.0f

    .line 3125
    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->animationProgress:F

    sub-float/2addr v15, v5

    mul-float/2addr v15, v4

    float-to-int v4, v15

    .line 3126
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3127
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_9
    int-to-float v3, v3

    int-to-float v2, v2

    .line 3129
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3130
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int v5, v9, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v2, v9, v7, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3131
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_18
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3137
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3140
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 2984
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 2968
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2969
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 2976
    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 2959
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2960
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2963
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    return-void
.end method
