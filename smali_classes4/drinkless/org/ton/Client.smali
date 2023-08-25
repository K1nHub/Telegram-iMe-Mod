.class public final Ldrinkless/org/ton/Client;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldrinkless/org/ton/Client$Handler;,
        Ldrinkless/org/ton/Client$ExceptionHandler;,
        Ldrinkless/org/ton/Client$ResultHandler;
    }
.end annotation


# static fields
.field private static final MAX_EVENTS:I = 0x3e8


# instance fields
.field private final currentQueryId:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile defaultExceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

.field private final eventIds:[J

.field private final events:[Ldrinkless/org/ton/TonApi$Object;

.field private final handlers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ldrinkless/org/ton/Client$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isClientDestroyed:Z

.field private final nativeClientId:J

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile stopFlag:Z

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "native-lib"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "updatesHandler",
            "updateExceptionHandler",
            "defaultExceptionHandler"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ldrinkless/org/ton/Client;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 187
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Ldrinkless/org/ton/Client;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 188
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Ldrinkless/org/ton/Client;->writeLock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Ldrinkless/org/ton/Client;->stopFlag:Z

    .line 191
    iput-boolean v0, p0, Ldrinkless/org/ton/Client;->isClientDestroyed:Z

    .line 194
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 195
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Ldrinkless/org/ton/Client;->currentQueryId:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Ldrinkless/org/ton/Client;->defaultExceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    const/16 v1, 0x3e8

    new-array v2, v1, [J

    .line 200
    iput-object v2, p0, Ldrinkless/org/ton/Client;->eventIds:[J

    new-array v1, v1, [Ldrinkless/org/ton/TonApi$Object;

    .line 201
    iput-object v1, p0, Ldrinkless/org/ton/Client;->events:[Ldrinkless/org/ton/TonApi$Object;

    .line 214
    invoke-static {}, Ldrinkless/org/ton/Client;->createNativeClient()J

    move-result-wide v1

    iput-wide v1, p0, Ldrinkless/org/ton/Client;->nativeClientId:J

    const-wide/16 v1, 0x0

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ldrinkless/org/ton/Client$Handler;

    invoke-direct {v2, p1, p2}, Ldrinkless/org/ton/Client$Handler;-><init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iput-object p3, p0, Ldrinkless/org/ton/Client;->defaultExceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    return-void
.end method

.method public static create(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)Ldrinkless/org/ton/Client;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "updatesHandler",
            "updatesExceptionHandler",
            "defaultExceptionHandler"
        }
    .end annotation

    .line 156
    new-instance v0, Ldrinkless/org/ton/Client;

    invoke-direct {v0, p0, p1, p2}, Ldrinkless/org/ton/Client;-><init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    .line 157
    new-instance p0, Ljava/lang/Thread;

    const-string/jumbo p1, "tonlib thread"

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method private static native createNativeClient()J
.end method

.method private static native destroyNativeClient(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeClientId"
        }
    .end annotation
.end method

.method public static execute(Ldrinkless/org/ton/TonApi$Function;)Ldrinkless/org/ton/TonApi$Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    const-string/jumbo v0, "query is null"

    .line 101
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-static {p0}, Ldrinkless/org/ton/Client;->nativeClientExecute(Ldrinkless/org/ton/TonApi$Function;)Ldrinkless/org/ton/TonApi$Object;

    move-result-object p0

    return-object p0
.end method

.method private handleResult(Ldrinkless/org/ton/TonApi$Object;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "resultHandler",
            "exceptionHandler"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Ldrinkless/org/ton/Client$ResultHandler;->onResult(Ldrinkless/org/ton/TonApi$Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez p3, :cond_1

    .line 259
    iget-object p3, p0, Ldrinkless/org/ton/Client;->defaultExceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    :cond_1
    if-eqz p3, :cond_2

    .line 263
    :try_start_1
    invoke-interface {p3, p1}, Ldrinkless/org/ton/Client$ExceptionHandler;->onException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :goto_0
    return-void
.end method

.method private static native nativeClientExecute(Ldrinkless/org/ton/TonApi$Function;)Ldrinkless/org/ton/TonApi$Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation
.end method

.method private static native nativeClientReceive(J[J[Ldrinkless/org/ton/TonApi$Object;D)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeClientId",
            "eventIds",
            "events",
            "timeout"
        }
    .end annotation
.end method

.method private static native nativeClientSend(JJLdrinkless/org/ton/TonApi$Function;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeClientId",
            "eventId",
            "function"
        }
    .end annotation
.end method

.method private processResult(JLdrinkless/org/ton/TonApi$Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "object"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldrinkless/org/ton/Client$Handler;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldrinkless/org/ton/Client$Handler;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 247
    :cond_1
    iget-object p2, p1, Ldrinkless/org/ton/Client$Handler;->resultHandler:Ldrinkless/org/ton/Client$ResultHandler;

    iget-object p1, p1, Ldrinkless/org/ton/Client$Handler;->exceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    invoke-direct {p0, p3, p2, p1}, Ldrinkless/org/ton/Client;->handleResult(Ldrinkless/org/ton/TonApi$Object;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    return-void
.end method

.method private receiveQueries(D)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 271
    iget-wide v0, p0, Ldrinkless/org/ton/Client;->nativeClientId:J

    iget-object v2, p0, Ldrinkless/org/ton/Client;->eventIds:[J

    iget-object v3, p0, Ldrinkless/org/ton/Client;->events:[Ldrinkless/org/ton/TonApi$Object;

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ldrinkless/org/ton/Client;->nativeClientReceive(J[J[Ldrinkless/org/ton/TonApi$Object;D)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 273
    iget-object v0, p0, Ldrinkless/org/ton/Client;->eventIds:[J

    aget-wide v1, v0, p2

    iget-object v0, p0, Ldrinkless/org/ton/Client;->events:[Ldrinkless/org/ton/TonApi$Object;

    aget-object v0, v0, p2

    invoke-direct {p0, v1, v2, v0}, Ldrinkless/org/ton/Client;->processResult(JLdrinkless/org/ton/TonApi$Object;)V

    .line 274
    iget-object v0, p0, Ldrinkless/org/ton/Client;->events:[Ldrinkless/org/ton/TonApi$Object;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 165
    iget-object v0, p0, Ldrinkless/org/ton/Client;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    :try_start_0
    iget-boolean v0, p0, Ldrinkless/org/ton/Client;->isClientDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Ldrinkless/org/ton/Client;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 173
    :try_start_1
    iput-boolean v0, p0, Ldrinkless/org/ton/Client;->isClientDestroyed:Z

    .line 174
    :goto_0
    iget-boolean v1, p0, Ldrinkless/org/ton/Client;->stopFlag:Z

    if-nez v1, :cond_1

    .line 175
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 177
    :cond_1
    :goto_1
    iget-object v1, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_2

    const-wide v1, 0x4072c00000000000L    # 300.0

    .line 178
    invoke-direct {p0, v1, v2}, Ldrinkless/org/ton/Client;->receiveQueries(D)V

    goto :goto_1

    .line 180
    :cond_2
    iget-wide v0, p0, Ldrinkless/org/ton/Client;->nativeClientId:J

    invoke-static {v0, v1}, Ldrinkless/org/ton/Client;->destroyNativeClient(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    iget-object v0, p0, Ldrinkless/org/ton/Client;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldrinkless/org/ton/Client;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 183
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-virtual {p0}, Ldrinkless/org/ton/Client;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    throw v0
.end method

.method public run()V
    .locals 2

    .line 142
    :goto_0
    iget-boolean v0, p0, Ldrinkless/org/ton/Client;->stopFlag:Z

    if-nez v0, :cond_0

    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 143
    invoke-direct {p0, v0, v1}, Ldrinkless/org/ton/Client;->receiveQueries(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public send(Ldrinkless/org/ton/TonApi$Function;Ldrinkless/org/ton/Client$ResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "resultHandler"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Ldrinkless/org/ton/Client;->send(Ldrinkless/org/ton/TonApi$Function;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    return-void
.end method

.method public send(Ldrinkless/org/ton/TonApi$Function;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "query",
            "resultHandler",
            "exceptionHandler"
        }
    .end annotation

    const-string/jumbo v0, "query is null"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Ldrinkless/org/ton/Client;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-boolean v0, p0, Ldrinkless/org/ton/Client;->isClientDestroyed:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 66
    new-instance p1, Ldrinkless/org/ton/TonApi$Error;

    const/16 v0, 0x1f4

    const-string v1, "Client is closed"

    invoke-direct {p1, v0, v1}, Ldrinkless/org/ton/TonApi$Error;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Ldrinkless/org/ton/Client;->handleResult(Ldrinkless/org/ton/TonApi$Object;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    iget-object p1, p0, Ldrinkless/org/ton/Client;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 71
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldrinkless/org/ton/Client;->currentQueryId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 72
    iget-object v2, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ldrinkless/org/ton/Client$Handler;

    invoke-direct {v4, p2, p3}, Ldrinkless/org/ton/Client$Handler;-><init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    invoke-virtual {v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-wide p2, p0, Ldrinkless/org/ton/Client;->nativeClientId:J

    invoke-static {p2, p3, v0, v1, p1}, Ldrinkless/org/ton/Client;->nativeClientSend(JJLdrinkless/org/ton/TonApi$Function;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iget-object p1, p0, Ldrinkless/org/ton/Client;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ldrinkless/org/ton/Client;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    throw p1
.end method

.method public setDefaultExceptionHandler(Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultExceptionHandler"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Ldrinkless/org/ton/Client;->defaultExceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    return-void
.end method

.method public setUpdatesHandler(Ldrinkless/org/ton/Client$ResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updatesHandler"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Ldrinkless/org/ton/Client;->setUpdatesHandler(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    return-void
.end method

.method public setUpdatesHandler(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "updatesHandler",
            "exceptionHandler"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Ldrinkless/org/ton/Client;->handlers:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ldrinkless/org/ton/Client$Handler;

    invoke-direct {v2, p1, p2}, Ldrinkless/org/ton/Client$Handler;-><init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
