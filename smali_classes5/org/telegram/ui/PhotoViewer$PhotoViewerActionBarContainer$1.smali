.class Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->setTitleAnimated(Ljava/lang/CharSequence;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;->this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;->this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->access$100(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;->this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;->this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->access$102(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
