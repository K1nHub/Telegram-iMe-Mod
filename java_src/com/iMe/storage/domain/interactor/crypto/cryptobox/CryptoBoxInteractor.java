package com.iMe.storage.domain.interactor.crypto.cryptobox;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxCreationRules;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxOrderType;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationData;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationResult;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import com.iMe.storage.domain.repository.crypto.cryptobox.CryptoBoxRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxInteractor.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxInteractor {
    private final CryptoBoxRepository cryptoBoxRepository;
    private final SchedulersProvider schedulersProvider;

    public CryptoBoxInteractor(CryptoBoxRepository cryptoBoxRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoBoxRepository, "cryptoBoxRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoBoxRepository = cryptoBoxRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<CryptoBoxCreationRules>> getCreationRules(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<CryptoBoxCreationRules>> subscribeOn = this.cryptoBoxRepository.getCreationRules(networkId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxTransactionAction>> getCreationPrepareData(String networkId, String tokenAddress, BigDecimal amount, int i) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<Result<CryptoBoxTransactionAction>> subscribeOn = this.cryptoBoxRepository.getCreationPrepareData(networkId, tokenAddress, amount, i).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> sendCreationExecute(long j, String description, CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.cryptoBoxRepository.sendCreationExecute(j, description, args).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxTokenApprovalInfo>> getApprovalInfo(String networkId, String tokenAddress) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Observable<Result<CryptoBoxTokenApprovalInfo>> subscribeOn = this.cryptoBoxRepository.getApprovalInfo(networkId, tokenAddress).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxTransactionAction>> getApprovalPrepareData(String networkId, String tokenAddress) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        Observable<Result<CryptoBoxTransactionAction>> subscribeOn = this.cryptoBoxRepository.getApprovalPrepareData(networkId, tokenAddress).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> sendApprovalExecute(CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.cryptoBoxRepository.sendApprovalExecute(args).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<CryptoBoxInfo>>> getCryptoBoxesList(Long l, String networkId, CryptoBoxOrderType orderStrategy) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(orderStrategy, "orderStrategy");
        Observable<Result<List<CryptoBoxInfo>>> subscribeOn = this.cryptoBoxRepository.getCryptoBoxesList(l, networkId, orderStrategy).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxInfo>> getCryptoBoxInfo(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<CryptoBoxInfo>> subscribeOn = this.cryptoBoxRepository.getCryptoBoxInfo(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<CryptoBoxAction>>> getCryptoBoxActions(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<List<CryptoBoxAction>>> subscribeOn = this.cryptoBoxRepository.getCryptoBoxActions(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxTransactionAction>> getSuspensionPrepareData(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<CryptoBoxTransactionAction>> subscribeOn = this.cryptoBoxRepository.getSuspensionPrepareData(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> sendSuspensionExecute(CryptoBoxTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.cryptoBoxRepository.sendSuspensionExecute(args).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendMessageRefresh(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<Boolean>> subscribeOn = this.cryptoBoxRepository.sendMessageRefresh(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxParticipationData>> getParticipationData(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<CryptoBoxParticipationData>> subscribeOn = this.cryptoBoxRepository.getParticipationData(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoBoxParticipationResult>> participate(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Observable<Result<CryptoBoxParticipationResult>> subscribeOn = this.cryptoBoxRepository.participate(boxId).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoBoxRepository\n    …(schedulersProvider.io())");
        return subscribeOn;
    }
}
