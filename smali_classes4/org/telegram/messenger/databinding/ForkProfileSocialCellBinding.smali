.class public final Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;
.super Ljava/lang/Object;
.source "ForkProfileSocialCellBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAdd:Landroid/widget/TextView;

.field public final linearImages:Landroid/widget/LinearLayout;

.field public final textSubTitle:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    .line 38
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->linearImages:Landroid/widget/LinearLayout;

    .line 39
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    .line 40
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;
    .locals 8

    .line 65
    sget v0, Lorg/telegram/messenger/R$id;->buttonAdd:I

    .line 66
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 71
    sget v0, Lorg/telegram/messenger/R$id;->linearImages:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 77
    sget v0, Lorg/telegram/messenger/R$id;->textSubTitle:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->textTitle:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 89
    new-instance v0, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;
    .locals 1

    const-string/jumbo v0, "parent"

    .line 53
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    sget v0, Lorg/telegram/messenger/R$layout;->fork_profile_social_cell:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    move-result-object p0

    return-object p0
.end method
