.class public final synthetic Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->$r8$lambda$BalqrsLW2tTM4ogHYQ70xcHHuFw(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
