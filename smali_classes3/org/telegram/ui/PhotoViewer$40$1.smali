.class Lorg/telegram/ui/PhotoViewer$40$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$40;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$40;


# direct methods
.method public static synthetic $r8$lambda$XGPpMPho2gpp0IHDiaFXM6mpQ9U(Lorg/telegram/ui/PhotoViewer$40$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$40$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer$40;)V
    .locals 0

    .line 7235
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 7242
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 7243
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7244
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 7246
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$21002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 7252
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 7238
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 7241
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$40$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$40$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$40$1;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x35c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
