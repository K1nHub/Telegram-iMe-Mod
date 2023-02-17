.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda17;->f$0:I

    check-cast p1, Lcom/smedialink/bots/data/model/network/Response;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$MEKvwQ4Aij_BKOzRzaOlECnrDgk(ILcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
