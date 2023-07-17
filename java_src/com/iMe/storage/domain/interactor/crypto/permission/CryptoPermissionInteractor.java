package com.iMe.storage.domain.interactor.crypto.permission;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.model.crypto.permission.PermissionAction;
import com.iMe.storage.domain.repository.crypto.permission.CryptoPermissionRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoPermissionInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoPermissionInteractor {
    private final CryptoPermissionRepository cryptoPermissionRepository;
    private final SchedulersProvider schedulersProvider;

    public CryptoPermissionInteractor(CryptoPermissionRepository cryptoPermissionRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoPermissionRepository, "cryptoPermissionRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoPermissionRepository = cryptoPermissionRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<CryptoWalletsInfo>> getCryptoPrivacySettings(boolean z) {
        Observable<Result<CryptoWalletsInfo>> subscribeOn = this.cryptoPermissionRepository.getPermissionSettings(z).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoPermissionReposito…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> manageCryptoPrivacySettings(boolean z, List<Long> whitelistUsers) {
        Intrinsics.checkNotNullParameter(whitelistUsers, "whitelistUsers");
        Observable<Result<Boolean>> subscribeOn = this.cryptoPermissionRepository.managePermissionSettings(z, whitelistUsers).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoPermissionReposito…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<AccountInfo>> getAddressInfo(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Observable<Result<AccountInfo>> subscribeOn = this.cryptoPermissionRepository.getAccountInfo(userId).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoPermissionReposito…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> requestAllAddressesPermission(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Observable<Result<String>> subscribeOn = this.cryptoPermissionRepository.requestPermission(userId, PermissionAction.GET_ETHER_WALLET_ADDRESS).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoPermissionReposito…(schedulersProvider.io())");
        return subscribeOn;
    }
}
