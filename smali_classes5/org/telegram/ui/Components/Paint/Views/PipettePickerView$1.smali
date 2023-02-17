.class Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipettePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->animateDisappear(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

.field final synthetic val$saveColor:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->val$saveColor:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->onStopPipette()V

    .line 95
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->val$saveColor:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;)Landroidx/core/util/Consumer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->access$000(Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
