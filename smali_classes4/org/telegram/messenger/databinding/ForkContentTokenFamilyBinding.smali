.class public final Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
.super Ljava/lang/Object;
.source "ForkContentTokenFamilyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonDone:Landroid/widget/TextView;

.field public final divider:Lcom/iMe/ui/custom/DividerView;

.field public final recyclerTokens:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textDescription:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Lcom/iMe/ui/custom/DividerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 44
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->buttonDone:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    .line 46
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->recyclerTokens:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textDescription:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
    .locals 9

    .line 78
    sget v0, Lorg/telegram/messenger/R$id;->button_done:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Lorg/telegram/messenger/R$id;->divider:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/DividerView;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Lorg/telegram/messenger/R$id;->recycler_tokens:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 108
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Lcom/iMe/ui/custom/DividerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
    .locals 2

    .line 65
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_token_family:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
