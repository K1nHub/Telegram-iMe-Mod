.class public Lio/grpc/StatusException;
.super Ljava/lang/Exception;
.source "StatusException.java"


# instance fields
.field private final fillInStackTrace:Z

.field private final status:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;Z)V

    return-void
.end method

.method constructor <init>(Lio/grpc/Status;Lio/grpc/Metadata;Z)V
    .locals 1

    .line 52
    invoke-static {p1}, Lio/grpc/Status;->formatThrowableMessage(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    iput-object p1, p0, Lio/grpc/StatusException;->status:Lio/grpc/Status;

    .line 55
    iput-boolean p3, p0, Lio/grpc/StatusException;->fillInStackTrace:Z

    .line 56
    invoke-virtual {p0}, Lio/grpc/StatusException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/StatusException;->fillInStackTrace:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStatus()Lio/grpc/Status;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/grpc/StatusException;->status:Lio/grpc/Status;

    return-object v0
.end method
