package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.pin.PasswordByPinCodeRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.pin.PasswordByPinCodeResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: PinCodeApi.kt */
/* loaded from: classes3.dex */
public interface PinCodeApi {
    @POST("getWalletPassword")
    Observable<ApiBaseResponse<PasswordByPinCodeResponse>> getCryptoWalletPassword(@Body PasswordByPinCodeRequest passwordByPinCodeRequest);
}
