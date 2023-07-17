package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$switchTokenVisibility$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2344x45b35dc8 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ Ref$BooleanRef $isTokenVisible$inlined;
    final /* synthetic */ TokenDisplaySettings $token$inlined;
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2344x45b35dc8(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, TokenDisplaySettings tokenDisplaySettings, Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
        this.$token$inlined = tokenDisplaySettings;
        this.$isTokenVisible$inlined = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1506invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1506invoke(Result<? extends Boolean> it) {
        List list;
        ResourceManager resourceManager;
        RxEventBus rxEventBus;
        List list2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        Object obj = null;
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
            if (simpleName == null) {
                simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
            }
            rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(simpleName, false, 2, null));
            list2 = this.this$0.settings;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list2) {
                if (obj2 instanceof TokenDisplaySettings.Crypto) {
                    arrayList.add(obj2);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((TokenDisplaySettings.Crypto) next).getTokenAddress(), ((TokenDisplaySettings.Crypto) this.$token$inlined).getTokenAddress())) {
                    obj = next;
                    break;
                }
            }
            TokenDisplaySettings.Crypto crypto = (TokenDisplaySettings.Crypto) obj;
            if (crypto != null) {
                crypto.setVisible(((Boolean) ((Result.Success) result).getData()).booleanValue());
            }
        } else if (result instanceof Result.Error) {
            list = this.this$0.settings;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : list) {
                if (obj3 instanceof TokenDisplaySettings.Crypto) {
                    arrayList2.add(obj3);
                }
            }
            Iterator it3 = arrayList2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next2 = it3.next();
                if (Intrinsics.areEqual(((TokenDisplaySettings.Crypto) next2).getTokenAddress(), ((TokenDisplaySettings.Crypto) this.$token$inlined).getTokenAddress())) {
                    obj = next2;
                    break;
                }
            }
            TokenDisplaySettings.Crypto crypto2 = (TokenDisplaySettings.Crypto) obj;
            if (crypto2 != null) {
                crypto2.setVisible(this.$isTokenVisible$inlined.element);
            }
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
