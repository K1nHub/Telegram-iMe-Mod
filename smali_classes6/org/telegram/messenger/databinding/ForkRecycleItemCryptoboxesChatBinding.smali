.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemCryptoboxesChatBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;
    .locals 4

    .line 68
    sget v0, Lorg/telegram/messenger/R$id;->input_chat:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v1, :cond_1

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    sget v2, Lorg/telegram/messenger/R$id;->text_description:I

    .line 77
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;-><init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;
    .locals 2

    .line 55
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_cryptoboxes_chat:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemCryptoboxesChatBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
