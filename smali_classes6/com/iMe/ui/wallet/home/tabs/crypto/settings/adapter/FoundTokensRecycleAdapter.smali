.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "FoundTokensRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFoundTokensRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoundTokensRecycleAdapter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,30:1\n10#2,2:31\n*S KotlinDebug\n*F\n+ 1 FoundTokensRecycleAdapter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter\n*L\n28#1:31,2\n*E\n"
.end annotation


# instance fields
.field private final foundTokenProvider:Lcom/iMe/ui/adapter/provider/FoundTokenProvider;

.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/FoundTokenProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V
    .locals 2

    const-string v0, "foundTokenProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;->foundTokenProvider:Lcom/iMe/ui/adapter/provider/FoundTokenProvider;

    .line 16
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 20
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 21
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getFoundTokenProvider()Lcom/iMe/ui/adapter/provider/FoundTokenProvider;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;->foundTokenProvider:Lcom/iMe/ui/adapter/provider/FoundTokenProvider;

    return-object v0
.end method

.method public final getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

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

    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 26
    instance-of p2, p1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN:I

    goto :goto_0

    .line 27
    :cond_0
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 28
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN:I

    :goto_0
    return p1
.end method
