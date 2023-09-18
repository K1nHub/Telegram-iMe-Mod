package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.POST;
/* compiled from: NftAvatarApi.kt */
/* loaded from: classes4.dex */
public interface NftAvatarApi {
    @POST("nftAvatars/listOwnAvatars")
    Observable<ApiBaseResponse<List<NftAvatarResponse>>> getNtfAvatars();
}
