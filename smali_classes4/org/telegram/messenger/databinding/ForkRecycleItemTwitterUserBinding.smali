.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemTwitterUserBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;
    .locals 1

    const-string/jumbo v0, "rootView"

    .line 52
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    check-cast p0, Landroid/widget/FrameLayout;

    .line 57
    new-instance v0, Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;
    .locals 2

    .line 42
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_twitter_user:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemTwitterUserBinding;

    move-result-object p0

    return-object p0
.end method
