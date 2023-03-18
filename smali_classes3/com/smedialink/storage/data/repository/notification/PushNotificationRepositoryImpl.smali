.class public final Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;
.super Ljava/lang/Object;
.source "PushNotificationRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushNotificationRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushNotificationRepositoryImpl.kt\ncom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,74:1\n70#2:75\n70#2:79\n70#2:81\n70#2:83\n70#2:85\n70#2:87\n26#3:76\n18#3:78\n26#3:80\n26#3:82\n26#3:84\n26#3:86\n26#3:88\n8#4:77\n*S KotlinDebug\n*F\n+ 1 PushNotificationRepositoryImpl.kt\ncom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl\n*L\n31#1:75\n42#1:79\n49#1:81\n56#1:83\n63#1:85\n70#1:87\n35#1:76\n39#1:78\n43#1:80\n50#1:82\n57#1:84\n64#1:86\n71#1:88\n39#1:77\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

.field private final pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;Lcom/smedialink/storage/domain/storage/PreferenceHelper;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "pushNotificationApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 23
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    .line 24
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 25
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;)Lcom/smedialink/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public deletePushToken()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 48
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/notification/DeleteTokenRequest;

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/smedialink/storage/data/network/model/request/notification/DeleteTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->deletePushToken(Lcom/smedialink/storage/data/network/model/request/notification/DeleteTokenRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$deletePushToken$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$deletePushToken$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$deletePushToken$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$deletePushToken$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/notification/Notification;",
            ">;>;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 55
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/notification/GetNotificationsRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/smedialink/storage/data/network/model/request/notification/GetNotificationsRequest;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->getNotifications(Lcom/smedialink/storage/data/network/model/request/notification/GetNotificationsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$getNotifications$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$getNotifications$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$getNotifications$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$getNotifications$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public issuePushAllowanceToken()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 30
    invoke-interface {v0}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->issuePushAllowanceToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public savePushToken(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 41
    new-instance v7, Lcom/smedialink/storage/data/network/model/request/notification/SaveTokenRequest;

    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushToken()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/network/model/request/notification/SaveTokenRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->savePushToken(Lcom/smedialink/storage/data/network/model/request/notification/SaveTokenRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$savePushToken$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$savePushToken$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$savePushToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$savePushToken$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public setAllNotificationsRead()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 69
    invoke-interface {v0}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->setAllNotificationsRead()Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setAllNotificationsRead$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setAllNotificationsRead$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setAllNotificationsRead$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setAllNotificationsRead$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setNotificationsRead(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->pushNotificationApi:Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;

    .line 62
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/notification/SetNotificationReadRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/smedialink/storage/data/network/model/request/notification/SetNotificationReadRequest;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PushNotificationApi;->setNotificationsRead(Lcom/smedialink/storage/data/network/model/request/notification/SetNotificationReadRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setNotificationsRead$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setNotificationsRead$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setNotificationsRead$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/notification/PushNotificationRepositoryImpl$setNotificationsRead$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
