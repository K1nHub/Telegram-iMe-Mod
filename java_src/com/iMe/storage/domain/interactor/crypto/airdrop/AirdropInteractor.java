package com.iMe.storage.domain.interactor.crypto.airdrop;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropVersion;
import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropInteractor.kt */
/* loaded from: classes3.dex */
public final class AirdropInteractor {
    private final AirdropRepository airdropRepository;
    private final SchedulersProvider schedulersProvider;

    public AirdropInteractor(AirdropRepository airdropRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(airdropRepository, "airdropRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.airdropRepository = airdropRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public static /* synthetic */ Observable registerInAirdrop$default(AirdropInteractor airdropInteractor, AirdropVersion airdropVersion, int i, Object obj) {
        if ((i & 1) != 0) {
            airdropVersion = AirdropVersion.VERSION_1;
        }
        return airdropInteractor.registerInAirdrop(airdropVersion);
    }

    public final Observable<Result<String>> registerInAirdrop(AirdropVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<Result<String>> subscribeOn = this.airdropRepository.registerInAirdrop(version).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "airdropRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable checkAirdropStart$default(AirdropInteractor airdropInteractor, String str, AirdropVersion airdropVersion, int i, Object obj) {
        if ((i & 2) != 0) {
            airdropVersion = AirdropVersion.VERSION_1;
        }
        return airdropInteractor.checkAirdropStart(str, airdropVersion);
    }

    public final Observable<Result<AirdropInfo>> checkAirdropStart(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<Result<AirdropInfo>> subscribeOn = this.airdropRepository.checkAirdropStart(requestId, version).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "airdropRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getTokensByAirdrop$default(AirdropInteractor airdropInteractor, String str, AirdropVersion airdropVersion, int i, Object obj) {
        if ((i & 2) != 0) {
            airdropVersion = AirdropVersion.VERSION_1;
        }
        return airdropInteractor.getTokensByAirdrop(str, airdropVersion);
    }

    public final Observable<Result<Boolean>> getTokensByAirdrop(String requestId, AirdropVersion version) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(version, "version");
        Observable<Result<Boolean>> subscribeOn = this.airdropRepository.getTokensByAirdrop(requestId, version).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "airdropRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
