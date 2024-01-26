.class public final Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingWithdrawalFeeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;
    .locals 8

    .line 71
    sget v0, Lorg/telegram/messenger/R$id;->text_fee_title:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    .line 77
    sget v0, Lorg/telegram/messenger/R$id;->text_fee_value:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->text_time_title:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 89
    sget v0, Lorg/telegram/messenger/R$id;->text_time_value:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 95
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;
    .locals 2

    .line 58
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_withdrawal_fee:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
