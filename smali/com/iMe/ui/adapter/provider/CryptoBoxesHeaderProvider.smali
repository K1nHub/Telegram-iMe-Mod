.class public final Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CryptoBoxesHeaderProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final buttonCornerRadius$delegate:Lkotlin/Lazy;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 24
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOXES_HEADER:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->itemViewType:I

    .line 25
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_cryptoboxes_header:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->layoutId:I

    .line 27
    sget-object p1, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$buttonCornerRadius$2;->INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$buttonCornerRadius$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->buttonCornerRadius$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getButtonCornerRadius(Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->getButtonCornerRadius()I

    move-result p0

    return p0
.end method

.method private final getButtonCornerRadius()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->buttonCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget p2, Lorg/telegram/messenger/R$id;->linear_root:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    sget p2, Lorg/telegram/messenger/R$id;->text_description:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    sget v0, Lorg/telegram/messenger/R$id;->text_new_cryptobox:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 34
    invoke-static {p1, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptoboxes_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->cryptoboxes_create_new:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 43
    sget p2, Lorg/telegram/messenger/R$id;->image_header:I

    sget-object v1, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;

    invoke-static {p1, p2, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    sget p2, Lorg/telegram/messenger/R$id;->button_new_cryptobox:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$2;-><init>(Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;)V

    invoke-static {p1, p2, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 55
    sget-object p2, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$3;->INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$3;

    invoke-static {p1, v0, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->layoutId:I

    return v0
.end method
