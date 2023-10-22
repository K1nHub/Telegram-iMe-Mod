.class public Lorg/telegram/SQLite/SQLitePreparedStatement;
.super Ljava/lang/Object;
.source "SQLitePreparedStatement.java"


# instance fields
.field private isFinalized:Z

.field private query:Ljava/lang/String;

.field private sqliteStatementHandle:J

.field private startTime:J


# direct methods
.method public constructor <init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    .line 33
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->getSQLiteHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->prepare(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    .line 34
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 35
    iput-object p2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->query:Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->startTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public bindByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 134
    iget-wide v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(JILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 138
    iget-wide v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    iget-object v4, p2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v5

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(JILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method native bindByteBuffer(JILjava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindDouble(ID)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 130
    iget-wide v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(JID)V

    return-void
.end method

.method native bindDouble(JID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method native bindInt(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindInteger(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 126
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(JII)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 146
    iget-wide v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(JIJ)V

    return-void
.end method

.method native bindLong(JIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindNull(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 150
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(JI)V

    return-void
.end method

.method native bindNull(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(JILjava/lang/String;)V

    return-void
.end method

.method native bindString(JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method checkFinalized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string v1, "Prepared query finalized"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeQuery()V

    return-void
.end method

.method native finalize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public finalizeQuery()V
    .locals 4

    .line 103
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sqlite query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 116
    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    .line 117
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalize(J)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getStatementHandle()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    return-wide v0
.end method

.method native prepare(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 52
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    .line 54
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(J)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v7, v1

    .line 57
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 58
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 60
    iget-wide v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v1, v2, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(JI)V

    goto :goto_1

    .line 61
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 62
    iget-wide v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v3, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(JII)V

    goto :goto_1

    .line 63
    :cond_1
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_2

    .line 64
    iget-wide v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object v1, p0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(JID)V

    goto :goto_1

    .line 65
    :cond_2
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 66
    iget-wide v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(JILjava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_3
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 68
    iget-wide v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(JIJ)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 75
    :cond_5
    new-instance p1, Lorg/telegram/SQLite/SQLiteCursor;

    invoke-direct {p1, p0}, Lorg/telegram/SQLite/SQLiteCursor;-><init>(Lorg/telegram/SQLite/SQLitePreparedStatement;)V

    return-object p1

    .line 49
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public requery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    .line 89
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(J)V

    return-void
.end method

.method native reset(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public step()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 79
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(J)I

    move-result v0

    return v0
.end method

.method native step(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .line 83
    iget-wide v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(J)I

    return-object p0
.end method
