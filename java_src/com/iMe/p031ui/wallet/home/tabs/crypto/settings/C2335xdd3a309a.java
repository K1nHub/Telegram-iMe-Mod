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
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2335xdd3a309a extends Lambda implements Function1<Result<? extends List<? extends FoundTokenItem>>, Unit> {
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ boolean $isReload$inlined;
    final /* synthetic */ boolean $isReloadHidden$inlined;
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2335xdd3a309a(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, boolean z, boolean z2, boolean z3) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
        this.$isLoadMore$inlined = z;
        this.$isReload$inlined = z2;
        this.$isReloadHidden$inlined = z3;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends FoundTokenItem>> result) {
        m1502invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1502invoke(Result<? extends List<? extends FoundTokenItem>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends FoundTokenItem>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onSearchSuccess((List) ((Result.Success) result).getData(), this.$isLoadMore$inlined);
        } else if (result instanceof Result.Loading) {
            if (!this.$isReload$inlined || this.$isReloadHidden$inlined) {
                return;
            }
            this.this$0.renderSearchState(GlobalState.Progress.INSTANCE);
        } else if (result instanceof Result.Error) {
            if (this.$isLoadMore$inlined) {
                ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                this.this$0.renderSearchState(GlobalState.NoInternet.INSTANCE);
            } else {
                this.this$0.renderSearchState(GlobalState.Unexpected.INSTANCE);
            }
        }
    }
}
