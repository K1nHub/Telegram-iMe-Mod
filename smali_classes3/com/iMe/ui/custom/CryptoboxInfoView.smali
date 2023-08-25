.class public final Lcom/iMe/ui/custom/CryptoboxInfoView;
.super Landroid/widget/FrameLayout;
.source "CryptoboxInfoView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoboxInfoView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoboxInfoView.kt\ncom/iMe/ui/custom/CryptoboxInfoView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n56#2,6:107\n4#3:113\n5#3,2:116\n2634#4:114\n1#5:115\n*S KotlinDebug\n*F\n+ 1 CryptoboxInfoView.kt\ncom/iMe/ui/custom/CryptoboxInfoView\n*L\n27#1:107,6\n64#1:113\n64#1:116,2\n64#1:114\n64#1:115\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/CryptoboxInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/CryptoboxInfoView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/CryptoboxInfoView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/CryptoboxInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupTexts()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    .line 88
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 89
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_title:I

    .line 88
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 92
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_amount:I

    .line 91
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 95
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_creation_fee:I

    .line 94
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 98
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_total_users_fee:I

    .line 97
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 101
    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_total_fee:I

    .line 100
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->setupColors()V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/custom/CryptoboxInfoView;->setupTexts()V

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 21
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setInfoButtonClickAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "binding.imageInfo"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/custom/CryptoboxInfoView$setInfoButtonClickAction$1;

    invoke-direct {v4, p1}, Lcom/iMe/ui/custom/CryptoboxInfoView$setInfoButtonClickAction$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final setupColors()V
    .locals 10

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    .line 56
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$4$lambda$2"

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    const/4 v1, 0x4

    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 63
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 61
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v8, "setupColors$lambda$4$lambda$3"

    .line 65
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 68
    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    new-array v3, v1, [Landroid/widget/TextView;

    .line 69
    iget-object v8, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "textTotalTokensTitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v3, v4

    iget-object v8, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "textCreationFeeTitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v3, v5

    .line 70
    iget-object v8, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "textTotalUsersFeeTitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v3, v6

    iget-object v8, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "textTotalFeeTitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v3, v7

    .line 67
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 73
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    new-array v1, v1, [Landroid/widget/TextView;

    .line 74
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v8, "textTotalTokensValue"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textCreationFeeValue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v5

    .line 75
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textTotalUsersFeeValue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v6

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textTotalFeeValue"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v1, v7

    .line 72
    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    return-void
.end method

.method public final setupViewData(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/CryptoboxInfoView;->binding:Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;

    .line 41
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalTokensValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;->getTotalAmountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textCreationFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;->getCreationFeeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalUsersFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;->getTotalUsersFeeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->textTotalFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;->getTotalFeeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxInfoBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
