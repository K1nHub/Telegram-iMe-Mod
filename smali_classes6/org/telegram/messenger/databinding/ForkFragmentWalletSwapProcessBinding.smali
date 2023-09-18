.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletSwapProcessBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

.field public final editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

.field public final feeView:Lcom/iMe/ui/custom/FeeView;

.field public final imageInputArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageInputToken:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageOutputArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageOutputToken:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageSwapProtocolLogo:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

.field public final linearContent:Landroid/widget/LinearLayout;

.field public final linearInputToken:Landroid/widget/LinearLayout;

.field public final linearOutputToken:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textBalance:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textInputTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textOutputTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

.field public final viewDividerLeft:Landroid/view/View;

.field public final viewDividerRight:Landroid/view/View;

.field public final viewInputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

.field public final viewOutputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/iMe/ui/custom/FeeView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Landroid/view/View;Landroid/view/View;Lcom/iMe/ui/custom/NetworkTypeView;Lcom/iMe/ui/custom/NetworkTypeView;)V
    .locals 2

    move-object v0, p0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 135
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p4

    .line 138
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    move-object v1, p5

    .line 139
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    move-object v1, p6

    .line 140
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    move-object v1, p7

    .line 141
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageInputArrow:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    .line 142
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageInputToken:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    .line 143
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageOutputArrow:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p10

    .line 144
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageOutputToken:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    .line 145
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapProtocolLogo:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p12

    .line 146
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p13

    .line 147
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearContent:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 148
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearInputToken:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 149
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearOutputToken:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 150
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textBalance:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    .line 151
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p18

    .line 152
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p19

    .line 153
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p20

    .line 154
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p21

    .line 155
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p22

    .line 156
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p23

    .line 157
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p24

    .line 158
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p25

    .line 159
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p26

    .line 160
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    move-object/from16 v1, p27

    .line 161
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewDividerLeft:Landroid/view/View;

    move-object/from16 v1, p28

    .line 162
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewDividerRight:Landroid/view/View;

    move-object/from16 v1, p29

    .line 163
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewInputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    move-object/from16 v1, p30

    .line 164
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewOutputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 34

    move-object/from16 v0, p0

    .line 194
    sget v1, Lorg/telegram/messenger/R$id;->constraint_input:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 200
    sget v1, Lorg/telegram/messenger/R$id;->constraint_output:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 206
    sget v1, Lorg/telegram/messenger/R$id;->edit_input_amount:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v7, :cond_0

    .line 212
    sget v1, Lorg/telegram/messenger/R$id;->edit_output_amount:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v8, :cond_0

    .line 218
    sget v1, Lorg/telegram/messenger/R$id;->fee_view:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iMe/ui/custom/FeeView;

    if-eqz v9, :cond_0

    .line 224
    sget v1, Lorg/telegram/messenger/R$id;->image_input_arrow:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    .line 230
    sget v1, Lorg/telegram/messenger/R$id;->image_input_token:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    .line 236
    sget v1, Lorg/telegram/messenger/R$id;->image_output_arrow:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    .line 242
    sget v1, Lorg/telegram/messenger/R$id;->image_output_token:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    .line 248
    sget v1, Lorg/telegram/messenger/R$id;->image_swap_protocol_logo:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v14, :cond_0

    .line 254
    sget v1, Lorg/telegram/messenger/R$id;->image_swap_tokens_positions:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v15, :cond_0

    .line 260
    sget v1, Lorg/telegram/messenger/R$id;->linear_content:I

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    .line 266
    sget v1, Lorg/telegram/messenger/R$id;->linear_input_token:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    .line 272
    sget v1, Lorg/telegram/messenger/R$id;->linear_output_token:I

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    .line 278
    sget v1, Lorg/telegram/messenger/R$id;->text_balance:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    .line 284
    sget v1, Lorg/telegram/messenger/R$id;->text_input_additional_description:I

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    .line 290
    sget v1, Lorg/telegram/messenger/R$id;->text_input_fiat:I

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v21, :cond_0

    .line 296
    sget v1, Lorg/telegram/messenger/R$id;->text_input_title:I

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v22, :cond_0

    .line 302
    sget v1, Lorg/telegram/messenger/R$id;->text_input_token:I

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v23, :cond_0

    .line 308
    sget v1, Lorg/telegram/messenger/R$id;->text_output_fiat:I

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v24, :cond_0

    .line 314
    sget v1, Lorg/telegram/messenger/R$id;->text_output_rate:I

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v25, :cond_0

    .line 320
    sget v1, Lorg/telegram/messenger/R$id;->text_output_title:I

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v26, :cond_0

    .line 326
    sget v1, Lorg/telegram/messenger/R$id;->text_output_token:I

    .line 327
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v27, :cond_0

    .line 332
    sget v1, Lorg/telegram/messenger/R$id;->text_swap_protocol_description:I

    .line 333
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v28, :cond_0

    .line 338
    sget v1, Lorg/telegram/messenger/R$id;->view_action_buttons:I

    .line 339
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v29, :cond_0

    .line 344
    sget v1, Lorg/telegram/messenger/R$id;->view_divider_left:I

    .line 345
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 350
    sget v1, Lorg/telegram/messenger/R$id;->view_divider_right:I

    .line 351
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 356
    sget v1, Lorg/telegram/messenger/R$id;->view_input_network:I

    .line 357
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v32, :cond_0

    .line 362
    sget v1, Lorg/telegram/messenger/R$id;->view_output_network:I

    .line 363
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v33, :cond_0

    .line 368
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v33}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/iMe/ui/custom/FeeView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Landroid/view/View;Landroid/view/View;Lcom/iMe/ui/custom/NetworkTypeView;Lcom/iMe/ui/custom/NetworkTypeView;)V

    return-object v1

    .line 377
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 2

    .line 181
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_swap_process:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
