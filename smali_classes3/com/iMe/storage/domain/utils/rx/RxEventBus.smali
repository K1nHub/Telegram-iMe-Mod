.class public final Lcom/iMe/storage/domain/utils/rx/RxEventBus;
.super Ljava/lang/Object;
.source "RxEventBus.kt"


# instance fields
.field private final publisher:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 9
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "create<Any>()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publisher:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final getPublisher()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publisher:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method public final publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publisher:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
