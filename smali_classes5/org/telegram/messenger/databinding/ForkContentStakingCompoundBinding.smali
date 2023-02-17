.class public final Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingCompoundBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textApr:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textApy:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewProgress:Lcom/smedialink/ui/custom/ProgressView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/smedialink/ui/custom/ProgressView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApr:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApy:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->viewProgress:Lcom/smedialink/ui/custom/ProgressView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;
    .locals 10

    .line 82
    sget v0, Lorg/telegram/messenger/R$id;->image_info:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lorg/telegram/messenger/R$id;->text_apr:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lorg/telegram/messenger/R$id;->text_apy:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lorg/telegram/messenger/R$id;->text_start_value:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Lorg/telegram/messenger/R$id;->text_threshold_value:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lorg/telegram/messenger/R$id;->view_progress:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/smedialink/ui/custom/ProgressView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/smedialink/ui/custom/ProgressView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;
    .locals 2

    .line 69
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_compound:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
