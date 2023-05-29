package com.iMe.storage.data.repository.notification;

import com.iMe.storage.data.mapper.notification.NotificationMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.notification.NotificationResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.notification.PushNotificationRepositoryImpl$getNotifications$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1909xd49e5e34 extends Lambda implements Function1<ApiBaseResponse<List<? extends NotificationResponse>>, Result<? extends List<? extends Notification>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1909xd49e5e34(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends Notification>> invoke(ApiBaseResponse<List<? extends NotificationResponse>> response) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            List<? extends NotificationResponse> payload = response.getPayload();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (NotificationResponse notificationResponse : payload) {
                arrayList.add(NotificationMappingKt.mapToDomain(notificationResponse));
            }
            return Result.Companion.success(arrayList);
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
