.class Lorg/telegram/ui/PhotoViewer$73$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$73;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$73;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$73;)V
    .locals 0

    .line 14518
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 14529
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 14530
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$6702(Lorg/telegram/ui/PhotoViewer;I)I

    .line 14531
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 14532
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 14533
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14534
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$15000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14535
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->val$embedSeekTime:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$29400(Lorg/telegram/ui/PhotoViewer;I)V

    .line 14538
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->val$provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_1

    .line 14539
    invoke-interface {p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->onOpen()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 14521
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 14522
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->val$provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_0

    .line 14523
    invoke-interface {p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->onPreOpen()V

    :cond_0
    return-void
.end method
