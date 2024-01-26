.class public final Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppMainDatabaseMigrations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n41#2,6:233\n47#2:240\n133#3:239\n107#4:241\n1855#5,2:242\n*S KotlinDebug\n*F\n+ 1 AppMainDatabaseMigrations.kt\ncom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1\n*L\n203#1:233,6\n203#1:240\n203#1:239\n203#1:241\n205#1:242,2\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x12

    const/16 v1, 0x13

    .line 201
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5

    const-class v0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;

    const-string v1, "database"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;

    .line 45
    instance-of v2, v1, Lorg/koin/core/component/KoinScopeComponent;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v1}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v1}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 133
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;

    .line 203
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;->cloudAlbumDao()Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao;->getAllData()Ljava/util/List;

    move-result-object v0

    const-string v1, "CREATE TABLE AlbumsDb (userId INTEGER NOT NULL, dialogId INTEGER NOT NULL, PRIMARY KEY(userId, dialogId))"

    .line 204
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO AlbumsDb (userId, dialogId) VALUES("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->getUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
