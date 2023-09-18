.class public final Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
.super Ljava/lang/Object;
.source "ForkContentCryptoboxSuspensionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

.field public final feeView:Lcom/iMe/ui/custom/FeeView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/FeeView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 49
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    .line 50
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    .line 52
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
    .locals 10

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 89
    sget v0, Lorg/telegram/messenger/R$id;->button_process:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 95
    sget v0, Lorg/telegram/messenger/R$id;->fee_view:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/FeeView;

    if-eqz v6, :cond_0

    .line 101
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 115
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;-><init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/FeeView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
    .locals 2

    .line 70
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_cryptobox_suspension:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
