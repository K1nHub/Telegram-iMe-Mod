.class public final Lorg/telegram/messenger/databinding/ForkShopItemListBinding;
.super Ljava/lang/Object;
.source "ForkShopItemListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final botAvatar:Landroid/widget/ImageView;

.field public final botDescription:Landroid/widget/TextView;

.field public final botName:Landroid/widget/TextView;

.field public final botNewLabel:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final shopButton:Lme/grantland/widget/AutofitTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lme/grantland/widget/AutofitTextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botAvatar:Landroid/widget/ImageView;

    .line 47
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botDescription:Landroid/widget/TextView;

    .line 48
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botName:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botNewLabel:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkShopItemListBinding;
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
    sget v0, Lorg/telegram/messenger/R$id;->bot_description:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

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
    move-object v8, p0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->shop_button:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lme/grantland/widget/AutofitTextView;

    if-eqz v9, :cond_0

    .line 113
    new-instance p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lme/grantland/widget/AutofitTextView;)V

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkShopItemListBinding;
    .locals 2

    .line 68
    sget v0, Lorg/telegram/messenger/R$layout;->fork_shop_item_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkShopItemListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
