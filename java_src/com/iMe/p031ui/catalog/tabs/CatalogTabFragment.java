package com.iMe.p031ui.catalog.tabs;

import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.wallet.common.BottomNavigationDelegate;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: CatalogTabFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogTabFragment */
/* loaded from: classes4.dex */
public abstract class CatalogTabFragment extends MvpFragment {
    private BottomNavigationDelegate bottomNavigationDelegate;
    private boolean isCreated;

    public abstract void handleBottomPadding(int i);

    public abstract void onSelectedLanguageChanged();

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public final void setBottomNavigationDelegate(BottomNavigationDelegate bottomNavigationDelegate) {
        this.bottomNavigationDelegate = bottomNavigationDelegate;
    }

    public final boolean isCreated() {
        return this.isCreated;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onViewCreated() {
        super.onViewCreated();
        this.isCreated = true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        BottomNavigationDelegate bottomNavigationDelegate = this.bottomNavigationDelegate;
        if (bottomNavigationDelegate != null) {
            bottomNavigationDelegate.getBottomNavigationPadding(new Function1<Integer, Unit>() { // from class: com.iMe.ui.catalog.tabs.CatalogTabFragment$onResume$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i) {
                    CatalogTabFragment.this.handleBottomPadding(i);
                }
            });
        }
    }
}
