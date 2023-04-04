.class final Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BotsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/repository/BotsRepository;->sendBotRating(Ljava/lang/String;JI)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $botId:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/bots/data/repository/BotsRepository;


# direct methods
.method constructor <init>(Lcom/iMe/bots/data/repository/BotsRepository;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;->this$0:Lcom/iMe/bots/data/repository/BotsRepository;

    iput-object p2, p0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;->$botId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;->this$0:Lcom/iMe/bots/data/repository/BotsRepository;

    invoke-static {v0}, Lcom/iMe/bots/data/repository/BotsRepository;->access$getBotsDao$p(Lcom/iMe/bots/data/repository/BotsRepository;)Lcom/iMe/bots/data/database/BotsDao;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotRating$2;->$botId:Ljava/lang/String;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/iMe/bots/data/database/BotsDao;->saveOwnRating(Ljava/lang/String;I)I

    return-void
.end method
