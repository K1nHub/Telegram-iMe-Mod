.class public final Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
.super Ljava/lang/Object;
.source "ForkAirdropContentAlertBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Components/RLottieImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
    .locals 14

    .line 102
    sget v0, Lorg/telegram/messenger/R$id;->button_action:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/ActionButton;

    if-eqz v4, :cond_0

    .line 108
    sget v0, Lorg/telegram/messenger/R$id;->checkbox_auth:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v5, :cond_0

    .line 114
    sget v0, Lorg/telegram/messenger/R$id;->checkbox_create_wallet:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v6, :cond_0

    .line 120
    sget v0, Lorg/telegram/messenger/R$id;->checkbox_take_bonus:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v7, :cond_0

    .line 126
    sget v0, Lorg/telegram/messenger/R$id;->image_alert_picture:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v8, :cond_0

    .line 132
    sget v0, Lorg/telegram/messenger/R$id;->item_menu:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v9, :cond_0

    .line 138
    move-object v10, p0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 140
    sget v0, Lorg/telegram/messenger/R$id;->text_additional_action:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Lorg/telegram/messenger/R$id;->text_alert_description:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 152
    sget v0, Lorg/telegram/messenger/R$id;->text_alert_title:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 158
    new-instance p0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;-><init>(Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/ActionButton;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Components/RLottieImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
    .locals 2

    .line 89
    sget v0, Lorg/telegram/messenger/R$layout;->fork_airdrop_content_alert:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
