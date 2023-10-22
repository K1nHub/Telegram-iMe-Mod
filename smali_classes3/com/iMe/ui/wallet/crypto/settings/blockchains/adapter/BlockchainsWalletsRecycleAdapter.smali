.class public final Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "BlockchainsWalletsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockchainsWalletsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainsWalletsRecycleAdapter.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,34:1\n10#2,2:35\n*S KotlinDebug\n*F\n+ 1 BlockchainsWalletsRecycleAdapter.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter\n*L\n32#1:35,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;Lcom/iMe/ui/adapter/provider/SectionProvider;)V
    .locals 3

    const-string v0, "blockchainManagementWalletProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainManagementActionButtonProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sectionProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v0, v1, [I

    .line 21
    sget v1, Lorg/telegram/messenger/R$id;->image_info:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 22
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 23
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 24
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method protected getItemType(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 29
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BLOCKCHAIN_WALLET:I

    goto :goto_0

    .line 30
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Section;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SECTION_SPACE:I

    goto :goto_0

    .line 31
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    if-eqz p1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BLOCKCHAIN_ACTION_BUTTON:I

    goto :goto_0

    .line 32
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BLOCKCHAIN_WALLET:I

    :goto_0
    return p1
.end method
