.class public final Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;
.super Ljava/lang/Object;
.source "ForkShopItemGridBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final botAvatar:Landroid/widget/ImageView;

.field public final botInstalledIcon:Landroid/widget/ImageView;

.field public final botName:Landroid/widget/TextView;

.field public final botNewLabel:Landroid/widget/TextView;

.field public final botStatus:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    .line 47
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    .line 48
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botStatus:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;
    .locals 10

    .line 81
    sget v0, Lorg/telegram/messenger/R$id;->bot_avatar:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lorg/telegram/messenger/R$id;->bot_installed_icon:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 93
    sget v0, Lorg/telegram/messenger/R$id;->bot_name:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Lorg/telegram/messenger/R$id;->bot_new_label:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Lorg/telegram/messenger/R$id;->bot_status:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 111
    sget v0, Lorg/telegram/messenger/R$id;->layoutLabel:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;
    .locals 2

    .line 68
    sget v0, Lorg/telegram/messenger/R$layout;->fork_shop_item_grid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
