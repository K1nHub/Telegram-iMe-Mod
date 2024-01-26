.class public final Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "CryptoBoxesRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxesRecycleAdapter.kt\ncom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,48:1\n10#2,2:49\n*S KotlinDebug\n*F\n+ 1 CryptoBoxesRecycleAdapter.kt\ncom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter\n*L\n45#1:49,2\n*E\n"
.end annotation


# instance fields
.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;Lcom/iMe/ui/adapter/provider/SortingListHeaderProvider;Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V
    .locals 4

    const-string v0, "animatedHeaderProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortingListHeaderProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxesChatProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 29
    sget v2, Lorg/telegram/messenger/R$id;->button_action:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$id;->image_order:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 30
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 31
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 32
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 33
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 34
    invoke-static {p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 35
    invoke-static {p5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    return-object v0
.end method

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

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 40
    instance-of p2, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->ANIMATED_HEADER:I

    goto :goto_0

    .line 41
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/cryptobox/SortingListHeaderItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_LIST_HEADER:I

    goto :goto_0

    .line 42
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOXES_CHAT:I

    goto :goto_0

    .line 43
    :cond_2
    instance-of p2, p1, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    if-eqz p2, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOX:I

    goto :goto_0

    .line 44
    :cond_3
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 45
    :cond_4
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOX:I

    :goto_0
    return p1
.end method
