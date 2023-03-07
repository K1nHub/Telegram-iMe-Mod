package com.smedialink.bots.data.network;

import com.smedialink.bots.data.model.network.BotRemoteInfo;
import com.smedialink.bots.data.model.network.BotVoteInfo;
import com.smedialink.bots.data.model.network.Response;
import com.smedialink.bots.data.model.network.ValidationInfo;
import com.smedialink.bots.domain.model.ShopProduct;
import io.reactivex.Single;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: SmartBotsApi.kt */
/* loaded from: classes3.dex */
public interface SmartBotsApi {
    public static final Companion Companion = Companion.$$INSTANCE;

    @GET("/installDeleteApp")
    Single<Response<String>> appInstall(@Query("app_id") String str, @Query("type") int i, @Query("user_id") long j);

    @GET("/installDeleteBot")
    Single<Response<String>> botInstall(@Query("bot_id") String str, @Query("type") int i, @Query("user_id") long j);

    @GET("/getBotsInfo")
    Single<Response<List<BotRemoteInfo>>> getBotsInfo();

    @GET("/getBotVoting")
    Single<Response<List<BotVoteInfo>>> getBotsVoting(@Query("user_id") long j);

    @POST("/validateReceipts")
    Single<Response<List<ValidationInfo>>> validatePurchases(@Body List<ShopProduct.Receipt> list);

    @GET("/voteBot")
    Single<Response<String>> voteForBot(@Query("bot_id") String str, @Query("rating") int i, @Query("user_id") long j);

    /* compiled from: SmartBotsApi.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static SmartBotsApi INSTANCE;
        private static final OkHttpClient client;
        private static final HttpLoggingInterceptor interceptor;

        private Companion() {
        }

        static {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            httpLoggingInterceptor.level(HttpLoggingInterceptor.Level.NONE);
            interceptor = httpLoggingInterceptor;
            client = new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build();
        }

        public final SmartBotsApi getInstance() {
            if (INSTANCE == null) {
                INSTANCE = (SmartBotsApi) new Retrofit.Builder().baseUrl("https://us-central1-ime-messenger.cloudfunctions.net/").client(client).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create()).build().create(SmartBotsApi.class);
            }
            SmartBotsApi smartBotsApi = INSTANCE;
            Intrinsics.checkNotNull(smartBotsApi);
            return smartBotsApi;
        }
    }
}
