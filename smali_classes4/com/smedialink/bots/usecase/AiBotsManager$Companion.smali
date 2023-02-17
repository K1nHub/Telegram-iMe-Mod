.class public final Lcom/smedialink/bots/usecase/AiBotsManager$Companion;
.super Ljava/lang/Object;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/bots/usecase/AiBotsManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/smedialink/bots/usecase/AiBotsManager;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$getINSTANCE$cp()Lcom/smedialink/bots/usecase/AiBotsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/smedialink/bots/usecase/AiBotsManager;->Companion:Lcom/smedialink/bots/usecase/AiBotsManager$Companion;

    new-instance v1, Lcom/smedialink/bots/usecase/AiBotsManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/smedialink/bots/usecase/AiBotsManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$setINSTANCE$cp(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 43
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$getINSTANCE$cp()Lcom/smedialink/bots/usecase/AiBotsManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
