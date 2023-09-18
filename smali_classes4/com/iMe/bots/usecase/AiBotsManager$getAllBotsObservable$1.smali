.class final Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable(Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/iMe/bots/data/model/database/BotsDbModel;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/bots/data/model/database/BotsDbModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiBotsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiBotsManager.kt\ncom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n766#2:435\n857#2,2:436\n*S KotlinDebug\n*F\n+ 1 AiBotsManager.kt\ncom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1\n*L\n168#1:435\n168#1:436,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;


# direct methods
.method constructor <init>(Lcom/iMe/bots/domain/model/BotLanguage;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;->$botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$1;->$botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/bots/data/model/database/BotsDbModel;

    .line 168
    invoke-virtual {v3}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getLang()Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v3

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
