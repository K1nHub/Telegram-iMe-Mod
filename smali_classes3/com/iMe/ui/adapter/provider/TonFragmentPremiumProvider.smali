.class public final Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TonFragmentPremiumProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;",
        ">;"
    }
.end annotation


# instance fields
.field private final discountCornerRadius$delegate:Lkotlin/Lazy;

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 28
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TON_FRAGMENT_PREMIUM:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->itemViewType:I

    .line 29
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_ton_fragment_product:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->layoutId:I

    .line 31
    sget-object v0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$discountCornerRadius$2;->INSTANCE:Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$discountCornerRadius$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->discountCornerRadius$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDiscountCornerRadius(Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;)F
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->getDiscountCornerRadius()F

    move-result p0

    return p0
.end method

.method private final getDiscountCornerRadius()F
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->discountCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 39
    sget v4, Lorg/telegram/messenger/R$id;->text_title:I

    aput v4, v3, v1

    .line 40
    sget v5, Lorg/telegram/messenger/R$id;->text_price:I

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 37
    invoke-static {p1, v0, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 43
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    new-array v3, v2, [I

    .line 44
    sget v7, Lorg/telegram/messenger/R$id;->text_subtitle:I

    aput v7, v3, v1

    .line 45
    sget v7, Lorg/telegram/messenger/R$id;->text_fiat_price:I

    aput v7, v3, v6

    .line 42
    invoke-static {p1, v0, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    sget v0, Lorg/telegram/messenger/R$id;->text_discount:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v4, v3, v1

    aput v0, v3, v6

    aput v5, v3, v2

    .line 48
    invoke-static {p1, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getFiatPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getDiscount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getDiscount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 54
    sget v1, Lorg/telegram/messenger/R$id;->frame_icon_container:I

    new-instance v2, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;

    invoke-direct {v2, p2}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;-><init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$2;-><init>(Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;)V

    invoke-static {p1, v0, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget p3, Lorg/telegram/messenger/R$id;->text_title:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 92
    sget p3, Lorg/telegram/messenger/R$id;->text_price:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 93
    sget p3, Lorg/telegram/messenger/R$id;->text_fiat_price:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getFiatPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 94
    sget p3, Lorg/telegram/messenger/R$id;->text_discount:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getDiscount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getDiscount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 96
    sget p3, Lorg/telegram/messenger/R$id;->frame_icon_container:I

    new-instance v0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;

    invoke-direct {v0, p2}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;-><init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->layoutId:I

    return v0
.end method
