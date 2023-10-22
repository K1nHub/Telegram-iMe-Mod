package com.iMe.storage.domain.interactor.crypto.nft.avatar;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftInteractor.kt */
/* loaded from: classes3.dex */
public final class NftInteractor {
    private final NftRepository nftRepository;
    private final SchedulersProvider schedulersProvider;

    public NftInteractor(NftRepository nftRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(nftRepository, "nftRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.nftRepository = nftRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public static /* synthetic */ Observable getOwnNftItems$default(NftInteractor nftInteractor, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        return nftInteractor.getOwnNftItems(str, str2, str3);
    }

    public final Observable<Result<List<NftToken>>> getOwnNftItems(String str, String str2, String str3) {
        Observable<Result<List<NftToken>>> subscribeOn = this.nftRepository.getOwnNftItems(str, str2, str3).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "nftRepository\n          …(schedulersProvider.io())");
        return subscribeOn;
    }
}
