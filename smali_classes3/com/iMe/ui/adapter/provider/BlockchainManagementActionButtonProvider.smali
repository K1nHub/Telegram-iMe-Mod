.class public final Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BlockchainManagementActionButtonProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemElevation$delegate:Lkotlin/Lazy;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 22
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BLOCKCHAIN_ACTION_BUTTON:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->itemViewType:I

    .line 23
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_blockchain_management_action_button:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->layoutId:I

    .line 25
    new-instance p1, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$itemElevation$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$itemElevation$2;-><init>(Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->itemElevation$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getItemElevation(Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;)F
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->getItemElevation()F

    move-result p0

    return p0
.end method

.method private final getItemElevation()F
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->itemElevation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Lorg/telegram/messenger/R$id;->view_text_cell:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-static {v1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;-><init>(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-static {v1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->layoutId:I

    return v0
.end method

.method public final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method
