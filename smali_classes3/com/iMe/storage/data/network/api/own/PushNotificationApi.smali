.class public interface abstract Lcom/iMe/storage/data/network/api/own/PushNotificationApi;
.super Ljava/lang/Object;
.source "PushNotificationApi.kt"


# virtual methods
.method public abstract deletePushToken(Lcom/iMe/storage/data/network/model/request/notification/DeleteTokenRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/notification/DeleteTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/notification/DeleteTokenRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "deletePushToken"
    .end annotation
.end method

.method public abstract getNotifications(Lcom/iMe/storage/data/network/model/request/notification/GetNotificationsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/notification/GetNotificationsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/notification/GetNotificationsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getNotificationsWithCrypto"
    .end annotation
.end method

.method public abstract issuePushAllowanceToken()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/notification/IssuePushAllowanceTokenResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "issuePushAllowanceToken"
    .end annotation
.end method

.method public abstract savePushToken(Lcom/iMe/storage/data/network/model/request/notification/SaveTokenRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/notification/SaveTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/notification/SaveTokenRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "savePushTokenByAllowance"
    .end annotation
.end method

.method public abstract sendActivityMark()Lio/reactivex/Completable;
    .annotation runtime Lretrofit2/http/POST;
        value = "notification/registerSelf"
    .end annotation
.end method

.method public abstract setAllNotificationsRead()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setAllNotificationsRead"
    .end annotation
.end method

.method public abstract setNotificationsRead(Lcom/iMe/storage/data/network/model/request/notification/SetNotificationReadRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/notification/SetNotificationReadRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/notification/SetNotificationReadRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setNotificationsRead"
    .end annotation
.end method
