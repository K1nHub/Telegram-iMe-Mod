.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/data/repository/BotsRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;->f$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;->f$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    check-cast p1, Lcom/smedialink/bots/data/model/network/Response;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$II8ztlWVZhVNmcTcqXP_JsKX6UI(Lcom/smedialink/bots/data/repository/BotsRepository;Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
