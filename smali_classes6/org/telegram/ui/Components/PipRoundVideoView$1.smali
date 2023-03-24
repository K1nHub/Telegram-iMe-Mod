.class Lorg/telegram/ui/Components/PipRoundVideoView$1;
.super Landroid/widget/FrameLayout;
.source "PipRoundVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startDragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 171
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 173
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x7d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    const-string v1, "chat_inBubble"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v0, 0x3f

    .line 178
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x426e0000    # 59.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    .line 98
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 110
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_a

    .line 116
    iget p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    sub-float p1, v0, p1

    .line 117
    iget v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    sub-float v3, v2, v3

    .line 118
    iget-boolean v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    if-eqz v6, :cond_2

    .line 119
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_d

    .line 120
    :cond_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    .line 121
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    goto/16 :goto_4

    .line 123
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-eqz v6, :cond_d

    .line 124
    iget-object v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$100(Lorg/telegram/ui/Components/PipRoundVideoView;)I

    move-result p1

    div-int/2addr p1, v4

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v4, p1

    if-ge v3, v4, :cond_3

    .line 128
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 129
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v6

    add-int/2addr v4, p1

    if-le v3, v4, :cond_4

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v6

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 133
    :cond_4
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v3, :cond_5

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    int-to-float p1, p1

    div-float/2addr v3, p1

    mul-float/2addr v3, v4

    add-float/2addr v6, v3

    goto :goto_1

    .line 135
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_6

    .line 136
    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float p1, p1

    div-float/2addr v3, p1

    mul-float/2addr v3, v4

    sub-float/2addr v6, v3

    .line 138
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_7

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 142
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p1, :cond_8

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 144
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    if-le p1, v3, :cond_9

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$300(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iput v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    .line 149
    iput v2, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    goto :goto_4

    .line 151
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_d

    .line 152
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-nez p1, :cond_c

    .line 153
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 155
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_3

    .line 158
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 162
    :cond_c
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    .line 163
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$400(Lorg/telegram/ui/Components/PipRoundVideoView;)V

    :cond_d
    :goto_4
    return v5
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
