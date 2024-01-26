.class final Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DatabaseModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseModule.kt\ncom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2\n+ 2 DatabaseModule.kt\ncom/iMe/storage/data/di/module/DatabaseModuleKt\n*L\n1#1,58:1\n55#2,4:59\n*S KotlinDebug\n*F\n+ 1 DatabaseModule.kt\ncom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2\n*L\n25#1:59,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;->INSTANCE:Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->getMigrations()[Landroidx/room/migration/Migration;

    move-result-object p2

    .line 55
    const-class v0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;

    const-string v1, "minor_db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 56
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/room/migration/Migration;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string p2, "initDb"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;

    move-result-object p1

    return-object p1
.end method
