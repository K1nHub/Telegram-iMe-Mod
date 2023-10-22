package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.catalog.CreateCampaignRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.catalog.CampaignResponse;
import com.iMe.storage.data.network.model.response.catalog.CampaignsCursoredResponse;
import com.iMe.storage.data.network.model.response.catalog.CatalogLanguageResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoriesPreviewsCursoredResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoryWithCounterResponse;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* compiled from: CatalogApi.kt */
/* loaded from: classes3.dex */
public interface CatalogApi {
    public static final Endpoints Endpoints = null;

    static {
        Endpoints endpoints = Endpoints.$$INSTANCE;
    }

    @POST("promotion/campaigns/{campaignId}/cancel")
    Observable<ApiBaseResponse<CampaignResponse>> cancelCampaign(@Path("campaignId") String str);

    @POST("promotion/campaigns")
    Observable<ApiBaseResponse<CampaignResponse>> createCampaign(@Body CreateCampaignRequest createCampaignRequest);

    @GET("promotion/catalog/all")
    Observable<ApiBaseResponse<CampaignsCursoredResponse>> getAllCampaigns(@Query("chatType") String str, @Query("cursor") String str2, @Query("size") Integer num, @Query("languageId") Long l);

    @GET("promotion/catalog/{categoryId}")
    Observable<ApiBaseResponse<CampaignsCursoredResponse>> getCampaignsByCategoryId(@Path("categoryId") long j, @Query("chatType") String str, @Query("cursor") String str2, @Query("size") Integer num, @Query("languageId") Long l);

    @GET("promotion/catalog/preview")
    Observable<ApiBaseResponse<CategoriesPreviewsCursoredResponse>> getCatalogPreview(@Query("chatType") String str, @Query("cursor") String str2, @Query("categorySize") Integer num, @Query("size") Integer num2, @Query("languageId") Long l);

    @GET("promotion/catalog")
    Observable<ApiBaseResponse<List<CategoryWithCounterResponse>>> getCategories(@Query("chatType") String str, @Query("languageId") Long l);

    @GET("languages")
    Observable<ApiBaseResponse<List<CatalogLanguageResponse>>> getLanguages();

    @GET("promotion/campaigns")
    Observable<ApiBaseResponse<List<CampaignResponse>>> getUserCampaigns();

    @POST("promotion/campaigns/{campaignId}/restore")
    Observable<ApiBaseResponse<CampaignResponse>> restoreCampaign(@Path("campaignId") String str);

    /* compiled from: CatalogApi.kt */
    /* renamed from: com.iMe.storage.data.network.api.own.CatalogApi$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        static {
            Endpoints endpoints = CatalogApi.Endpoints;
        }

        public static /* synthetic */ Observable getCatalogPreview$default(CatalogApi catalogApi, String str, String str2, Integer num, Integer num2, Long l, int i, Object obj) {
            if (obj == null) {
                return catalogApi.getCatalogPreview(str, str2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : num2, l);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCatalogPreview");
        }

        public static /* synthetic */ Observable getAllCampaigns$default(CatalogApi catalogApi, String str, String str2, Integer num, Long l, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    num = null;
                }
                return catalogApi.getAllCampaigns(str, str2, num, l);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAllCampaigns");
        }

        public static /* synthetic */ Observable getCampaignsByCategoryId$default(CatalogApi catalogApi, long j, String str, String str2, Integer num, Long l, int i, Object obj) {
            if (obj == null) {
                if ((i & 8) != 0) {
                    num = null;
                }
                return catalogApi.getCampaignsByCategoryId(j, str, str2, num, l);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCampaignsByCategoryId");
        }
    }

    /* compiled from: CatalogApi.kt */
    /* loaded from: classes3.dex */
    public static final class Endpoints {
        static final /* synthetic */ Endpoints $$INSTANCE = new Endpoints();

        private Endpoints() {
        }
    }
}
