.class public final synthetic Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/SingleEmitter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;->f$0:Lio/reactivex/SingleEmitter;

    iput-object p2, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;->f$0:Lio/reactivex/SingleEmitter;

    iget-object v1, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/bots/data/repository/BotsRepository;->$r8$lambda$XGgzgwJeWtcRPy44FUI33ANUk58(Lio/reactivex/SingleEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
