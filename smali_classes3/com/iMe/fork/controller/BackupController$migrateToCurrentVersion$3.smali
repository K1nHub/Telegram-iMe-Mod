.class final Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BackupController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/controller/BackupController;->migrateToCurrentVersion(Lcom/iMe/fork/models/backup/Backup;)Lcom/iMe/fork/models/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/fork/models/backup/TopicBackup;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,573:1\n1549#2:574\n1620#2,3:575\n*S KotlinDebug\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3\n*L\n469#1:574\n469#1:575,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;

    invoke-direct {v0}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;-><init>()V

    sput-object v0, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;->INSTANCE:Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/fork/models/backup/TopicBackup;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "topicModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1, v0}, Lcom/iMe/fork/models/backup/TopicBackup;->setPresets(Ljava/util/Set;)V

    .line 468
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/TopicBackup;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/TopicBackup;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/data/repository/topics/Topic;->getPresets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    .line 469
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/TopicBackup;->getDatabaseDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 471
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/TopicBackup;->getDatabaseDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 473
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 466
    check-cast p1, Lcom/iMe/fork/models/backup/TopicBackup;

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;->invoke(Lcom/iMe/fork/models/backup/TopicBackup;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
