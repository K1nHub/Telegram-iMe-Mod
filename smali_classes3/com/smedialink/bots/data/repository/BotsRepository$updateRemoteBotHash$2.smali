.class final Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BotsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/repository/BotsRepository;->updateRemoteBotHash(Ljava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $botId:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/bots/data/repository/BotsRepository;


# direct methods
.method public static synthetic $r8$lambda$AIfzO9ZsTwRCnqAuIZRfZXohKKE(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->invoke$lambda$0(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->this$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    iput-object p2, p0, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->$botId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$remoteHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {p0}, Lcom/smedialink/bots/data/repository/BotsRepository;->access$getBotsDao$p(Lcom/smedialink/bots/data/repository/BotsRepository;)Lcom/smedialink/bots/data/database/BotsDao;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/smedialink/bots/data/database/BotsDao;->updateBot(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/CompletableSource;
    .locals 3

    const-string v0, "remoteHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->this$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    iget-object v1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->$botId:Ljava/lang/String;

    new-instance v2, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$updateRemoteBotHash$2;->invoke(Ljava/lang/String;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
