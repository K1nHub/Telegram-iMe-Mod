.class public final Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppMainDatabaseMigrations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n1547#2:187\n1618#2,3:188\n*S KotlinDebug\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1\n*L\n96#1:187\n96#1:188,3\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 83
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 14

    const-string v0, "icon"

    const-string v1, ", "

    const-string v2, "database"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CREATE TABLE TopicDb_copy (topicId INTEGER NOT NULL, name TEXT, icon TEXT, `order` INTEGER NOT NULL, presets TEXT NOT NULL DEFAULT \"[]\", dialogs TEXT NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(userId, topicId))"

    .line 86
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "SELECT * FROM TopicDb"

    .line 87
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    const-string v3, "name"

    .line 89
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dialogs"

    .line 91
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v3, :cond_5

    .line 94
    sget-object v8, Lcom/smedialink/storage/data/repository/topics/Topic;->Companion:Lcom/smedialink/storage/data/repository/topics/Topic$Companion;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/smedialink/storage/data/repository/topics/Topic$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Lcom/smedialink/storage/data/repository/topics/Topic;->getPresets()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 95
    :cond_2
    sget-object v9, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    const-string v10, "dialogsString"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1547
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1619
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    neg-long v11, v11

    .line 96
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v9, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 97
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    .line 100
    :cond_4
    sget-object v6, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v6, v9}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertLongListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    :goto_2
    if-nez v7, :cond_0

    const-string v7, "topicId"

    .line 105
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "order"

    .line 106
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "userId"

    .line 107
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 108
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INSERT INTO TopicDb_copy (topicId, name, icon, `order`, dialogs, userId) VALUES("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_7

    move-object v3, v4

    goto :goto_4

    :cond_7
    invoke-static {v5}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_6
    const-string v0, "DROP TABLE TopicDb"

    .line 112
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE TopicDb_copy RENAME TO TopicDb"

    .line 113
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
