.class public final Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
.super Ljava/lang/Object;
.source "ForkFragmentCatalogUserChannelsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAdd:Lcom/iMe/ui/custom/ActionButton;

.field public final imageEmpty:Lorg/telegram/ui/Components/RLottieImageView;

.field public final recycleUserChannels:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final textEmptyDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textEmptyTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewEmpty:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 49
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->buttonAdd:Lcom/iMe/ui/custom/ActionButton;

    .line 50
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->imageEmpty:Lorg/telegram/ui/Components/RLottieImageView;

    .line 51
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->recycleUserChannels:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->viewEmpty:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
    .locals 10

    .line 84
    sget v0, Lorg/telegram/messenger/R$id;->button_add:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/ActionButton;

    if-eqz v4, :cond_0

    .line 90
    sget v0, Lorg/telegram/messenger/R$id;->image_empty:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 96
    sget v0, Lorg/telegram/messenger/R$id;->recycle_user_channels:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 102
    sget v0, Lorg/telegram/messenger/R$id;->text_empty_description:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 108
    sget v0, Lorg/telegram/messenger/R$id;->text_empty_title:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 114
    sget v0, Lorg/telegram/messenger/R$id;->view_empty:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/core/widget/NestedScrollView;

    if-eqz v9, :cond_0

    .line 120
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;-><init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/core/widget/NestedScrollView;)V

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
    .locals 2

    .line 71
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_catalog_user_channels:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
