.class public Lorg/telegram/ui/Components/HideViewAfterAnimation;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideViewAfterAnimation.java"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/telegram/ui/Components/HideViewAfterAnimation;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 17
    iget-object p1, p0, Lorg/telegram/ui/Components/HideViewAfterAnimation;->view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
