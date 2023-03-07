package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.permission.ManageCryptoPermissionRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.GetAccountInfoRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.ManageAccessToMyDataRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.RequestPermissionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.RequestPermissionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: PermissionApi.kt */
/* loaded from: classes3.dex */
public interface PermissionApi {
    @POST("getAccountInfo")
    Observable<ApiBaseResponse<AccountInfoResponse>> getAccountInfo(@Body GetAccountInfoRequest getAccountInfoRequest);

    @POST("manageAccessToMyData")
    Observable<ApiBaseResponse<Object>> manageAccessToMyData(@Body ManageAccessToMyDataRequest manageAccessToMyDataRequest);

    @POST("manageCryptoPermissions")
    Observable<ApiBaseResponse<Object>> manageCryptoPermissions(@Body ManageCryptoPermissionRequest manageCryptoPermissionRequest);

    @POST("requestPermission")
    Observable<ApiBaseResponse<RequestPermissionsResponse>> requestPermission(@Body RequestPermissionRequest requestPermissionRequest);
}
