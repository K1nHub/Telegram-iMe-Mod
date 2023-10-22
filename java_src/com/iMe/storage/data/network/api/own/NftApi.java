package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.nft.OwnNftCollectionsRequest;
import com.iMe.storage.data.network.model.request.crypto.nft.OwnNftItemsRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.NftItemsResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.OwnNftCollectionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: NftApi.kt */
/* loaded from: classes3.dex */
public interface NftApi {
    @POST("nft/listOwnCollections")
    Observable<ApiBaseResponse<OwnNftCollectionsResponse>> getOwnNftCollections(@Body OwnNftCollectionsRequest ownNftCollectionsRequest);

    @POST("nft/listOwnItems")
    Observable<ApiBaseResponse<NftItemsResponse>> getOwnNftItems(@Body OwnNftItemsRequest ownNftItemsRequest);
}
