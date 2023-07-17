.class public final Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;
.super Ljava/lang/Object;
.source "ForkRecylcerImageItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final errorBlock:Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

.field public final imageView:Landroid/widget/ImageView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->errorBlock:Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

    .line 37
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->imageView:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;
    .locals 4

    .line 68
    sget v0, Lorg/telegram/messenger/R$id;->errorBlock:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

    move-result-object v0

    .line 75
    sget v1, Lorg/telegram/messenger/R$id;->imageView:I

    .line 76
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 81
    sget v1, Lorg/telegram/messenger/R$id;->progressBar:I

    .line 82
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 87
    new-instance v1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-object v1

    :cond_0
    move v0, v1

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;
    .locals 2

    .line 55
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recylcer_image_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
