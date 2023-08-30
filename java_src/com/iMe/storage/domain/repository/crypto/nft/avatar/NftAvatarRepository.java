package com.iMe.storage.domain.repository.crypto.nft.avatar;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: NftAvatarRepository.kt */
/* loaded from: classes3.dex */
public interface NftAvatarRepository {
    Observable<Result<List<NftToken>>> getNftAvatars(String str);
}
