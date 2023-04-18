package com.iMe.p031ui.wallet.swap.process;

import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$1 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter$loadApproveTokensInfo$1 extends Lambda implements Function1<?, ObservableSource<? extends Result<? extends List<? extends CryptoTokenApproveMetadata>>>> {
    final /* synthetic */ NetworkType $selectedNetwork;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$loadApproveTokensInfo$1(WalletSwapProcessPresenter walletSwapProcessPresenter, NetworkType networkType) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$selectedNetwork = networkType;
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public final ObservableSource<? extends Result<? extends List<? extends CryptoTokenApproveMetadata>>> invoke2(Object obj) {
        SwapInteractor swapInteractor;
        SwapProtocol swapProtocol;
        swapInteractor = this.this$0.swapInteractor;
        NetworkType networkType = this.$selectedNetwork;
        swapProtocol = this.this$0.swapProtocol;
        return swapInteractor.getApproveTokensInfo(networkType, swapProtocol);
    }
}
