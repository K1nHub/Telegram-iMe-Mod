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

.field public final textTotalTokens:Landroid/widget/TextView;

.field public final viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

.field public final viewCryptoboxInfo:Lcom/iMe/ui/custom/CryptoboxInfoView;

.field public final viewFee:Lcom/iMe/ui/custom/FeeView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/CryptoboxInfoView;Lcom/iMe/ui/custom/FeeView;)V
    .locals 2

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputCapacity:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputChat:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputDescription:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->linearChatSettings:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->linearCryptoSettings:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textDescription:Landroid/widget/TextView;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textHeader:Landroid/widget/TextView;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textTokenBalance:Landroid/widget/TextView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->textTotalTokens:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewCryptoboxInfo:Lcom/iMe/ui/custom/CryptoboxInfoView;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 127
    sget v1, Lorg/telegram/messenger/R$id;->image_header:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lorg/telegram/messenger/R$id;->input_amount:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lorg/telegram/messenger/R$id;->input_capacity:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lorg/telegram/messenger/R$id;->input_chat:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lorg/telegram/messenger/R$id;->input_description:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lorg/telegram/messenger/R$id;->input_token:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lorg/telegram/messenger/R$id;->linear_chat_settings:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lorg/telegram/messenger/R$id;->linear_crypto_settings:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lorg/telegram/messenger/R$id;->text_description:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lorg/telegram/messenger/R$id;->text_header:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lorg/telegram/messenger/R$id;->text_token_balance:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lorg/telegram/messenger/R$id;->text_total_tokens:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lorg/telegram/messenger/R$id;->view_action_buttons:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Lorg/telegram/messenger/R$id;->view_cryptobox_info:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/iMe/ui/custom/CryptoboxInfoView;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Lorg/telegram/messenger/R$id;->view_fee:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/iMe/ui/custom/FeeView;

    if-eqz v19, :cond_0

    .line 217
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v19}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/CryptoboxInfoView;Lcom/iMe/ui/custom/FeeView;)V

    return-object v1

    .line 222
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
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

    .line 108
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;
    .locals 2

    .line 114
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_create_cryptobox:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
