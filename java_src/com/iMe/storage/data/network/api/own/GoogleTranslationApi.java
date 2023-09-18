package com.iMe.storage.data.network.api.own;

import io.reactivex.Observable;
import java.util.ArrayList;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Query;
/* compiled from: GoogleTranslationApi.kt */
/* loaded from: classes4.dex */
public interface GoogleTranslationApi {
    @Headers({"Content-Type: application/json"})
    @GET("translate_a/single?client=gtx&dt=t&ie=UTF-8&oe=UTF-8&otf=1&ssel=0&tsel=0&kc=7&dt=at&dt=bd&dt=ex&dt=ld&dt=md&dt=qca&dt=rw&dt=rm&dt=ss")
    Observable<ArrayList<Object>> translate(@Header("User-Agent") String str, @Query("sl") String str2, @Query("tl") String str3, @Query("q") String str4);
}
