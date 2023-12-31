package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.permission.ManageCryptoPermissionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetAccountInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.ManageAccessToMyDataRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.RequestPermissionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.RequestPermissionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: PermissionApi.kt */
/* loaded from: classes3.dex */
public interface PermissionApi {
    @POST("getNotOwnWallets")
    Observable<ApiBaseResponse<AccountInfoResponse>> getAccountInfo(@Body GetAccountInfoRequest getAccountInfoRequest);

    @POST("manageAccessToMyData")
    Observable<ApiBaseResponse<Object>> manageAccessToMyData(@Body ManageAccessToMyDataRequest manageAccessToMyDataRequest);

    @POST("changePermission")
    Observable<ApiBaseResponse<Object>> manageCryptoPermissions(@Body ManageCryptoPermissionRequest manageCryptoPermissionRequest);

    @POST("requestPermission")
    Observable<ApiBaseResponse<RequestPermissionsResponse>> requestPermission(@Body RequestPermissionRequest requestPermissionRequest);
}
