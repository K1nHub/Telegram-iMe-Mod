.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletSendBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

.field public final choiceAddressButtons:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

.field public final inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputComment:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final linearCryptoSettings:Landroid/widget/LinearLayout;

.field public final linearSelectNetwork:Landroid/widget/LinearLayout;

.field public final networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textHeader:Landroid/widget/TextView;

.field public final textNetwork:Landroid/widget/TextView;

.field public final textTokenBalance:Landroid/widget/TextView;

.field public final textTokenBalanceInDollars:Landroid/widget/TextView;

.field public final viewFee:Lcom/iMe/ui/custom/FeeView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/ChooseRecipientOptionsView;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/FeeView;)V
    .locals 2

    move-object v0, p0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    move-object v1, p3

    .line 90
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->choiceAddressButtons:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    move-object v1, p4

    .line 91
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    move-object v1, p5

    .line 92
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputComment:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->linearCryptoSettings:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->linearSelectNetwork:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 99
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textHeader:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textNetwork:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalance:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalanceInDollars:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 104
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 134
    sget v1, Lorg/telegram/messenger/R$id;->button_send:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v5, :cond_0

    .line 140
    sget v1, Lorg/telegram/messenger/R$id;->choice_address_buttons:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    if-eqz v6, :cond_0

    .line 146
    sget v1, Lorg/telegram/messenger/R$id;->image_header:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v7, :cond_0

    .line 152
    sget v1, Lorg/telegram/messenger/R$id;->image_network:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    .line 158
    sget v1, Lorg/telegram/messenger/R$id;->input_amount:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v9, :cond_0

    .line 164
    sget v1, Lorg/telegram/messenger/R$id;->input_comment:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v10, :cond_0

    .line 170
    sget v1, Lorg/telegram/messenger/R$id;->input_recipient:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v11, :cond_0

    .line 176
    sget v1, Lorg/telegram/messenger/R$id;->input_token:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v12, :cond_0

    .line 182
    sget v1, Lorg/telegram/messenger/R$id;->linear_crypto_settings:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 188
    sget v1, Lorg/telegram/messenger/R$id;->linear_select_network:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 194
    sget v1, Lorg/telegram/messenger/R$id;->network_type_view:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v15, :cond_0

    .line 200
    sget v1, Lorg/telegram/messenger/R$id;->text_header:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 206
    sget v1, Lorg/telegram/messenger/R$id;->text_network:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 212
    sget v1, Lorg/telegram/messenger/R$id;->text_token_balance:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 218
    sget v1, Lorg/telegram/messenger/R$id;->text_token_balance_in_dollars:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 224
    sget v1, Lorg/telegram/messenger/R$id;->view_fee:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/iMe/ui/custom/FeeView;

    if-eqz v20, :cond_0

    .line 230
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v20}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lcom/iMe/ui/custom/ChooseRecipientOptionsView;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/FeeView;)V

    return-object v1

    .line 235
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;
    .locals 2

    .line 121
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_send:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
