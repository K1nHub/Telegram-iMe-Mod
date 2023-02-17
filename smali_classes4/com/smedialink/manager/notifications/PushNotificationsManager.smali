.class public final Lcom/smedialink/manager/notifications/PushNotificationsManager;
.super Ljava/lang/Object;
.source "PushNotificationsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;,
        Lcom/smedialink/manager/notifications/PushNotificationsManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushNotificationsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushNotificationsManager.kt\ncom/smedialink/manager/notifications/PushNotificationsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SharedPrefferencesExt.kt\ncom/smedialink/storage/data/utils/extentions/SharedPrefferencesExtKt\n+ 4 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 5 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,213:1\n1547#2:214\n1618#2,2:215\n1620#2:225\n764#2:226\n855#2,2:227\n1741#2,3:229\n1547#2:232\n1618#2,3:233\n20#3,4:217\n20#3,4:221\n39#4,6:236\n14#5,8:242\n14#5,8:250\n14#5,8:258\n14#5,8:266\n14#5,8:274\n14#5,8:282\n14#5,8:290\n14#5,8:298\n14#5,8:306\n14#5,8:314\n14#5,8:322\n14#5,8:330\n14#5,8:338\n*S KotlinDebug\n*F\n+ 1 PushNotificationsManager.kt\ncom/smedialink/manager/notifications/PushNotificationsManager\n*L\n48#1:214\n48#1:215,2\n48#1:225\n63#1:226\n63#1:227,2\n66#1:229,3\n71#1:232\n71#1:233,3\n52#1:217,4\n53#1:221,4\n76#1:236,6\n129#1:242,8\n130#1:250,8\n131#1:258,8\n132#1:266,8\n133#1:274,8\n134#1:282,8\n135#1:290,8\n136#1:298,8\n137#1:306,8\n138#1:314,8\n139#1:322,8\n140#1:330,8\n141#1:338,8\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;


# instance fields
.field private final notificationInteractor:Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;

.field private final preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$Hv8zincrtm32sGOQ1OIt63UoifA(Lcom/smedialink/manager/notifications/PushNotificationsManager;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->sendPushToken$lambda-6(Lcom/smedialink/manager/notifications/PushNotificationsManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->Companion:Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;Lcom/smedialink/storage/domain/storage/PreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "notificationInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->notificationInteractor:Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 35
    iput-object p2, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    .line 36
    iput-object p3, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 40
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/smedialink/manager/notifications/PushNotificationsManager;)Lcom/smedialink/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method

.method private final convertMapParamsToModel(Ljava/util/Map;)Lcom/smedialink/model/wallet/notification/PushNotificationModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/smedialink/model/wallet/notification/PushNotificationModel;"
        }
    .end annotation

    const-string v0, "type"

    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "userId"

    .line 125
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 127
    invoke-static {v1, v2}, Lorg/fork/utils/UserUtils;->isUserActive(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 14
    :pswitch_0
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$13;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$13;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_1
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$12;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$12;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_2
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$11;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$11;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_3
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$10;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$10;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$9;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$9;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_5
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$8;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$8;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_6
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$7;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$7;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_7
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$6;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$6;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto/16 :goto_0

    .line 14
    :pswitch_8
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$5;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$5;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto :goto_0

    .line 14
    :pswitch_9
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$4;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$4;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto :goto_0

    .line 14
    :pswitch_a
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$3;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$3;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto :goto_0

    .line 14
    :pswitch_b
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$2;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    goto :goto_0

    .line 14
    :pswitch_c
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$1;

    invoke-direct {v1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    :cond_0
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final handlePushIntent(Landroid/content/Intent;Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1

    sget-object v0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->Companion:Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;->handlePushIntent(Landroid/content/Intent;Lorg/telegram/ui/LaunchActivity;)Z

    move-result p0

    return p0
.end method

.method private final isNeedUpdateBinanceScreen(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)Z
    .locals 0

    .line 121
    instance-of p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$BinancePayRequestStatusUpdated;

    return p1
.end method

.method private final isNeedUpdateWallet(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)Z
    .locals 1

    .line 116
    instance-of v0, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Cancel;

    if-nez v0, :cond_1

    .line 117
    instance-of v0, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;

    if-nez v0, :cond_1

    .line 118
    instance-of p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Approve;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final notifyUpdatesIfNeed(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->isNeedUpdateWallet(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->isNeedUpdateBinanceScreen(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;->INSTANCE:Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final sendPushToken$lambda-6(Lcom/smedialink/manager/notifications/PushNotificationsManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private final showPushNotification(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)V
    .locals 7

    .line 151
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(ApplicationLoader.applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x8000

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getUserId()J

    move-result-wide v2

    const-string v4, "userId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 157
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "AppName"

    const-string v4, "iMe Messenger"

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_0

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Landroid/app/NotificationChannel;

    sget v5, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 161
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 164
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    sget v4, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 167
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 170
    sget v2, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 172
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$color;->fork_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v1, "msg"

    .line 173
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v1, "Builder(ApplicationLoade\u2026\n                .build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final handlePushNotification(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    .line 94
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->convertMapParamsToModel(Ljava/util/Map;)Lcom/smedialink/model/wallet/notification/PushNotificationModel;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->showPushNotification(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->notifyUpdatesIfNeed(Lcom/smedialink/model/wallet/notification/PushNotificationModel;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final sendPushToken(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x5

    .line 47
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 1547
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 49
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 52
    iget-object v6, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    iget-wide v8, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-interface {v6, v8}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 52
    invoke-interface {v6}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushAllowanceToken()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-interface {v6, v7}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 53
    iget-object v6, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    iget-wide v9, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-interface {v6, v9}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 53
    invoke-interface {v6}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->isPushTokenRegistered()Z

    move-result v9

    .line 22
    invoke-interface {v6, v7}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 55
    new-instance v6, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    .line 56
    iget-wide v10, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-direct {v6, v5, v8, v9}, Lcom/smedialink/model/wallet/notification/NotificationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    :cond_4
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 764
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    .line 63
    invoke-virtual {v8}, Lcom/smedialink/model/wallet/notification/NotificationInformation;->getPushAllowanceToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1741
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 1742
    :cond_8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    .line 66
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered()Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_9

    const/4 v0, 0x1

    .line 68
    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_e

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    if-nez p1, :cond_c

    move-object p1, v7

    :cond_c
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->setPushToken(Ljava/lang/String;)V

    .line 1547
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    .line 71
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/notification/NotificationInformation;->getPushAllowanceToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->notificationInteractor:Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 74
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->savePushToken(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/smedialink/manager/notifications/PushNotificationsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/manager/notifications/PushNotificationsManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "notificationInteractor\n \u2026{ subscriptions.clear() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, v3, p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1;-><init>(Ljava/util/List;Lcom/smedialink/manager/notifications/PushNotificationsManager;)V

    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v6}, Lcom/smedialink/manager/notifications/PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smedialink/manager/notifications/PushNotificationsManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :cond_e
    return-void
.end method
