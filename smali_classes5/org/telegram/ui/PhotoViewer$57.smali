.class Lorg/telegram/ui/PhotoViewer$57;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setVideoPlayerControlVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$shareWasAllowed:Z

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;ZZ)V
    .locals 0

    .line 9295
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$57;->val$visible:Z

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$57;->val$shareWasAllowed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 9298
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$57;->val$visible:Z

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 9299
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 9301
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$17600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/FadingTextViewLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9302
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$17500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/FadingTextViewLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9303
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$57;->val$shareWasAllowed:Z

    if-eqz p1, :cond_1

    .line 9304
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$17700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
