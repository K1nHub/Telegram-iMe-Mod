.class public final Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;
.super Ljava/lang/Object;
.source "ForkContentDetailsIconCellBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final divider:Lcom/iMe/ui/custom/DividerView;

.field public final imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/iMe/ui/custom/DividerView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    .line 41
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textValue:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;
    .locals 8

    .line 73
    sget v0, Lorg/telegram/messenger/R$id;->divider:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/DividerView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lorg/telegram/messenger/R$id;->image_icon:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Lorg/telegram/messenger/R$id;->text_value:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/iMe/ui/custom/DividerView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;
    .locals 2

    .line 60
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_details_icon_cell:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
