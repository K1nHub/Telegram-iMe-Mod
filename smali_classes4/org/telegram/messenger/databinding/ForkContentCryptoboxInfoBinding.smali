.class public final Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;
.super Ljava/lang/Object;
.source "ForkContentCryptoboxInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textCreationFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textCreationFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalTokensTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalTokensValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalUsersFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTotalUsersFeeValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 63
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;
    .locals 14

    .line 101
    sget v0, Lorg/telegram/messenger/R$id;->image_info:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->text_creation_fee_title:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 113
    sget v0, Lorg/telegram/messenger/R$id;->text_creation_fee_value:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 125
    sget v0, Lorg/telegram/messenger/R$id;->text_total_fee_title:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->text_total_fee_value:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 137
    sget v0, Lorg/telegram/messenger/R$id;->text_total_tokens_title:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 143
    sget v0, Lorg/telegram/messenger/R$id;->text_total_tokens_value:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 149
    sget v0, Lorg/telegram/messenger/R$id;->text_total_users_fee_title:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 155
    sget v0, Lorg/telegram/messenger/R$id;->text_total_users_fee_value:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 161
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;
    .locals 2

    .line 88
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_cryptobox_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
