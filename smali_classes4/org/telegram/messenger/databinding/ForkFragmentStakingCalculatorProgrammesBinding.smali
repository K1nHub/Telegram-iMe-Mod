.class public final Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;
.super Ljava/lang/Object;
.source "ForkFragmentStakingCalculatorProgrammesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final recycleStakingProgrammes:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->rootView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->recycleStakingProgrammes:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;
    .locals 1

    const-string/jumbo v0, "rootView"

    .line 53
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;
    .locals 2

    .line 43
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_staking_calculator_programmes:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->rootView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
