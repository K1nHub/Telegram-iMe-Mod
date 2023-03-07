.class public final synthetic Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$72;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$72;ILandroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer$72;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$2:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer$72;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$72$$ExternalSyntheticLambda1;->f$2:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$72;->$r8$lambda$GsYZk8vw2yroPx_XL62xvSl74Ow(Lorg/telegram/ui/PhotoViewer$72;ILandroid/animation/AnimatorSet;)V

    return-void
.end method
