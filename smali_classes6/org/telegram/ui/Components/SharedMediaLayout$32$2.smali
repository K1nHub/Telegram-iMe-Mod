.class Lorg/telegram/ui/Components/SharedMediaLayout$32$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$32;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$32;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 5250
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5253
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$32;->val$finalProgressView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5254
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->val$finalProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopIgnoringView(Landroid/view/View;)V

    .line 5255
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iget-object v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$32;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$32;->val$finalProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
