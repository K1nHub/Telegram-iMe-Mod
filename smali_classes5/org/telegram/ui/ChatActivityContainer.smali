.class public Lorg/telegram/ui/ChatActivityContainer;
.super Landroid/widget/FrameLayout;
.source "ChatActivityContainer.java"


# instance fields
.field public final chatActivity:Lorg/telegram/ui/ChatActivity;

.field private fragmentView:Landroid/view/View;

.field private isActive:Z

.field private final parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivityContainer;->isActive:Z

    .line 35
    iput-object p2, p0, Lorg/telegram/ui/ChatActivityContainer;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 37
    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 38
    iput-boolean p1, p2, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->onFragmentCreate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iput-object v1, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/ChatActivityContainer;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->onRemoveFromParent()V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivityContainer;->isActive:Z

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->onResume()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivityContainer;->isActive:Z

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivityContainer;->isActive:Z

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->onResume()V

    :cond_0
    return-void
.end method
