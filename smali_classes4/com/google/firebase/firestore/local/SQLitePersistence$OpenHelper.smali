.class Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLitePersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# instance fields
.field private configured:Z

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 297
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 298
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    return-void
.end method

.method private ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    .line 306
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 323
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runMigrations(I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 329
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    new-instance p3, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {p3, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    invoke-virtual {p3, p2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runMigrations(I)V

    return-void
.end method
