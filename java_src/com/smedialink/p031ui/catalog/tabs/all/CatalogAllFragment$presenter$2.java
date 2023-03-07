package com.smedialink.p031ui.catalog.tabs.all;

import com.smedialink.storage.domain.model.catalog.ChatType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class CatalogAllFragment$presenter$2 extends Lambda implements Function0<CatalogAllPresenter> {
    final /* synthetic */ ChatType $chatType;
    final /* synthetic */ CatalogAllFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllFragment$presenter$2(CatalogAllFragment catalogAllFragment, ChatType chatType) {
        super(0);
        this.this$0 = catalogAllFragment;
        this.$chatType = chatType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CatalogAllFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C17941 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ ChatType $chatType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17941(ChatType chatType) {
            super(0);
            this.$chatType = chatType;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$chatType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CatalogAllPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogAllFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, new C17941(this.$chatType)));
        return (CatalogAllPresenter) lazy.getValue();
    }
}
