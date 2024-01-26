.class public final Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;
.super Ljava/lang/Object;
.source "ForkContentFragmentProductDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final frameButtonContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewPriceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewTimeLeftCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 40
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    .line 41
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 42
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewPriceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 43
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewTimeLeftCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;
    .locals 8

    .line 73
    sget v0, Lorg/telegram/messenger/R$id;->frame_button_container:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lorg/telegram/messenger/R$id;->view_price_cell:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Lorg/telegram/messenger/R$id;->view_time_left_cell:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;
    .locals 2

    .line 60
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_fragment_product_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
