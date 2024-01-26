package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.kikliko.ReportRequest;
import com.iMe.storage.data.network.model.request.kikliko.ShareRequest;
import com.iMe.storage.data.network.model.request.kikliko.ViewRequest;
import com.iMe.storage.data.network.model.response.kikliko.GetTagsResponse;
import com.iMe.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* compiled from: KiklikoApi.kt */
/* loaded from: classes3.dex */
public interface KiklikoApi {
    public static final Companion Companion = null;

    static {
        Companion companion = Companion.$$INSTANCE;
    }

    @GET("tags")
    Observable<GetTagsResponse> getTags();

    @GET(AnalyticsEvent.SelectClipCategory.categoryTrending)
    Observable<SearchResultResponse> getTrending(@Query("page") int i, @Query("customer_id") String str, @Query("per_page") int i2, @Query("period") String str2);

    @POST("report/{slug}")
    Observable<Object> report(@Path("slug") String str, @Body ReportRequest reportRequest);

    @GET("search")
    Observable<SearchResultResponse> searchByKeyword(@Query("q") String str, @Query("page") int i, @Query("customer_id") String str2, @Query("per_page") int i2);

    @GET("search")
    Observable<SearchResultResponse> searchByTag(@Query("tags") String str, @Query("page") int i, @Query("customer_id") String str2, @Query("per_page") int i2);

    @POST("share/{slug}")
    Observable<Object> share(@Path("slug") String str, @Body ShareRequest shareRequest);

    @POST("view/{slug}")
    Observable<Object> view(@Path("slug") String str, @Body ViewRequest viewRequest);

    /* compiled from: KiklikoApi.kt */
    /* renamed from: com.iMe.storage.data.network.api.own.KiklikoApi$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        static {
            Companion companion = KiklikoApi.Companion;
        }

        public static /* synthetic */ Observable searchByKeyword$default(KiklikoApi kiklikoApi, String str, int i, String str2, int i2, int i3, Object obj) {
            if (obj == null) {
                if ((i3 & 8) != 0) {
                    i2 = 16;
                }
                return kiklikoApi.searchByKeyword(str, i, str2, i2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: searchByKeyword");
        }

        public static /* synthetic */ Observable searchByTag$default(KiklikoApi kiklikoApi, String str, int i, String str2, int i2, int i3, Object obj) {
            if (obj == null) {
                if ((i3 & 8) != 0) {
                    i2 = 16;
                }
                return kiklikoApi.searchByTag(str, i, str2, i2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: searchByTag");
        }

        public static /* synthetic */ Observable getTrending$default(KiklikoApi kiklikoApi, int i, String str, int i2, String str2, int i3, Object obj) {
            if (obj == null) {
                if ((i3 & 4) != 0) {
                    i2 = 16;
                }
                if ((i3 & 8) != 0) {
                    str2 = "day";
                }
                return kiklikoApi.getTrending(i, str, i2, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getTrending");
        }
    }

    /* compiled from: KiklikoApi.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
