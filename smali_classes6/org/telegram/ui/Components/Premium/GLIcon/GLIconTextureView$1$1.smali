.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GLIconTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->lambda$onSingleTapUp$0(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;->this$1:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;->this$1:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/4 v0, 0x0

    .line 155
    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 156
    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$100(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$200(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;J)V

    return-void
.end method
