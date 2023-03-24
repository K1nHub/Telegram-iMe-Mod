.class Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
.super Landroid/widget/FrameLayout;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecretDeleteTimer"
.end annotation


# instance fields
.field private afterDeleteProgressPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private deleteProgressRect:Landroid/graphics/RectF;

.field private destroyTime:J

.field private destroyTtl:J

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private particlePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field private timerParticles:Lorg/telegram/ui/Components/TimerParticles;

.field private useVideoProgress:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 3

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    .line 127
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    .line 118
    new-instance p1, Lorg/telegram/ui/Components/TimerParticles;

    invoke-direct {p1}, Lorg/telegram/ui/Components/TimerParticles;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 130
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 131
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const v1, -0x19191a

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    .line 137
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x7f000000

    .line 143
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->flame_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V
    .locals 0

    .line 112
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setDestroyTime(JJZ)V

    return-void
.end method

.method private setDestroyTime(JJZ)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    .line 150
    iput-wide p3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    .line 151
    iput-boolean p5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x23

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    long-to-float v0, v4

    long-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->access$600(Lorg/telegram/ui/SecretMediaViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 187
    iget-wide v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    .line 190
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float/2addr v0, v1

    .line 195
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 197
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/TimerParticles;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x31

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
