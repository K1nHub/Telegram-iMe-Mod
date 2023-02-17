.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda4;->f$0:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda4;->f$0:Lio/reactivex/ObservableEmitter;

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-static {v0, p1, p2}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$IOHLLSmRCXmyivepDUQIGdWv3Z8(Lio/reactivex/ObservableEmitter;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
