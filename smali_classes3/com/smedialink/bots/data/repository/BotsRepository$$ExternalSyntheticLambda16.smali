.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/data/repository/BotsRepository;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;->f$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    iput-object p2, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;->f$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    iget-object v1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$y1l8cVPuTldLyDdGt7W9KkrMNOg(Lcom/smedialink/bots/data/repository/BotsRepository;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
