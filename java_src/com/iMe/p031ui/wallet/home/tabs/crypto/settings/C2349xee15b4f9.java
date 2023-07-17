package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$1 */
/* loaded from: classes4.dex */
public final class C2349xee15b4f9 extends Lambda implements Function1<FoundTokenItem, FoundTokenItem> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2349xee15b4f9(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final FoundTokenItem invoke(FoundTokenItem foundTokenItem) {
        List<BaseNode> list;
        FoundTokenItem copy;
        Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
        list = this.this$0.items;
        WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = this.this$0;
        int indexOf = list.indexOf(foundTokenItem);
        copy = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
        list.set(indexOf, copy);
        ((WalletHomeCryptoTokensSettingsView) walletHomeCryptoTokensSettingsPresenter.getViewState()).renderSearchResultItems(list);
        return foundTokenItem;
    }
}
