.class public final Lcom/iMe/fork/controller/BackupController$Companion;
.super Ljava/lang/Object;
.source "BackupController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$E6VQYzo19zRDWEgOZFIstog7xLs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/BackupController;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController$Companion;->getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/BackupController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/controller/BackupController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/BackupController;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/controller/BackupController;

    return-object p0
.end method


# virtual methods
.method public final getInstance(I)Lcom/iMe/fork/controller/BackupController;
    .locals 3

    .line 560
    invoke-static {}, Lcom/iMe/fork/controller/BackupController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/controller/BackupController$Companion$getInstance$1;

    invoke-direct {v2, p1}, Lcom/iMe/fork/controller/BackupController$Companion$getInstance$1;-><init>(I)V

    new-instance p1, Lcom/iMe/fork/controller/BackupController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/iMe/fork/controller/BackupController$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountIndex: Int) = acc\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/controller/BackupController;

    return-object p1
.end method

.method public final isBackupFileName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "iMeBackup_"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 564
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".ime"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
