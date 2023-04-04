package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.notification.DeleteTokenRequest;
import com.iMe.storage.data.network.model.request.notification.GetNotificationsRequest;
import com.iMe.storage.data.network.model.request.notification.SaveTokenRequest;
import com.iMe.storage.data.network.model.request.notification.SetNotificationReadRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.notification.IssuePushAllowanceTokenResponse;
import com.iMe.storage.data.network.model.response.notification.NotificationResponse;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: PushNotificationApi.kt */
/* loaded from: classes3.dex */
public interface PushNotificationApi {
    @POST("deletePushToken")
    Observable<ApiBaseResponse<Object>> deletePushToken(@Body DeleteTokenRequest deleteTokenRequest);

    @POST("getNotificationsWithCrypto")
    Observable<ApiBaseResponse<List<NotificationResponse>>> getNotifications(@Body GetNotificationsRequest getNotificationsRequest);

    @POST("issuePushAllowanceToken")
    Observable<ApiBaseResponse<IssuePushAllowanceTokenResponse>> issuePushAllowanceToken();

    @POST("savePushTokenByAllowance")
    Observable<ApiBaseResponse<Object>> savePushToken(@Body SaveTokenRequest saveTokenRequest);

    @POST("setAllNotificationsRead")
    Observable<ApiBaseResponse<Object>> setAllNotificationsRead();

    @POST("setNotificationsRead")
    Observable<ApiBaseResponse<Object>> setNotificationsRead(@Body SetNotificationReadRequest setNotificationReadRequest);
}
