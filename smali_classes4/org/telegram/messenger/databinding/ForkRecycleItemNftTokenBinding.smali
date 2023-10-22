.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemNftTokenBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Lcom/iMe/ui/custom/nft/NftRootView;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Lcom/iMe/ui/custom/nft/NftRootView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;
    .locals 8

    .line 73
    sget v0, Lorg/telegram/messenger/R$id;->card_nft_token:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lorg/telegram/messenger/R$id;->image_nft_image:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v6, :cond_0

    .line 91
    move-object v7, p0

    check-cast v7, Lcom/iMe/ui/custom/nft/NftRootView;

    .line 93
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;-><init>(Lcom/iMe/ui/custom/nft/NftRootView;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Lcom/iMe/ui/custom/nft/NftRootView;)V

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;
    .locals 2

    .line 60
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_nft_token:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemNftTokenBinding;

    move-result-object p0

    return-object p0
.end method
