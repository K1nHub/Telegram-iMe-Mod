.class Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;
.super Ljava/lang/Object;
.source "ThanosEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animation"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public final buffer:[I

.field public currentBuffer:I

.field public customMatrix:Z

.field public final density:F

.field public doneCallback:Ljava/lang/Runnable;

.field public firstDraw:Z

.field public final glMatrixValues:[F

.field public gridHeight:I

.field public gridSize:F

.field public gridWidth:I

.field public invalidateMatrix:Z

.field private lastDrawTime:J

.field public left:F

.field public longevity:F

.field public final matrix:Landroid/graphics/Matrix;

.field public final matrixValues:[F

.field public offsetLeft:F

.field public offsetTop:F

.field public particlesCount:I

.field public final seed:F

.field public startCallback:Ljava/lang/Runnable;

.field public final texture:[I

.field final synthetic this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

.field public time:F

.field public timeScale:F

.field public top:F

.field public viewHeight:I

.field public viewWidth:I

.field public views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OizjEeyoP3chI6cUjJ9lNwHskKc(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lambda$done$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$cJwJ9d9ZO-0OUEGDau-Di1IXgLY(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lambda$new$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXxQ8-lHjIJNusF6aXH50MNSaB8(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 750
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 719
    iput-wide v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 p1, 0x0

    .line 720
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    .line 725
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    .line 726
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 727
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    .line 728
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 729
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const p1, 0x3f933333    # 1.15f

    .line 730
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    .line 731
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 p1, 0x0

    .line 732
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 733
    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v1, v1, [F

    .line 734
    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    .line 735
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    .line 742
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v0, [I

    .line 745
    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 746
    iput-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 751
    fill-array-data v3, :array_0

    .line 752
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 753
    aget p1, v3, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 754
    aget p1, v3, v0

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    .line 755
    aget p1, v3, v2

    const/4 v2, 0x3

    aget v2, v3, v2

    const/4 v4, 0x6

    aget v5, v3, v4

    const/4 v6, 0x7

    aget v7, v3, v6

    invoke-static {p1, v2, v5, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    const/4 p1, 0x4

    .line 756
    aget p1, v3, p1

    const/4 v2, 0x5

    aget v2, v3, v2

    aget v4, v3, v4

    aget v3, v3, v6

    invoke-static {p1, v2, v4, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    .line 757
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    .line 758
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 759
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->retrieveMatrixValues()V

    .line 760
    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    .line 761
    iput-object p5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    .line 763
    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 6

    .line 1053
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 719
    iput-wide v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 p1, 0x0

    .line 720
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    .line 725
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    .line 726
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 727
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    .line 728
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 729
    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const v1, 0x3f933333    # 1.15f

    .line 730
    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    .line 731
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 733
    iput-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v2, v2, [F

    .line 734
    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    .line 735
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    .line 742
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v0, [I

    .line 745
    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 746
    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    .line 1054
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    .line 1056
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    .line 1057
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    .line 1058
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 1059
    instance-of v2, p2, Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v2, :cond_0

    .line 1060
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsRight()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    .line 1061
    iget v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 1063
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    .line 1064
    new-instance p4, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    .line 1073
    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    mul-float/2addr p4, p3

    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    .line 1074
    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p3, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p3, v3

    add-float/2addr p3, v2

    div-float/2addr p4, p3

    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    .line 1077
    iget p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    .line 1078
    new-instance p3, Landroid/graphics/Canvas;

    iget-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1079
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1080
    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    neg-float p4, p4

    invoke-virtual {p3, p4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1081
    instance-of p4, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p4, :cond_1

    .line 1082
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v0, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    .line 1084
    :cond_1
    instance-of v2, p2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_2

    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1085
    invoke-virtual {v3, p3, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 1086
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1087
    invoke-virtual {v3, p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 1089
    :cond_3
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_5

    .line 1091
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1092
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1093
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1094
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p3, p1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1095
    invoke-virtual {v3, p3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1096
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1098
    :cond_4
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_5
    if-eqz p4, :cond_6

    .line 1101
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 1103
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 1105
    :cond_7
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1107
    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v0, p1

    .line 766
    iput-object v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 719
    iput-wide v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 v0, 0x0

    .line 720
    iput v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v1, 0x1

    .line 721
    iput-boolean v1, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    .line 725
    iput v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    .line 726
    iput v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    .line 727
    iput v0, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    .line 728
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 729
    iput v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const v2, 0x3f933333    # 1.15f

    .line 730
    iput v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    .line 731
    iput-boolean v1, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 v11, 0x0

    .line 732
    iput-boolean v11, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 733
    iput-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v2, v2, [F

    .line 734
    iput-object v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    .line 735
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    .line 742
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v1, [I

    .line 745
    iput-object v2, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 746
    iput-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    .line 767
    iget-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    move v5, v4

    move v6, v5

    move v7, v11

    move v4, v3

    .line 770
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 771
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 772
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 773
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 774
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 775
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v12, v8

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    int-to-float v12, v5

    .line 777
    iput v12, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    int-to-float v13, v6

    .line 778
    iput v13, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    sub-int/2addr v3, v6

    .line 779
    iput v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    sub-int/2addr v4, v5

    .line 780
    iput v4, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    move-object/from16 v3, p3

    .line 781
    iput-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    .line 782
    new-instance v3, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda0;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    move v3, v11

    .line 793
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 794
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_1

    .line 795
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 799
    :cond_2
    iget v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget v4, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    .line 800
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v3, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    return-void

    .line 802
    :cond_3
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v3, :cond_4

    return-void

    .line 803
    :cond_4
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lorg/telegram/ui/Components/RecyclerListView;

    .line 804
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-nez v3, :cond_5

    return-void

    .line 805
    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    .line 806
    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->getChatActivity()Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    .line 807
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 809
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 810
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 811
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move v5, v11

    :goto_2
    const/4 v11, 0x3

    if-ge v5, v11, :cond_31

    .line 813
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-ne v5, v2, :cond_6

    .line 814
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v28, v4

    move/from16 v32, v5

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move/from16 v25, v12

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    const/16 v26, 0xa

    goto/16 :goto_10

    :cond_6
    const/4 v11, 0x0

    .line 817
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_27

    .line 818
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 819
    instance-of v1, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_25

    .line 820
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 821
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-gtz v0, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_25

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_25

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    goto/16 :goto_8

    .line 825
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 826
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v25, v12

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v25, v12

    const/4 v2, 0x0

    :goto_5
    if-nez v5, :cond_12

    if-nez v2, :cond_a

    .line 828
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v12, :cond_12

    :cond_a
    if-eqz v2, :cond_b

    .line 829
    iget-boolean v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v12, :cond_b

    iget-byte v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v12, :cond_f

    iget-byte v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v12, :cond_f

    :cond_b
    if-eqz v2, :cond_c

    .line 830
    iget-boolean v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v12, :cond_d

    .line 831
    :cond_c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v2, :cond_e

    .line 833
    iget-byte v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v12, :cond_f

    iget-byte v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v12, :cond_f

    :cond_e
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 834
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-nez v2, :cond_10

    .line 837
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v12, :cond_10

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v12, :cond_12

    :cond_10
    if-eqz v2, :cond_11

    .line 838
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v12, 0x8

    and-int/2addr v2, v12

    if-eqz v2, :cond_12

    .line 839
    :cond_11
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v0, :cond_24

    if-nez v5, :cond_13

    .line 845
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_24

    goto :goto_6

    :cond_13
    const/4 v12, 0x1

    :goto_6
    if-ne v5, v12, :cond_14

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v2, :cond_14

    goto/16 :goto_7

    :cond_14
    if-nez v5, :cond_15

    .line 848
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v2, :cond_24

    :cond_15
    const/4 v2, 0x1

    if-ne v5, v2, :cond_16

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v2, :cond_16

    goto/16 :goto_7

    :cond_16
    const/4 v2, 0x2

    if-ne v5, v2, :cond_17

    .line 851
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v12

    if-eqz v12, :cond_24

    :cond_17
    if-eq v5, v2, :cond_18

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v12

    if-eqz v12, :cond_18

    goto/16 :goto_7

    .line 855
    :cond_18
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 856
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 857
    iput v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 858
    iput v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 859
    iput v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 861
    iput-boolean v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 862
    iput-boolean v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 863
    iput-object v1, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 864
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_19
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v12

    iput-boolean v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 868
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v12

    iput-boolean v12, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 870
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v12

    add-int/2addr v2, v12

    .line 871
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v12

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v17

    add-int v12, v12, v17

    .line 872
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v17

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v18

    add-int v17, v17, v18

    .line 873
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v18

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v19, v14

    .line 875
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v14

    iget v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v20, 0x4

    and-int/lit8 v14, v14, 0x4

    const/16 v26, 0xa

    if-nez v14, :cond_1a

    .line 876
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v17, v17, v14

    :cond_1a
    move-object/from16 p1, v15

    move/from16 v14, v17

    .line 879
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v15

    iget v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_1b

    .line 880
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int v18, v18, v15

    :cond_1b
    move/from16 v15, v18

    .line 883
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v16

    move-object/from16 v27, v6

    if-eqz v16, :cond_1c

    .line 884
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 887
    :cond_1c
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v1, :cond_1d

    if-ge v14, v1, :cond_1e

    .line 888
    :cond_1d
    iput v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 890
    :cond_1e
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v1, :cond_1f

    if-le v15, v1, :cond_20

    .line 891
    :cond_1f
    iput v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 893
    :cond_20
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v1, :cond_21

    if-ge v2, v1, :cond_22

    .line 894
    :cond_21
    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 896
    :cond_22
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v1, :cond_23

    if-le v12, v1, :cond_26

    .line 897
    :cond_23
    iput v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    goto :goto_a

    :cond_24
    :goto_7
    move-object/from16 v27, v6

    goto :goto_9

    :cond_25
    :goto_8
    move-object/from16 v27, v6

    move/from16 v25, v12

    :goto_9
    move-object/from16 v19, v14

    move-object/from16 p1, v15

    const/16 v26, 0xa

    :cond_26
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v15, p1

    move-object/from16 v14, v19

    move/from16 v12, v25

    move-object/from16 v6, v27

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_27
    move-object/from16 v27, v6

    move/from16 v25, v12

    move-object/from16 v19, v14

    move-object/from16 p1, v15

    const/16 v26, 0xa

    const/4 v2, 0x0

    .line 902
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_30

    .line 903
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 904
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 905
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v11, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v11, v11

    add-float/2addr v11, v1

    iget v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v11, v14

    .line 906
    iget v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v14, v14

    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v14, v15

    .line 907
    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v15, v15

    add-float/2addr v15, v1

    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v1, v15

    .line 908
    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v15, v15

    iget v12, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v15, v12

    .line 910
    iget-boolean v12, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v12, :cond_28

    .line 911
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    add-float/2addr v14, v6

    .line 912
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    add-float/2addr v15, v6

    .line 915
    :cond_28
    iget v6, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v12, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v12, v12

    sub-float/2addr v6, v12

    const/16 v12, 0x14

    move-object/from16 v28, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    cmpg-float v4, v14, v6

    if-gez v4, :cond_29

    .line 916
    iget v4, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v6, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v14, v4, v6

    .line 919
    :cond_29
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v4, v15, v4

    if-lez v4, :cond_2a

    .line 920
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v15, v4

    .line 923
    :cond_2a
    iget v4, v9, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    sub-float v6, v14, v4

    sub-float v4, v15, v4

    .line 926
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v14

    if-nez v12, :cond_2c

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v12

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_2b

    goto :goto_c

    :cond_2b
    const/4 v12, 0x0

    goto :goto_d

    :cond_2c
    :goto_c
    const/4 v12, 0x1

    :goto_d
    const/high16 v29, 0x40000000    # 2.0f

    if-eqz v12, :cond_2d

    .line 928
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 929
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v14

    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v15

    sub-float v16, v1, v11

    div-float v16, v16, v29

    add-float v9, v11, v16

    sub-float v16, v4, v6

    div-float v16, v16, v29

    move-object/from16 v30, v7

    add-float v7, v6, v16

    invoke-virtual {v8, v14, v15, v9, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_e

    :cond_2d
    move-object/from16 v30, v7

    :goto_e
    const/16 v22, 0x0

    .line 932
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v14, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v9, v11

    float-to-int v15, v6

    move/from16 v31, v13

    float-to-int v13, v1

    move/from16 v32, v5

    float-to-int v5, v4

    move/from16 p3, v2

    iget-boolean v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v23

    move-object/from16 v33, v19

    move-object/from16 v34, p1

    move/from16 v17, v15

    move-object v15, v8

    move/from16 v16, v9

    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v14 .. v23}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 933
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v5, 0x0

    iput-object v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 934
    iget-boolean v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v12, :cond_2f

    .line 936
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    .line 937
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2f

    .line 938
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 939
    instance-of v9, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_2e

    move-object v9, v7

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-ne v12, v0, :cond_2e

    .line 941
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v12

    .line 942
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    int-to-float v12, v12

    sub-float v12, v11, v12

    sub-float v13, v1, v11

    div-float v13, v13, v29

    add-float/2addr v12, v13

    .line 943
    invoke-virtual {v7, v12}, Landroid/view/View;->setPivotX(F)V

    int-to-float v9, v9

    sub-float v9, v6, v9

    sub-float v12, v4, v6

    div-float v12, v12, v29

    add-float/2addr v9, v12

    .line 944
    invoke-virtual {v7, v9}, Landroid/view/View;->setPivotY(F)V

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2f
    add-int/lit8 v2, p3, 0x1

    move-object/from16 v9, p0

    move-object/from16 v4, v28

    move-object/from16 v7, v30

    move/from16 v13, v31

    move/from16 v5, v32

    move-object/from16 v19, v33

    move-object/from16 p1, v34

    goto/16 :goto_b

    :cond_30
    move-object/from16 v34, p1

    move-object/from16 v28, v4

    move/from16 v32, v5

    move-object/from16 v30, v7

    move/from16 v31, v13

    move-object/from16 v33, v19

    :goto_10
    add-int/lit8 v5, v32, 0x1

    move-object/from16 v9, p0

    move/from16 v12, v25

    move-object/from16 v6, v27

    move-object/from16 v4, v28

    move-object/from16 v7, v30

    move/from16 v13, v31

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_31
    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move/from16 v25, v12

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    const/4 v2, 0x0

    .line 950
    :goto_11
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_34

    .line 951
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 952
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 953
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v1, v1, v31

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, v3, v25

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 954
    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 955
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_32

    .line 956
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_12

    .line 957
    :cond_32
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_33

    .line 958
    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 960
    :cond_33
    :goto_12
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 962
    :cond_34
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    move-object/from16 v7, v30

    iget v1, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v0, v1

    iget v1, v7, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v9, v0, v1

    .line 963
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_36

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v11, :cond_35

    move-object/from16 v6, v27

    .line 966
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v13, 0x0

    .line 967
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    sub-float v14, v0, v31

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    sub-float v15, v0, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v16, v6

    move v6, v13

    move-object v13, v7

    move v7, v14

    move-object v14, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    add-int/lit8 v12, v12, 0x1

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v27, v16

    goto :goto_13

    :cond_35
    move-object v13, v7

    move-object v14, v8

    move-object/from16 v16, v27

    .line 969
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto :goto_14

    :cond_36
    move-object v13, v7

    move-object v14, v8

    .line 971
    :goto_14
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_38

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v11, :cond_37

    move-object/from16 v15, v34

    .line 974
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x1

    .line 975
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    sub-float v7, v0, v31

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    sub-float v8, v0, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v13

    move-object v3, v14

    move v4, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_37
    move-object/from16 v15, v34

    .line 977
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 979
    :cond_38
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3b

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v11, :cond_3a

    move-object/from16 v15, v33

    .line 982
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 983
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v0, :cond_39

    goto :goto_17

    :cond_39
    const/4 v6, 0x2

    .line 986
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    sub-float v7, v0, v31

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    sub-float v8, v0, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v13

    move-object v3, v14

    move v4, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    :goto_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v33, v15

    goto :goto_16

    :cond_3a
    move-object/from16 v15, v33

    .line 988
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 990
    :cond_3b
    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    .line 992
    :goto_18
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 993
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_3c

    .line 994
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    goto :goto_19

    :cond_3c
    const/4 v1, 0x0

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3d
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;
    .locals 0

    .line 716
    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 716
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V
    .locals 0

    .line 1000
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1001
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1003
    :goto_0
    invoke-virtual {p3, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x1

    .line 1004
    invoke-virtual {p5, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 p4, 0x0

    if-nez p6, :cond_1

    .line 1006
    invoke-virtual {p5, p3, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    goto :goto_2

    :cond_1
    if-ne p6, p2, :cond_2

    .line 1008
    invoke-virtual {p5, p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    goto :goto_2

    .line 1010
    :cond_2
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    if-eqz p6, :cond_3

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    iget p6, p6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p6, p2

    if-nez p6, :cond_3

    goto :goto_1

    :cond_3
    move p2, p4

    :goto_1
    invoke-virtual {p5, p3, p2, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    .line 1012
    :goto_2
    invoke-virtual {p5, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 1013
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private synthetic lambda$done$2()V
    .locals 1

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1201
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 783
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 784
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 785
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 787
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1065
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1066
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 1069
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retrieveMatrixValues()V
    .locals 8

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x3

    .line 1113
    aget v4, v1, v3

    const/4 v5, 0x1

    aput v4, v0, v5

    const/4 v4, 0x6

    .line 1114
    aget v6, v1, v4

    const/4 v7, 0x2

    aput v6, v0, v7

    .line 1115
    aget v5, v1, v5

    aput v5, v0, v3

    const/4 v3, 0x4

    .line 1116
    aget v5, v1, v3

    aput v5, v0, v3

    const/4 v3, 0x7

    .line 1117
    aget v5, v1, v3

    const/4 v6, 0x5

    aput v5, v0, v6

    .line 1118
    aget v5, v1, v7

    aput v5, v0, v4

    .line 1119
    aget v4, v1, v6

    aput v4, v0, v3

    const/16 v3, 0x8

    .line 1120
    aget v1, v1, v3

    aput v1, v0, v3

    .line 1121
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    return-void
.end method


# virtual methods
.method public calcParticlesGrid(F)V
    .locals 5

    .line 1018
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const v0, 0x1d4c0

    goto :goto_0

    :cond_1
    const v0, 0xea60

    :goto_0
    const v2, 0x3ecccccd    # 0.4f

    .line 1030
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1031
    iget v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    const/16 v0, 0xa

    invoke-static {v2, p1, v0}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    .line 1033
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 1034
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    .line 1035
    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    .line 1036
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    mul-int v3, p1, v2

    iget v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    if-ge v3, v4, :cond_3

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 1038
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1040
    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    goto :goto_1

    :cond_3
    mul-int v0, p1, v2

    .line 1043
    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    .line 1044
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridSize:F

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES31;->glGenBuffers(I[II)V

    :goto_2
    if-ge v0, v1, :cond_4

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    aget p1, p1, v0

    const v2, 0x8892

    invoke-static {v2, p1}, Landroid/opengl/GLES31;->glBindBuffer(II)V

    .line 1049
    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    mul-int/lit8 p1, p1, 0x1c

    const/4 v3, 0x0

    const v4, 0x88e8

    invoke-static {v2, p1, v3, v4}, Landroid/opengl/GLES31;->glBufferData(IILjava/nio/Buffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public done(Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1191
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES31;->glDeleteBuffers(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1192
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteProgram(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1194
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1902(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;I)I

    :cond_0
    const/4 v0, 0x1

    .line 1196
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES31;->glDeleteTextures(I[II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_1

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1199
    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 20

    move-object/from16 v0, p0

    .line 1125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1126
    iget-wide v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    sub-long v3, v1, v3

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    .line 1127
    :goto_0
    iput-wide v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    .line 1129
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    if-nez v1, :cond_1

    .line 1130
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1131
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1133
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->retrieveMatrixValues()V

    .line 1136
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    float-to-double v1, v1

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    float-to-double v5, v5

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v2, v6}, Landroid/opengl/GLES31;->glUniformMatrix3fv(IIZ[FI)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v2, v7

    :goto_1
    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1141
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    double-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1142
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1143
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridSize:F

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES31;->glUniform3f(IFFF)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES31;->glUniform2f(IFF)V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES31;->glUniform2f(IFF)V

    .line 1147
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1400(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1148
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    invoke-static {v1, v7, v7}, Landroid/opengl/GLES31;->glUniform2f(IFF)V

    .line 1149
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 1150
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    const v1, 0x84c0

    .line 1152
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 1153
    iget-object v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    aget v2, v2, v6

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1154
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    invoke-static {v1, v6}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 1156
    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    aget v1, v1, v2

    const v2, 0x8892

    invoke-static {v2, v1}, Landroid/opengl/GLES31;->glBindBuffer(II)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    .line 1157
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1158
    invoke-static {v6}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x1c

    const/16 v18, 0x8

    .line 1159
    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1160
    invoke-static {v5}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v7, 0x2

    const/16 v12, 0x10

    .line 1161
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    const/4 v1, 0x2

    .line 1162
    invoke-static {v1}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v12, 0x18

    .line 1163
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    const/4 v3, 0x3

    .line 1164
    invoke-static {v3}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    .line 1165
    iget-object v4, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget v7, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    rsub-int/lit8 v7, v7, 0x1

    aget v4, v4, v7

    const v7, 0x8c8e

    invoke-static {v7, v6, v4}, Landroid/opengl/GLES31;->glBindBufferBase(III)V

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const/4 v13, 0x0

    .line 1166
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1167
    invoke-static {v6}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/16 v19, 0x8

    .line 1168
    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1169
    invoke-static {v5}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v8, 0x2

    const/16 v13, 0x10

    .line 1170
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1171
    invoke-static {v1}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v19, 0x18

    .line 1172
    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZII)V

    .line 1173
    invoke-static {v3}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    .line 1175
    invoke-static {v6}, Landroid/opengl/GLES31;->glBeginTransformFeedback(I)V

    .line 1176
    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    invoke-static {v6, v6, v1}, Landroid/opengl/GLES31;->glDrawArrays(III)V

    .line 1177
    invoke-static {}, Landroid/opengl/GLES31;->glEndTransformFeedback()V

    .line 1179
    invoke-static {v2, v6}, Landroid/opengl/GLES31;->glBindBuffer(II)V

    .line 1180
    invoke-static {v7, v6}, Landroid/opengl/GLES31;->glBindBuffer(II)V

    .line 1182
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    .line 1183
    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    sub-int/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    return-void
.end method

.method public isDead()Z
    .locals 3

    .line 1187
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
