.class public final Lio/ktor/utils/io/internal/FailedLookAhead;
.super Ljava/lang/Object;
.source "ByteBufferChannelInternals.kt"

# interfaces
.implements Lio/ktor/utils/io/LookAheadSuspendSession;


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/ktor/utils/io/internal/FailedLookAhead;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lio/ktor/utils/io/internal/FailedLookAhead;->cause:Ljava/lang/Throwable;

    throw p1
.end method

.method public consumed(I)Ljava/lang/Void;
    .locals 0

    .line 59
    iget-object p1, p0, Lio/ktor/utils/io/internal/FailedLookAhead;->cause:Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic consumed(I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/FailedLookAhead;->consumed(I)Ljava/lang/Void;

    return-void
.end method

.method public request(II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 60
    iget-object p1, p0, Lio/ktor/utils/io/internal/FailedLookAhead;->cause:Ljava/lang/Throwable;

    throw p1
.end method
