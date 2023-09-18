.class public final Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;
.super Ljava/lang/Object;
.source "ForkViewCollapsableHeaderPagerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final frameCollapsingContentContainer:Landroid/widget/FrameLayout;

.field public final framePagesContainer:Landroid/widget/FrameLayout;

.field public final frameTabsContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 48
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 50
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->frameCollapsingContentContainer:Landroid/widget/FrameLayout;

    .line 51
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->framePagesContainer:Landroid/widget/FrameLayout;

    .line 52
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->frameTabsContainer:Landroid/widget/FrameLayout;

    .line 53
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;
    .locals 10

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->appbar:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    .line 89
    move-object v5, p0

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 91
    sget v0, Lorg/telegram/messenger/R$id;->frame_collapsing_content_container:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lorg/telegram/messenger/R$id;->frame_pages_container:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->frame_tabs_container:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->toolbar:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/appbar/MaterialToolbar;

    if-eqz v9, :cond_0

    .line 115
    new-instance p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;
    .locals 2

    .line 70
    sget v0, Lorg/telegram/messenger/R$layout;->fork_view_collapsable_header_pager:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
