.class public final Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/notifications/PushNotificationsManager;->sendPushToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 PushNotificationsManager.kt\ncom/smedialink/manager/notifications/PushNotificationsManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 SharedPrefferencesExt.kt\ncom/smedialink/storage/data/utils/extentions/SharedPrefferencesExtKt\n*L\n1#1,111:1\n77#2,3:112\n80#2:116\n81#2:121\n84#2:123\n1849#3:115\n1850#3:122\n14#4,4:117\n*S KotlinDebug\n*F\n+ 1 PushNotificationsManager.kt\ncom/smedialink/manager/notifications/PushNotificationsManager\n*L\n79#1:115\n79#1:122\n80#1:117,4\n*E\n"
.end annotation


# instance fields
.field final synthetic $notificationInformation$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/smedialink/manager/notifications/PushNotificationsManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/smedialink/manager/notifications/PushNotificationsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;->$notificationInformation$inlined:Ljava/util/List;

    iput-object p2, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/notifications/PushNotificationsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;->$notificationInformation$inlined:Ljava/util/List;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    .line 116
    iget-object v1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/notifications/PushNotificationsManager;

    invoke-static {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->access$getPreferenceHelper$p(Lcom/smedialink/manager/notifications/PushNotificationsManager;)Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/notification/NotificationInformation;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {v1, v0}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 116
    invoke-interface {v1, v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->setPushTokenRegistered(Z)V

    const-string v0, ""

    .line 16
    invoke-interface {v1, v0}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
