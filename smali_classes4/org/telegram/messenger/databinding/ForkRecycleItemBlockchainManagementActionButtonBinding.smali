.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemBlockchainManagementActionButtonBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Cells/TextCell;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;
    .locals 1

    const-string/jumbo v0, "rootView"

    .line 54
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    check-cast p0, Lorg/telegram/ui/Cells/TextCell;

    .line 59
    new-instance v0, Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;-><init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Cells/TextCell;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;
    .locals 2

    .line 43
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_blockchain_management_action_button:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemBlockchainManagementActionButtonBinding;

    move-result-object p0

    return-object p0
.end method
