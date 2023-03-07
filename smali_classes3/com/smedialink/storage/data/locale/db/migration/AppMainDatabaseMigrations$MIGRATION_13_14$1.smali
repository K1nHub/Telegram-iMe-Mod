.class public final Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1;
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
    value = "SMAP\nAppMainDatabaseMigrations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n1547#2:187\n1618#2,3:188\n*S KotlinDebug\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1\n*L\n154#1:187\n154#1:188,3\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0xd

    const/16 v1, 0xe

    .line 143
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 10

    const-string v0, ", "

    const-string v1, "database"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CREATE TABLE FilterSettingsDb_copy (filterId INTEGER NOT NULL, fabs TEXT NOT NULL, icon TEXT, userId INTEGER NOT NULL, PRIMARY KEY(filterId, userId))"

    .line 146
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "SELECT * FROM FilterSettingsDb"

    .line 147
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "filterId"

    .line 149
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v4, "fabs"

    .line 150
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    .line 151
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "userId"

    .line 152
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 153
    sget-object v8, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v8, v4}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO FilterSettingsDb_copy (filterId, fabs, icon, userId) VALUES("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1619
    check-cast v9, Ljava/lang/String;

    .line 154
    invoke-static {v9}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->wrapWithQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_3
    const-string v0, "DROP TABLE FilterSettingsDb"

    .line 157
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FilterSettingsDb_copy RENAME TO FilterSettingsDb"

    .line 158
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
