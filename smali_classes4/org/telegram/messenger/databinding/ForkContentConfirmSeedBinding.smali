.class public final Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;
.super Ljava/lang/Object;
.source "ForkContentConfirmSeedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linearSwitcherWrapper:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 49
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->linearSwitcherWrapper:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;
    .locals 9

    .line 79
    sget v0, Lorg/telegram/messenger/R$id;->backup_word_switcher_1:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Lorg/telegram/messenger/R$id;->backup_word_switcher_2:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Lorg/telegram/messenger/R$id;->backup_word_switcher_3:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lorg/telegram/messenger/R$id;->backup_word_switcher_4:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->linear_switcher_wrapper:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 109
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;
    .locals 2

    .line 66
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_confirm_seed:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentConfirmSeedBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
