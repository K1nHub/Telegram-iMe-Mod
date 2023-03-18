.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/CubicBezierInterpolator;FFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$2:F

    iput p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$3:F

    iput p5, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$4:F

    iput p6, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$5:F

    iput p7, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$6:F

    iput p8, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$7:F

    iput p9, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$8:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$2:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$3:F

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$4:F

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$5:F

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$6:F

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$7:F

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda11;->f$8:F

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$NVHHu1RX1ITcAkZ40sVnjkyO0-M(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/CubicBezierInterpolator;FFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
