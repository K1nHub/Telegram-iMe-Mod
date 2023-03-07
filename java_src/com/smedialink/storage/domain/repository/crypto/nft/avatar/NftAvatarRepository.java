package com.smedialink.storage.domain.repository.crypto.nft.avatar;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftToken;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: NftAvatarRepository.kt */
/* loaded from: classes3.dex */
public interface NftAvatarRepository {
    Observable<Result<List<NftToken>>> getNftAvatars(NetworkType networkType);
}
