.class final Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogTranslationController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/controller/DialogTranslationController;->setSettings(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $translationSettings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

.field final synthetic this$0:Lorg/fork/controller/DialogTranslationController;


# direct methods
.method constructor <init>(Lorg/fork/controller/DialogTranslationController;Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->this$0:Lorg/fork/controller/DialogTranslationController;

    iput-object p2, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->$translationSettings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 46
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->this$0:Lorg/fork/controller/DialogTranslationController;

    invoke-static {v0}, Lorg/fork/controller/DialogTranslationController;->access$getDao(Lorg/fork/controller/DialogTranslationController;)Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->$translationSettings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    iget-object v2, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->this$0:Lorg/fork/controller/DialogTranslationController;

    invoke-static {v2}, Lorg/fork/controller/DialogTranslationController;->access$getUserConfig(Lorg/fork/controller/DialogTranslationController;)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v1, v2, v3}, Lcom/smedialink/storage/data/mapper/dialogs/DialogSettingsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;J)Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    .line 47
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->this$0:Lorg/fork/controller/DialogTranslationController;

    invoke-virtual {v0}, Lorg/fork/controller/DialogTranslationController;->getTranslationSettings()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->$translationSettings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;->$translationSettings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
