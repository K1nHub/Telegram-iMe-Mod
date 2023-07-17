package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2339xf3403b91 extends Lambda implements Function1<Result<? extends List<? extends FoundTokenItem>>, Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2339xf3403b91(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends FoundTokenItem>> result) {
        m1504invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1504invoke(Result<? extends List<? extends FoundTokenItem>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends FoundTokenItem>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onSearchSuccess((List) ((Result.Success) result).getData(), false);
        } else if (result instanceof Result.Loading) {
            this.this$0.renderSearchState(GlobalState.Progress.INSTANCE);
        } else if (result instanceof Result.Error) {
            this.this$0.renderSearchState(((Result.Error) result).getError().isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
        }
    }
}
