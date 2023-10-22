.class final Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogAllPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;

    invoke-direct {v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;->INSTANCE:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;->invoke(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
