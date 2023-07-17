package com.iMe.p031ui.catalog.tabs.user_channels;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogUserChannelsFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsFragment$presenter$2 extends Lambda implements Function0<CatalogUserChannelsPresenter> {
    final /* synthetic */ CatalogUserChannelsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogUserChannelsFragment$presenter$2(CatalogUserChannelsFragment catalogUserChannelsFragment) {
        super(0);
        this.this$0 = catalogUserChannelsFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CatalogUserChannelsFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C20281 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CatalogUserChannelsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20281(CatalogUserChannelsFragment catalogUserChannelsFragment) {
            super(0);
            this.this$0 = catalogUserChannelsFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.this$0.getChatType());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CatalogUserChannelsPresenter invoke() {
        Lazy lazy;
        CatalogUserChannelsFragment catalogUserChannelsFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2027xfac0ed5a(catalogUserChannelsFragment, null, new C20281(catalogUserChannelsFragment)));
        return (CatalogUserChannelsPresenter) lazy.getValue();
    }
}
