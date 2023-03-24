package com.smedialink.storage.domain.interactor.crypto.nft.avatar;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.nft.avatar.NftToken;
import com.smedialink.storage.domain.repository.crypto.nft.avatar.NftAvatarRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
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
        Observable<Result<List<NftToken>>> subscribeOn = this.nftAvatarRepository.getNftAvatars(networkType).subscribeOn(this.schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "nftAvatarRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }
}
