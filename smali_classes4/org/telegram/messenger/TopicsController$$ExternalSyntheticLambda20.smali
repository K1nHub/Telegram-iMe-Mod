.class public final synthetic Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TopicsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TopicsController;JILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/messenger/TopicsController;

    iput-wide p2, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$2:I

    iput-object p5, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$2:I

    iget-object v4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Runnable;

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->$r8$lambda$wda3YuRcSaOjGECScQu8day9EH8(Lorg/telegram/messenger/TopicsController;JILjava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
