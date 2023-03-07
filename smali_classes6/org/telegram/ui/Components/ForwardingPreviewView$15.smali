.class Lorg/telegram/ui/Components/ForwardingPreviewView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ForwardingPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$15;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$15;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$15;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$15;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
