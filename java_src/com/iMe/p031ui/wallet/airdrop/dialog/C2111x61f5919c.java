package com.iMe.p031ui.wallet.airdrop.dialog;

import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C2111x61f5919c extends Lambda implements Function1<Result<? extends AirdropInfo>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ WalletAirdropDialogPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2111x61f5919c(WalletAirdropDialogPresenter walletAirdropDialogPresenter) {
        super(1);
        this.this$0 = walletAirdropDialogPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends AirdropInfo> result) {
        AirdropInteractor airdropInteractor;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        airdropInteractor = this.this$0.airdropInteractor;
        cryptoPreferenceHelper = this.this$0.preferenceHelper;
        return AirdropInteractor.getTokensByAirdrop$default(airdropInteractor, cryptoPreferenceHelper.getAirdropMetadata().getAirdropRequestId(), null, 2, null);
    }
}