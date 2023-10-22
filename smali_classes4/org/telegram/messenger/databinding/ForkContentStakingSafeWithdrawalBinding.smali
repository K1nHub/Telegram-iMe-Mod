.class public final Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingSafeWithdrawalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

.field public final imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

.field public final linearSafeWithdrawal:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lorg/telegram/ui/Components/CheckBoxSquare;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 41
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 42
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

    .line 43
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->linearSafeWithdrawal:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 44
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;
    .locals 8

    .line 74
    sget v0, Lorg/telegram/messenger/R$id;->checkbox_safe_withdrawal:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lorg/telegram/messenger/R$id;->image_help:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lorg/telegram/messenger/R$id;->linear_safe_withdrawal:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lorg/telegram/messenger/R$id;->text_safe_withdrawal:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    move-object v3, p0

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lorg/telegram/ui/Components/CheckBoxSquare;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;
    .locals 2

    .line 61
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_safe_withdrawal:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method
