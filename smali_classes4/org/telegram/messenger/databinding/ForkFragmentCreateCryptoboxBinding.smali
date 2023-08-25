.class public final Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
.super Ljava/lang/Object;
.source "ForkFragmentCreateCryptoboxBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputCapacity:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputChat:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputDescription:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final linearChatSettings:Landroid/widget/LinearLayout;

.field public final linearCryptoSettings:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textDescription:Landroid/widget/TextView;

.field public final textHeader:Landroid/widget/TextView;

.field public final textTokenBalance:Landroid/widget/TextView;

.field public final viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

.field public final viewCryptoboxInfo:Lcom/iMe/ui/custom/CryptoboxInfoView;

.field public final viewFee:Lcom/iMe/ui/custom/FeeView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/CryptoboxInfoView;Lcom/iMe/ui/custom/FeeView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 79
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 80
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 81
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputCapacity:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 82
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputChat:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 83
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputDescription:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 84
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 85
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->linearChatSettings:Landroid/widget/LinearLayout;

    .line 86
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->linearCryptoSettings:Landroid/widget/LinearLayout;

    .line 87
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textDescription:Landroid/widget/TextView;

    .line 88
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textHeader:Landroid/widget/TextView;

    .line 89
    iput-object p12, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textTokenBalance:Landroid/widget/TextView;

    .line 90
    iput-object p13, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    .line 91
    iput-object p14, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewCryptoboxInfo:Lcom/iMe/ui/custom/CryptoboxInfoView;

    .line 92
    iput-object p15, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 122
    sget v1, Lorg/telegram/messenger/R$id;->image_header:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 128
    sget v1, Lorg/telegram/messenger/R$id;->input_amount:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v6, :cond_0

    .line 134
    sget v1, Lorg/telegram/messenger/R$id;->input_capacity:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v7, :cond_0

    .line 140
    sget v1, Lorg/telegram/messenger/R$id;->input_chat:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v8, :cond_0

    .line 146
    sget v1, Lorg/telegram/messenger/R$id;->input_description:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v9, :cond_0

    .line 152
    sget v1, Lorg/telegram/messenger/R$id;->input_token:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v10, :cond_0

    .line 158
    sget v1, Lorg/telegram/messenger/R$id;->linear_chat_settings:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 164
    sget v1, Lorg/telegram/messenger/R$id;->linear_crypto_settings:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 170
    sget v1, Lorg/telegram/messenger/R$id;->text_description:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 176
    sget v1, Lorg/telegram/messenger/R$id;->text_header:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 182
    sget v1, Lorg/telegram/messenger/R$id;->text_token_balance:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 188
    sget v1, Lorg/telegram/messenger/R$id;->view_action_buttons:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v16, :cond_0

    .line 194
    sget v1, Lorg/telegram/messenger/R$id;->view_cryptobox_info:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/iMe/ui/custom/CryptoboxInfoView;

    if-eqz v17, :cond_0

    .line 200
    sget v1, Lorg/telegram/messenger/R$id;->view_fee:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/iMe/ui/custom/FeeView;

    if-eqz v18, :cond_0

    .line 206
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/CryptoboxInfoView;Lcom/iMe/ui/custom/FeeView;)V

    return-object v1

    .line 211
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
    .locals 2

    .line 109
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_create_cryptobox:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
