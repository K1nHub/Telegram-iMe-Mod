package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.POST;
/* compiled from: NftAvatarApi.kt */
/* loaded from: classes3.dex */
public interface NftAvatarApi {
    @POST("nftAvatars/listOwnAvatars")
    Observable<ApiBaseResponse<List<NftAvatarResponse>>> getNtfAvatars();
}
