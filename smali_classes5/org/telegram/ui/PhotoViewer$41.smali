.class Lorg/telegram/ui/PhotoViewer$41;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToPip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$ab2PKCIIvS9HvAJuKmAokZXeFhs(Lorg/telegram/ui/PhotoViewer$41;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$41;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 8059
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 8065
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8066
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8068
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8069
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8071
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8072
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8062
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 8063
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$21500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8064
    new-instance p1, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$41;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
