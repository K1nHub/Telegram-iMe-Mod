.class final Lio/grpc/internal/CallTracer;
.super Ljava/lang/Object;
.source "CallTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CallTracer$Factory;
    }
.end annotation


# instance fields
.field private final callsFailed:Lio/grpc/internal/LongCounter;

.field private final callsStarted:Lio/grpc/internal/LongCounter;

.field private final callsSucceeded:Lio/grpc/internal/LongCounter;

.field private final timeProvider:Lio/grpc/internal/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lio/grpc/internal/CallTracer$1;

    invoke-direct {v0}, Lio/grpc/internal/CallTracer$1;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/TimeProvider;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    .line 30
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    .line 31
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    .line 35
    iput-object p1, p0, Lio/grpc/internal/CallTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-void
.end method


# virtual methods
.method public reportCallEnded(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/LongCounter;->add(J)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/LongCounter;->add(J)V

    :goto_0
    return-void
.end method

.method public reportCallStarted()V
    .locals 3

    .line 39
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/LongCounter;->add(J)V

    .line 40
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v0}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    return-void
.end method