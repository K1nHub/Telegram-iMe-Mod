package com.iMe.p031ui.wallet.common;

import android.view.View;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
/* compiled from: BottomNavigationTabFragment.kt */
/* renamed from: com.iMe.ui.wallet.common.BottomNavigationTabFragment */
/* loaded from: classes3.dex */
public abstract class BottomNavigationTabFragment extends WalletAuthFragment {
    private BottomNavigationDelegate bottomNavigationDelegate;

    public abstract void handleBottomPadding(int i);

    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p031ui.base.WalletAuthFragment
    public boolean shouldAskPinCode() {
        return false;
    }

    public final BottomNavigationDelegate getBottomNavigationDelegate() {
        return this.bottomNavigationDelegate;
    }

    public final void setBottomNavigationDelegate(BottomNavigationDelegate bottomNavigationDelegate) {
        this.bottomNavigationDelegate = bottomNavigationDelegate;
    }

    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        BottomNavigationDelegate bottomNavigationDelegate = this.bottomNavigationDelegate;
        if (bottomNavigationDelegate != null) {
            bottomNavigationDelegate.getBottomNavigationPadding(new BottomNavigationTabFragment$onResume$1(this));
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onDestroyView() {
        super.onDestroyView();
        clearView();
    }

    private final void clearView() {
        View view = this.fragmentView;
        if (view != null) {
            ViewExtKt.removeSelfFromParent(view);
        }
        this.fragmentView = null;
    }
}
