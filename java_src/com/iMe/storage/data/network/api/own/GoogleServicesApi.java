package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.voicetotext.VoiceToTextRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.google.ImageToObjectsResponse;
import com.iMe.storage.data.network.model.response.google.ImageToTextResponse;
import com.iMe.storage.data.network.model.response.google.VoiceToTextResponse;
import com.iMe.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import io.reactivex.Observable;
import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
/* compiled from: GoogleServicesApi.kt */
/* loaded from: classes4.dex */
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
