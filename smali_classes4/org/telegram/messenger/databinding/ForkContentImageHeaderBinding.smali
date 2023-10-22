.class public final Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;
.super Ljava/lang/Object;
.source "ForkContentImageHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 40
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;
    .locals 8

    .line 72
    sget v0, Lorg/telegram/messenger/R$id;->image_icon:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lorg/telegram/messenger/R$id;->image_network_icon:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lorg/telegram/messenger/R$id;->text_subtitle:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 96
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;
    .locals 2

    .line 59
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_image_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
