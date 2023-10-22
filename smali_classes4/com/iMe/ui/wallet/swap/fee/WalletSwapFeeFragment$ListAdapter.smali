.class public final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "WalletSwapFeeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;


# direct methods
.method public static synthetic $r8$lambda$4WY2mDjZv1XKHc_Am-gA2qPaT10(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->setupChooser$lambda$5$lambda$4(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;I)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final setupChooser(Lorg/telegram/ui/Components/RecyclerListView$Holder;)V
    .locals 3

    .line 352
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/SlideChooseView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "holder.itemView"

    .line 354
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    .line 355
    new-instance v2, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    return-void
.end method

.method private static final setupChooser$lambda$5$lambda$4(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;I)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    .line 357
    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectSlip(I)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectDeadline(I)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectFee(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getRowCount$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getFeeInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_8

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p1, v0, :cond_5

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_5
    if-eqz v0, :cond_7

    :goto_6
    move v1, v2

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getFeeChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    goto :goto_8

    .line 348
    :cond_9
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    :goto_8
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    :try_start_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    .line 274
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v2, v3, :cond_2

    instance-of v2, v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_2

    .line 276
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 277
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_slip_description:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    :cond_0
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 281
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_deadline_description:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :cond_1
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 286
    move-object p2, v0

    check-cast p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 287
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 288
    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_format:I

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getDuration()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 291
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFee()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 292
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 290
    invoke-static {v6, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 294
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    .line 296
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFeeInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 297
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 295
    invoke-static {p1, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x4

    .line 299
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    .line 287
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_0
    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 305
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->mContext:Landroid/content/Context;

    .line 306
    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 307
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 304
    invoke-static {p1, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 311
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v2, v3, :cond_5

    instance-of v2, v0, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_5

    .line 313
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipHeaderRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_3

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_slip_header:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 314
    :cond_3
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineHeaderRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_deadline_header:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 315
    :cond_4
    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_fee_header:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 319
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    if-ne p1, v2, :cond_8

    instance-of p1, v0, Lorg/telegram/ui/Components/SlideChooseView;

    if-eqz p1, :cond_8

    .line 321
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getSlipChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_6

    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    .line 322
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedSlip()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 323
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptionsTitles()[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 321
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_6
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getDeadlineChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I

    move-result p1

    if-ne p2, p1, :cond_7

    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    .line 327
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p1

    .line 328
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p2

    .line 327
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 329
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptionsTitles()[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 326
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_7
    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    .line 333
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptions()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object p1

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getSpeedLevel()Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 334
    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptionsTitles()[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 332
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 341
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 259
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 262
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 263
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 256
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    .line 266
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->setupChooser(Lorg/telegram/ui/Components/RecyclerListView$Holder;)V

    return-object p2
.end method
