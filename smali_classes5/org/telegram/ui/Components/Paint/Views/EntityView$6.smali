.class Lorg/telegram/ui/Components/Paint/Views/EntityView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    return-void
.end method
