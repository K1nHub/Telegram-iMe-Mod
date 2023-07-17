package com.iMe.storage.data.repository.notification;

import com.iMe.storage.data.network.api.own.PushNotificationApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.notification.DeleteTokenRequest;
import com.iMe.storage.data.network.model.request.notification.GetNotificationsRequest;
import com.iMe.storage.data.network.model.request.notification.SaveTokenRequest;
import com.iMe.storage.data.network.model.request.notification.SetNotificationReadRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import io.reactivex.Observable;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
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

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<String>> issuePushAllowanceToken() {
        Observable<R> map = this.pushNotificationApi.issuePushAllowanceToken().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1923x8c10a2ec(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1922xd90b7335(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> savePushToken(List<String> accounts) {
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        if (this.preferenceHelper.getPushToken().length() == 0) {
            Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable<R> map = this.pushNotificationApi.savePushToken(new SaveTokenRequest(this.preferenceHelper.getPushToken(), accounts, null, 4, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1925xaad9f4fa(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1924x936c62e7(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> deletePushToken() {
        Observable<R> map = this.pushNotificationApi.deletePushToken(new DeleteTokenRequest(this.preferenceHelper.getPushToken(), null, 2, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1919x5e5e944c(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1918x507badd5(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<List<Notification>>> getNotifications(String str) {
        Observable<R> map = this.pushNotificationApi.getNotifications(new GetNotificationsRequest(str, 0, 2, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1921xd49e5e34(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Notification>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1920xa23520ed(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> setNotificationsRead(String id) {
        List mutableListOf;
        Intrinsics.checkNotNullParameter(id, "id");
        PushNotificationApi pushNotificationApi = this.pushNotificationApi;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(id);
        Observable<R> map = pushNotificationApi.setNotificationsRead(new SetNotificationReadRequest(mutableListOf)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1929xc597215e(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1928xd054c303(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.notification.PushNotificationRepository
    public Observable<Result<Boolean>> setAllNotificationsRead() {
        Observable<R> map = this.pushNotificationApi.setAllNotificationsRead().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1927xa57737f7(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1926xec777f8a(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
