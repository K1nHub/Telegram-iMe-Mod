package com.smedialink.p031ui.wallet.airdrop;

import com.smedialink.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C2022x38215bb extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends AirdropInfo>>> {
    final /* synthetic */ WalletAirdropPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2022x38215bb(WalletAirdropPresenter walletAirdropPresenter) {
        super(1);
        this.this$0 = walletAirdropPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends AirdropInfo>> invoke(Result<? extends String> result) {
        AirdropInteractor airdropInteractor;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        airdropInteractor = this.this$0.airdropInteractor;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        return AirdropInteractor.checkAirdropStart$default(airdropInteractor, data, null, 2, null);
    }
}
