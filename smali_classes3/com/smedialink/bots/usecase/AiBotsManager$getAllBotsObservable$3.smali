.class final Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;-><init>()V

    sput-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;

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

    .line 170
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 170
    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$1;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$2;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$3$2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
