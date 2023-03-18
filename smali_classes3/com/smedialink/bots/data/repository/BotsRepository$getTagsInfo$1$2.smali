.class final Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BotsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/repository/BotsRepository;->getTagsInfo()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;->$emitter:Lio/reactivex/SingleEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 323
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;->invoke(Lcom/google/firebase/firestore/QuerySnapshot;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;->$emitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$getTagsInfo$1$2;->$emitter:Lio/reactivex/SingleEmitter;

    new-instance v0, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;

    const-string v1, "Collection tags is empty"

    invoke-direct {v0, v1}, Lcom/smedialink/bots/domain/exception/EmptySnapshotException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
