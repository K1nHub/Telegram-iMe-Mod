package com.iMe.p031ui.catalog.tabs.categories;

import com.iMe.storage.domain.model.catalog.ChatType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogCategoriesFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$presenter$2 */
/* loaded from: classes.dex */
public final class CatalogCategoriesFragment$presenter$2 extends Lambda implements Function0<CatalogCategoriesPresenter> {
    final /* synthetic */ ChatType $chatType;
    final /* synthetic */ CatalogCategoriesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoriesFragment$presenter$2(CatalogCategoriesFragment catalogCategoriesFragment, ChatType chatType) {
        super(0);
        this.this$0 = catalogCategoriesFragment;
        this.$chatType = chatType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CatalogCategoriesFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$presenter$2$1 */
    /* loaded from: classes.dex */
    public static final class C20141 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ ChatType $chatType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20141(ChatType chatType) {
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
    public final CatalogCategoriesPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2013xadaf5059(this.this$0, null, new C20141(this.$chatType)));
        return (CatalogCategoriesPresenter) lazy.getValue();
    }
}
