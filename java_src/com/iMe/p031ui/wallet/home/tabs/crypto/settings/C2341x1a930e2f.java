package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2341x1a930e2f extends Lambda implements Function1<Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>, Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2341x1a930e2f(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair) {
        m1505invoke(pair);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1505invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> it) {
        ResourceManager resourceManager;
        List<BaseNode> list;
        FoundTokenItem copy;
        RxEventBus rxEventBus;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair = it;
        Result<? extends Boolean> result = pair.component1();
        FoundTokenItem foundTokenItem = pair.component2();
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
            if (simpleName == null) {
                simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
            }
            rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(simpleName, true));
        } else if (result instanceof Result.Error) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
            list = this.this$0.items;
            int indexOf = list.indexOf(foundTokenItem);
            Intrinsics.checkNotNullExpressionValue(foundTokenItem, "foundTokenItem");
            copy = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
            list.set(indexOf, copy);
            ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).renderSearchResultItems(list);
        }
    }
}
