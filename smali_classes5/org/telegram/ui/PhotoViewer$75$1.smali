.class Lorg/telegram/ui/PhotoViewer$75$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$75;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$75;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$75;)V
    .locals 0

    .line 18332
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$75$1;->this$1:Lorg/telegram/ui/PhotoViewer$75;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 18335
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$75$1;->this$1:Lorg/telegram/ui/PhotoViewer$75;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$75;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30100(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18336
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$75$1;->this$1:Lorg/telegram/ui/PhotoViewer$75;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$75;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$30102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
