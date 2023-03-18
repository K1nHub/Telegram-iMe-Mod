.class final Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableCategories(Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiBotsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiBotsManager.kt\ncom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n1054#2:435\n*S KotlinDebug\n*F\n+ 1 AiBotsManager.kt\ncom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2\n*L\n200#1:435\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;-><init>()V

    sput-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;

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

    .line 200
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2$invoke$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$getAvailableCategories$2$invoke$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
