.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/SingleEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/SingleEmitter;

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$aSoOuHWeLMxoHMZq8H36EF6L83w(Lio/reactivex/SingleEmitter;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method
