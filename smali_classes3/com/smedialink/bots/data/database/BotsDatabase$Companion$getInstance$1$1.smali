.class public final Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;
.super Landroidx/room/RoomDatabase$Callback;
.source "BotsDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/BotsDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/database/BotsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$k4b02gnzC8XtRyQd_LK2RzKzLyE(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;->onOpen$lambda$0(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;->$context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method

.method private static final onOpen$lambda$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BotsDatabase"

    const-string v1, "onopen"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/smedialink/bots/data/database/BotsDatabase;->Companion:Lcom/smedialink/bots/data/database/BotsDatabase$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/database/BotsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/bots/data/database/BotsDatabase;->botsDao()Lcom/smedialink/bots/data/database/BotsDao;

    move-result-object p0

    sget-object v0, Lcom/smedialink/bots/data/repository/BotsRepository;->Companion:Lcom/smedialink/bots/data/repository/BotsRepository$Companion;

    invoke-virtual {v0}, Lcom/smedialink/bots/data/repository/BotsRepository$Companion;->initialBotsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/bots/data/database/BotsDao;->insertButIgnore(Ljava/util/List;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion$getInstance$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
