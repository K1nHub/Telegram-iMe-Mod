package com.iMe.storage.domain.repository.crypto.nft.avatar;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: NftRepository.kt */
/* loaded from: classes3.dex */
public interface NftRepository {
    Observable<Result<List<NftToken>>> getOwnNftItems(String str, String str2, String str3);
}
