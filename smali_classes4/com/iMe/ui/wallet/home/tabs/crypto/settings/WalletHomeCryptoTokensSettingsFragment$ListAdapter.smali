.class final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "WalletHomeCryptoTokensSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoTokensSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoTokensSettingsFragment.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,509:1\n315#2:510\n329#2,4:511\n316#2:515\n4#3:516\n5#3,2:519\n4#3:521\n5#3,2:524\n2634#4:517\n2634#4:522\n1#5:518\n1#5:523\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoTokensSettingsFragment.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter\n*L\n367#1:510\n367#1:511,4\n367#1:515\n383#1:516\n383#1:519,2\n386#1:521\n386#1:524,2\n383#1:517\n386#1:522\n383#1:518\n386#1:523\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

.field private final tokenLogoSize$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 316
    sget-object p1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$tokenLogoSize$2;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$tokenLogoSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->tokenLogoSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getTokenLogoSize()I
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->tokenLogoSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getRowCount$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getHeaderRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getGlobalStateRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 339
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    if-ne v0, v1, :cond_1

    .line 331
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getTokensStartRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$isPinAvailable$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 381
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 382
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/appcompat/widget/AppCompatImageView;

    .line 383
    iget-object v4, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->imageAddToken:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v4, v1, v2

    iget-object v4, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v4, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v5, "onBindViewHolder$lambda$8$lambda$5"

    .line 384
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_0
    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 386
    iget-object v4, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearAddToken:Landroid/widget/LinearLayout;

    aput-object v4, v1, v2

    iget-object v4, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearNetwork:Landroid/widget/LinearLayout;

    aput-object v4, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "onBindViewHolder$lambda$8$lambda$6"

    .line 387
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground(Landroid/view/View;Z)V

    goto :goto_1

    .line 389
    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v4, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textAddToken:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textAddToken"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v2

    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "textNetwork"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 390
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textTitleDisplayedTokens:Landroid/widget/TextView;

    .line 391
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "onBindViewHolder$lambda$8$lambda$7"

    .line 392
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 394
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-static {p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    goto/16 :goto_4

    .line 398
    :cond_2
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    if-ne v0, v1, :cond_4

    .line 399
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    .line 400
    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object p1

    invoke-static {p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->getSettingsGlobalState()Lcom/iMe/model/state/GlobalState;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    goto/16 :goto_4

    .line 404
    :cond_4
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    if-ne v0, v1, :cond_9

    .line 405
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingCheckCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lcom/iMe/fork/ui/view/MovingCheckCell;

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    .line 406
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 408
    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object v0

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getTokensStartRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->getTokenSetting(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;

    .line 411
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_5

    .line 412
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;->isVisible()Z

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    .line 413
    :goto_2
    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getTokensEndRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v6

    sub-int/2addr v6, v3

    if-eq p2, v6, :cond_6

    move v2, v3

    .line 410
    :cond_6
    invoke-virtual {v4, v5, v0, v2}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 415
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setSecondText(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setPinned(Z)V

    .line 417
    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getScreenType()Lcom/iMe/model/wallet/crypto/TokensScreenType;

    move-result-object v0

    .line 418
    instance-of v2, v0, Lcom/iMe/model/wallet/crypto/TokensScreenType$Binance;

    const-string v5, "parentActivity"

    if-eqz v2, :cond_7

    .line 419
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    .line 421
    new-instance v3, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/MovingCheckCell;)V

    .line 418
    invoke-static {v0, v2, v3}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_3

    .line 424
    :cond_7
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/TokensScreenType$Crypto;

    if-eqz v0, :cond_8

    .line 426
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 427
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 428
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$color;->placeholder_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x28

    .line 430
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 431
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 429
    invoke-static/range {v6 .. v11}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    invoke-virtual {v4, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setImage(Landroid/graphics/Bitmap;)V

    .line 435
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/MovingCheckCell;)V

    .line 434
    invoke-static {v0, v2, v5, v3}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    .line 442
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v5, 0x0

    .line 443
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onBindViewHolder$3$4;

    invoke-direct {v7, v4, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onBindViewHolder$3$4;-><init>(Lcom/iMe/fork/ui/view/MovingCheckCell;Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "parent"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v1, v2, :cond_0

    .line 345
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;

    move-result-object v1

    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    .line 346
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textAddToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_settings_add_custom_tokens:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textTitleDisplayedTokens:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_settings_displayed_tokens:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v5, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearAddToken:Landroid/widget/LinearLayout;

    const-string v3, "linearAddToken"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$1;

    invoke-direct {v8, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 352
    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearNetwork:Landroid/widget/LinearLayout;

    const-string v3, "linearNetwork"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    new-instance v14, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$2;

    invoke-direct {v14, v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 355
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string v4, "networkTypeView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$3;

    invoke-direct {v6, v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 358
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "inflate(layoutInflater).\u2026                   }.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_0
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    if-ne v1, v2, :cond_2

    .line 361
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemGlobalStateBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    .line 362
    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->getSettingsGlobalState()Lcom/iMe/model/state/GlobalState;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    .line 363
    new-instance v3, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$2$1;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$2$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-virtual {v1, v3}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    const-string v2, "inflate(layoutInflater).\u2026                        }"

    .line 361
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_2
    new-instance v1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/view/MovingCheckCell;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/MovingCheckCell;->getIconView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->getTokenLogoSize()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->getTokenLogoSize()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :goto_1
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public final swapElements(II)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getTokensStartRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->access$getTokensStartRow$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->swapTokensPositions(II)V

    .line 322
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method