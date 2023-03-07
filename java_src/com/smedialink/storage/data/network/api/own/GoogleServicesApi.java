package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.voicetotext.VoiceToTextRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToObjectsResponse;
import com.smedialink.storage.data.network.model.response.google.ImageToTextResponse;
import com.smedialink.storage.data.network.model.response.google.VoiceToTextResponse;
import com.smedialink.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import io.reactivex.Observable;
import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
/* compiled from: GoogleServicesApi.kt */
/* loaded from: classes3.dex */
public interface GoogleServicesApi {
    @POST("google-services/detectObjectOnAnImage")
    @Multipart
    Observable<ApiBaseResponse<ImageToObjectsResponse>> getPhotoObjects(@Part MultipartBody.Part part);

    @POST("google-services/detectTextOnAnImage")
    @Multipart
    Observable<ApiBaseResponse<ImageToTextResponse>> getPhotoText(@Part MultipartBody.Part part);

    @POST("google-services/getTranslationLanguages")
    Observable<ApiBaseResponse<TranslationLanguagesResponse>> getTranslationLanguages();

    @POST("google-services/transformSpeechToText")
    Observable<ApiBaseResponse<VoiceToTextResponse>> getVoiceText(@Body VoiceToTextRequest voiceToTextRequest);
}
