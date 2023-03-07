package com.smedialink.storage.data.repository.notification;

import com.smedialink.storage.data.mapper.notification.NotificationMappingKt;
import com.smedialink.storage.data.network.api.own.PushNotificationApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.notification.DeleteTokenRequest;
import com.smedialink.storage.data.network.model.request.notification.GetNotificationsRequest;
import com.smedialink.storage.data.network.model.request.notification.SaveTokenRequest;
import com.smedialink.storage.data.network.model.request.notification.SetNotificationReadRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.notification.IssuePushAllowanceTokenResponse;
import com.smedialink.storage.data.network.model.response.notification.NotificationResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.notification.Notification;
import com.smedialink.storage.domain.repository.notification.PushNotificationRepository;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PushNotificationRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class PushNotificationRepositoryImpl implements PushNotificationRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final PreferenceHelper preferenceHelper;
    private final PushNotificationApi pushNotificationApi;

    public PushNotificationRepositoryImpl(PushNotificationApi pushNotificationApi, PreferenceHelper preferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(pushNotificationApi, "pushNotificationApi");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.pushNotificationApi = pushNotificationApi;
        this.preferenceHelper = preferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<String>> issuePushAllowanceToken() {
        Observable<ApiBaseResponse<IssuePushAllowanceTokenResponse>> issuePushAllowanceToken = this.pushNotificationApi.issuePushAllowanceToken();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = issuePushAllowanceToken.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$issuePushAllowanceToken$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                PreferenceHelper preferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                String token = ((IssuePushAllowanceTokenResponse) response.getPayload()).getToken();
                preferenceHelper = this.preferenceHelper;
                preferenceHelper.setPushAllowanceToken(token);
                return Result.Companion.success(token);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> savePushToken(List<String> accounts) {
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        if (this.preferenceHelper.getPushToken().length() == 0) {
            Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable<ApiBaseResponse<Object>> savePushToken = this.pushNotificationApi.savePushToken(new SaveTokenRequest(this.preferenceHelper.getPushToken(), accounts, null, 4, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = savePushToken.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$savePushToken$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> deletePushToken() {
        Observable<ApiBaseResponse<Object>> deletePushToken = this.pushNotificationApi.deletePushToken(new DeleteTokenRequest(this.preferenceHelper.getPushToken(), null, 2, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = deletePushToken.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$deletePushToken$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<List<Notification>>> getNotifications(String str) {
        Observable<ApiBaseResponse<List<NotificationResponse>>> notifications = this.pushNotificationApi.getNotifications(new GetNotificationsRequest(str, 0, 2, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = notifications.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$getNotifications$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    Iterable<NotificationResponse> iterable = (Iterable) response.getPayload();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (NotificationResponse notificationResponse : iterable) {
                        arrayList.add(NotificationMappingKt.mapToDomain(notificationResponse));
                    }
                    return Result.Companion.success(arrayList);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Notification>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> setNotificationsRead(String id) {
        List mutableListOf;
        Intrinsics.checkNotNullParameter(id, "id");
        PushNotificationApi pushNotificationApi = this.pushNotificationApi;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(id);
        Observable<ApiBaseResponse<Object>> notificationsRead = pushNotificationApi.setNotificationsRead(new SetNotificationReadRequest(mutableListOf));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = notificationsRead.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$setNotificationsRead$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> setAllNotificationsRead() {
        Observable<ApiBaseResponse<Object>> allNotificationsRead = this.pushNotificationApi.setAllNotificationsRead();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = allNotificationsRead.map(new Function() { // from class: com.smedialink.storage.data.repository.notification.PushNotificationRepositoryImpl$setAllNotificationsRead$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
