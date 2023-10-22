.class public final Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
.super Ljava/lang/Object;
.source "ForkContentCryptoboxStatusInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonOk:Lcom/iMe/ui/custom/BigActionButton;

.field public final recyclerStatuses:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 37
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    .line 38
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->recyclerStatuses:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
    .locals 4

    .line 69
    sget v0, Lorg/telegram/messenger/R$id;->button_ok:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v1, :cond_0

    .line 75
    sget v0, Lorg/telegram/messenger/R$id;->recycler_statuses:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 81
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 87
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 90
    :cond_0
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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
    .locals 2

    .line 56
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_cryptobox_status_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
