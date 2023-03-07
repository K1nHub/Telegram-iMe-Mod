package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.pin.CreatePinCodeRequest;
import com.smedialink.storage.data.network.model.request.crypto.pin.ReadPasswordByPinCodeRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.pin.PasswordByPinCodeRequest;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: PinCodeApi.kt */
/* loaded from: classes3.dex */
public interface PinCodeApi {
    @POST("getCryptoWalletPassword")
    Observable<ApiBaseResponse<PasswordByPinCodeRequest>> getCryptoWalletPassword(@Body ReadPasswordByPinCodeRequest readPasswordByPinCodeRequest);

    @POST("saveCryptoWalletPinCode")
    Observable<ApiBaseResponse<Object>> saveCryptoWalletPinCode(@Body CreatePinCodeRequest createPinCodeRequest);
}
