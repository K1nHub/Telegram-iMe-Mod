.class Lorg/telegram/ui/Components/SharedMediaLayout$32$1;
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

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$32;I)V
    .locals 0

    .line 5306
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$1;->val$messageId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5309
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$1;->val$messageId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5310
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$32;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$32;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
