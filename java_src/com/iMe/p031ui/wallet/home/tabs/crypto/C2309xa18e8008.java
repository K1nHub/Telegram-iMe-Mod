package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$lambda$5$$inlined$mapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2309xa18e8008 extends Lambda implements Function1<Result<? extends List<? extends TokenDisplaySettings.Crypto>>, Result<? extends List<BaseNode>>> {
    final /* synthetic */ Result $balancesResult$inlined;
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2309xa18e8008(WalletHomeCryptoPresenter walletHomeCryptoPresenter, Result result) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
        this.$balancesResult$inlined = result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends List<BaseNode>> invoke(Result<? extends List<? extends TokenDisplaySettings.Crypto>> result) {
        List list;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends List<BaseNode>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        WalletHomeCryptoPresenter walletHomeCryptoPresenter = this.this$0;
        List list2 = (List) result.getData();
        if (list2 == null) {
            list2 = CollectionsKt__CollectionsKt.emptyList();
        }
        walletHomeCryptoPresenter.tokensDisplaySettings = list2;
        WalletHomeCryptoPresenter walletHomeCryptoPresenter2 = this.this$0;
        List list3 = (List) this.$balancesResult$inlined.getData();
        if (list3 == null) {
            list3 = CollectionsKt__CollectionsKt.emptyList();
        }
        walletHomeCryptoPresenter2.sortTokens(list3);
        WalletHomeCryptoPresenter walletHomeCryptoPresenter3 = this.this$0;
        list = walletHomeCryptoPresenter3.tokens;
        return Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(walletHomeCryptoPresenter3, list, false, null, 6, null));
    }
}
