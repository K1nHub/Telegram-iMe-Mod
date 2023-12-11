.class Lorg/telegram/ui/PhotoViewer$68$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$68;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$68;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$68;)V
    .locals 0

    .line 15121
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 15132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 15133
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$7102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 15134
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19900(Lorg/telegram/ui/PhotoViewer;)V

    .line 15135
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$6700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 15136
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 15137
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 15138
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$14500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15139
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->val$embedSeekTime:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$29500(Lorg/telegram/ui/PhotoViewer;I)V

    .line 15142
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->val$provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_1

    .line 15143
    invoke-interface {p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->onOpen()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 15124
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 15125
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68$1;->this$1:Lorg/telegram/ui/PhotoViewer$68;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$68;->val$provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_0

    .line 15126
    invoke-interface {p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->onPreOpen()V

    :cond_0
    return-void
.end method
