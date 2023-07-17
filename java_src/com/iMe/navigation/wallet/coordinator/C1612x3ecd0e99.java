package com.iMe.navigation.wallet.coordinator;

import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.glide.GlideApp;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.p043ui.ActionBar.INavigationLayout;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1612x3ecd0e99 extends Lambda implements Function1<Result<? extends List<? extends Network>>, Unit> {
    final /* synthetic */ INavigationLayout $actionBarLayout$inlined;
    final /* synthetic */ WalletAuthBaseFragment $nextFragment$inlined;
    final /* synthetic */ boolean $removeLast$inlined;
    final /* synthetic */ CryptoPreferenceHelper $this_with$inlined;
    final /* synthetic */ WalletFlowCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1612x3ecd0e99(CryptoPreferenceHelper cryptoPreferenceHelper, WalletFlowCoordinator walletFlowCoordinator, INavigationLayout iNavigationLayout, WalletAuthBaseFragment walletAuthBaseFragment, boolean z) {
        super(1);
        this.$this_with$inlined = cryptoPreferenceHelper;
        this.this$0 = walletFlowCoordinator;
        this.$actionBarLayout$inlined = iNavigationLayout;
        this.$nextFragment$inlined = walletAuthBaseFragment;
        this.$removeLast$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Network>> result) {
        m1291invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1291invoke(Result<? extends List<? extends Network>> it) {
        ResourceManager resourceManager;
        List listOf;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends Network>> result = it;
        if (result instanceof Result.Success) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.$this_with$inlined;
            List<Network> list = (List) ((Result.Success) result).getData();
            ArrayList<String> arrayList = new ArrayList();
            for (Network network : list) {
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{network.getLogoUrl(), network.getSmallLogoUrl(), network.getExplorer().getLogoUrl()});
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, listOf);
            }
            for (String str : arrayList) {
                GlideApp.with(ApplicationLoader.applicationContext).asDrawable().load(str).preload();
            }
            cryptoPreferenceHelper.setSupportedNetworks(list);
            this.$this_with$inlined.setLastNetworksUpdateTime(DateExtKt.now());
            this.this$0.startWalletFlow(this.$actionBarLayout$inlined, this.$nextFragment$inlined, this.$removeLast$inlined);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ContextExtKt.toast(error.getMessage(resourceManager));
        }
    }
}
