.class final Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatabaseModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseModule.kt\ncom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1\n+ 2 DatabaseModule.kt\ncom/smedialink/storage/data/di/module/DatabaseModuleKt\n*L\n1#1,42:1\n36#2,4:43\n*S KotlinDebug\n*F\n+ 1 DatabaseModule.kt\ncom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1\n*L\n17#1:43,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;->INSTANCE:Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;

    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;->getMigrations()[Landroidx/room/migration/Migration;

    move-result-object p2

    .line 36
    const-class v0, Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;

    const-string v1, "user_main_db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 37
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/room/migration/Migration;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string p2, "databaseBuilder(context,\u2026ration()\n        .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/DatabaseModuleKt$databaseModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/data/locale/db/database/AppMainDatabase;

    move-result-object p1

    return-object p1
.end method
