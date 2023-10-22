.class Lorg/telegram/ui/PhotoViewer$38;
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

.field final synthetic val$textureView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$atgVkIDr3TwFjBpprUywFrO09Jo(Lorg/telegram/ui/PhotoViewer$38;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$38;->lambda$onAnimationEnd$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/view/View;)V
    .locals 0

    .line 7814
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$38;->val$textureView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 7820
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7821
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7822
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7824
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7825
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 7817
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$6302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 7818
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7819
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->val$textureView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$38$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$38$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$38;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
