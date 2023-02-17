.class Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
.super Ljava/lang/Object;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLitePersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Query"
.end annotation


# instance fields
.field private cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final sql:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$zCdO1TzVknSwFZdJ2NEZX2-ghfk([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->lambda$binding$0([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 433
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->sql:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$binding$0([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    .line 461
    invoke-static {p4, p0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->access$100(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 462
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method

.method private startQuery()Landroid/database/Cursor;
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 546
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->sql:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method varargs binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    .locals 1

    .line 459
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method first(Lcom/google/firebase/firestore/util/Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Landroid/database/Cursor;",
            ">;)I"
        }
    .end annotation

    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->startQuery()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_1
    throw p1
.end method

.method firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->startQuery()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_1
    throw p1
.end method

.method forEach(Lcom/google/firebase/firestore/util/Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Landroid/database/Cursor;",
            ">;)I"
        }
    .end annotation

    .line 475
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->startQuery()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 476
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 478
    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 475
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
.end method

.method isEmpty()Z
    .locals 2

    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->startQuery()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    .line 538
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_0
    throw v1
.end method
