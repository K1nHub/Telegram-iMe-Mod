.class final Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogAllPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;->invoke(Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->access$loadMoreChannels(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;JLjava/lang/String;)V

    return-void
.end method
