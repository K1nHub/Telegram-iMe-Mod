.class Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "PhotoAttachPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private crossfadePaint:Landroid/graphics/Paint;

.field private lastUpdate:J

.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->crossfadePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    if-eq v1, v2, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    int-to-float v6, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v3, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 133
    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$200(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$200(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    if-nez v0, :cond_5

    .line 136
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$300(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$300(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$400(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$500(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$600(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v6

    mul-float v5, v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$300(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Path;

    move-result-object v0

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 143
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$700(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$700(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$800(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$900(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->crossfadePaint:Landroid/graphics/Paint;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$800(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$900(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->crossfadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-wide/16 v2, 0x10

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->lastUpdate:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_6

    const/high16 p1, 0x437a0000    # 250.0f

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 158
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$800(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result v4

    long-to-float v2, v2

    div-float/2addr v2, p1

    add-float/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$802(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;F)F

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->lastUpdate:J

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 161
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$800(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$900(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$900(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$902(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1002(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Ljava/lang/Float;)Ljava/lang/Float;

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_3
    return-void
.end method
