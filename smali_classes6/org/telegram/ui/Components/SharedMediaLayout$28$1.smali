.class Lorg/telegram/ui/Components/SharedMediaLayout$28$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$28;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$28;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$28;I)V
    .locals 0

    .line 4569
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$28;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;->val$messageId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4572
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$28;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;->val$messageId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4573
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$28;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
