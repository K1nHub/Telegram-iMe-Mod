.class public final Lcom/smedialink/bots/data/database/BotsDatabase$Companion;
.super Ljava/lang/Object;
.source "BotsDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/bots/data/database/BotsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/database/BotsDatabase;
    .locals 4

    const-class v0, Lcom/smedialink/bots/data/database/BotsDatabase;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/smedialink/bots/data/database/BotsDatabase;->access$getINSTANCE$cp()Lcom/smedialink/bots/data/database/BotsDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v2, Lcom/smedialink/bots/data/database/BotsDatabase;->Companion:Lcom/smedialink/bots/data/database/BotsDatabase$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bots.db"

    invoke-static {v2, v0, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 45
    new-instance v2, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;

    invoke-direct {v2, p1}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    .line 55
    sget-object v3, Lcom/smedialink/bots/data/database/Migrations;->INSTANCE:Lcom/smedialink/bots/data/database/Migrations;

    invoke-virtual {v3}, Lcom/smedialink/bots/data/database/Migrations;->getFROM_6_TO_7()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/smedialink/bots/data/database/BotsDatabase;

    .line 43
    invoke-static {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->access$setINSTANCE$cp(Lcom/smedialink/bots/data/database/BotsDatabase;)V

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 59
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smedialink/bots/data/database/BotsDatabase;->access$getINSTANCE$cp()Lcom/smedialink/bots/data/database/BotsDatabase;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
