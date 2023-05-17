package com.iMe.storage.domain.interactor.crypto.nft.avatar;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftAvatarInteractor.kt */
/* loaded from: classes3.dex */
public final class NftAvatarInteractor {
    private final NftAvatarRepository nftAvatarRepository;
    private final SchedulersProvider schedulersProvider;

    public NftAvatarInteractor(NftAvatarRepository nftAvatarRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(nftAvatarRepository, "nftAvatarRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.nftAvatarRepository = nftAvatarRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<List<NftToken>>> getNftAvatars(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<List<NftToken>>> subscribeOn = this.nftAvatarRepository.getNftAvatars(networkType).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "nftAvatarRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }
}
