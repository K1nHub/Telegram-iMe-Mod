.class Lorg/telegram/ui/Components/DialogsItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/DialogsItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 312
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->setMoving(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
