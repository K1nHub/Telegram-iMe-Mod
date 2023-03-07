.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/adapter/BinancePayHistoryRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "BinancePayHistoryRecycleAdapter.kt"

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
    value = "SMAP\nBinancePayHistoryRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinancePayHistoryRecycleAdapter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/adapter/BinancePayHistoryRecycleAdapter\n+ 2 AnyExt.kt\ncom/smedialink/utils/extentions/common/AnyExtKt\n*L\n1#1,35:1\n10#2,2:36\n*S KotlinDebug\n*F\n+ 1 BinancePayHistoryRecycleAdapter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/adapter/BinancePayHistoryRecycleAdapter\n*L\n30#1:36,2\n*E\n"
.end annotation


# instance fields
.field private final binanceTransactionProvider:Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;

.field private final headerProvider:Lcom/smedialink/ui/adapter/provider/HeaderProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/adapter/provider/HeaderProvider;Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;)V
    .locals 2

    const-string v0, "headerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceTransactionProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/adapter/BinancePayHistoryRecycleAdapter;->headerProvider:Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    .line 16
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/adapter/BinancePayHistoryRecycleAdapter;->binanceTransactionProvider:Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;

    .line 20
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 21
    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

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

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 28
    instance-of p2, p1, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    goto :goto_0

    .line 29
    :cond_0
    instance-of p1, p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz p1, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_0

    .line 30
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    :goto_0
    return p1
.end method
