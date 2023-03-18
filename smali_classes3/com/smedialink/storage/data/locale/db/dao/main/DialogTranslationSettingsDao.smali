.class public abstract Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
.super Ljava/lang/Object;
.source "DialogTranslationSettingsDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogTranslationSettingsDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogTranslationSettingsDao.kt\ncom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1549#2:26\n1620#2,3:27\n*S KotlinDebug\n*F\n+ 1 DialogTranslationSettingsDao.kt\ncom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao\n*L\n23#1:26\n23#1:27,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAllTranslationSettingsByUserId(J)V
.end method

.method public abstract getAllTranslationSettingsForUser(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
            ">;"
        }
    .end annotation
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;)V"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;->deleteAllTranslationSettingsByUserId(J)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    .line 23
    invoke-static {v1, p1, p2}, Lcom/smedialink/storage/data/mapper/dialogs/DialogSettingsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;J)Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p0, v0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method
