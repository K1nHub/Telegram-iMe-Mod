.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemFilterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/iMe/ui/topics/TopicView;


# direct methods
.method private constructor <init>(Lcom/iMe/ui/topics/TopicView;Lcom/iMe/ui/topics/TopicView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;->rootView:Lcom/iMe/ui/topics/TopicView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;
    .locals 1

    const-string/jumbo v0, "rootView"

    .line 51
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    check-cast p0, Lcom/iMe/ui/topics/TopicView;

    .line 56
    new-instance v0, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;-><init>(Lcom/iMe/ui/topics/TopicView;Lcom/iMe/ui/topics/TopicView;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;
    .locals 2

    .line 41
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_filter:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;->getRoot()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/iMe/ui/topics/TopicView;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemFilterBinding;->rootView:Lcom/iMe/ui/topics/TopicView;

    return-object v0
.end method
