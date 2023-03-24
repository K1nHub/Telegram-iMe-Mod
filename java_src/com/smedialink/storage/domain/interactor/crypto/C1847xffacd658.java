package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1847xffacd658 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ Wallet $newWallet$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1847xffacd658(CryptoWalletInteractor cryptoWalletInteractor, Wallet wallet2) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
        this.$newWallet$inlined = wallet2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
        boolean isAddressChanged;
        Observable unlinkWalletIfNeed;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        String data = result.getData();
        isAddressChanged = this.this$0.isAddressChanged(data, this.$newWallet$inlined);
        if (isAddressChanged) {
            NetworkType networkType = (NetworkType) CollectionsKt.first((List<? extends Object>) NetworkType.Companion.getNetworksByBlockchain(this.$newWallet$inlined.getBlockchainType()));
            unlinkWalletIfNeed = this.this$0.unlinkWalletIfNeed(data, networkType);
            Observable flatMap = unlinkWalletIfNeed.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1849xda5d1331(this.this$0, this.$newWallet$inlined, networkType)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            schedulersProvider = this.this$0.schedulersProvider;
            Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo707io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                      …                        }");
            return subscribeOn;
        }
        Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
