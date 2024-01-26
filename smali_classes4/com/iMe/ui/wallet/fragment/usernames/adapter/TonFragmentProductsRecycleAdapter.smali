.class public final Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "TonFragmentProductsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentProductsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentProductsRecycleAdapter.kt\ncom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,42:1\n10#2,2:43\n*S KotlinDebug\n*F\n+ 1 TonFragmentProductsRecycleAdapter.kt\ncom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter\n*L\n39#1:43,2\n*E\n"
.end annotation


# instance fields
.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;Lcom/iMe/ui/adapter/provider/SortingListHeaderProvider;Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V
    .locals 3

    const-string v0, "animatedHeaderProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortingListHeaderProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tonFragmentProductProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p4, p0, Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    new-array v0, v1, [I

    .line 26
    sget v1, Lorg/telegram/messenger/R$id;->image_order:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 27
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 28
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 29
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 30
    invoke-static {p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

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

    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 35
    instance-of p2, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->ANIMATED_HEADER:I

    goto :goto_0

    .line 36
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/cryptobox/SortingListHeaderItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_LIST_HEADER:I

    goto :goto_0

    .line 37
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TON_FRAGMENT_PRODUCT:I

    goto :goto_0

    .line 38
    :cond_2
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 39
    :cond_3
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TON_FRAGMENT_PRODUCT:I

    :goto_0
    return p1
.end method
