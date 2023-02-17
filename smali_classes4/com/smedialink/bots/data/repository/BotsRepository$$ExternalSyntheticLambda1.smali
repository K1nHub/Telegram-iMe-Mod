.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/SingleEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/SingleEmitter;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$ygRz6gmI_pYSA6Waj23LGTN_AAI(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method
