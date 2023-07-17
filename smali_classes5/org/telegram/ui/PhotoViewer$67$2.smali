.class Lorg/telegram/ui/PhotoViewer$67$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$67;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$67;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$67;)V
    .locals 0

    .line 13579
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$67$2;->this$1:Lorg/telegram/ui/PhotoViewer$67;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13582
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$67$2;->this$1:Lorg/telegram/ui/PhotoViewer$67;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$67;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setTranslationY(F)V

    return-void
.end method
