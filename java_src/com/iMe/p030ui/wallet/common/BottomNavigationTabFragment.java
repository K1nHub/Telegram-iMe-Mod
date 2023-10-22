package com.iMe.p030ui.wallet.common;

import android.view.View;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: BottomNavigationTabFragment.kt */
/* renamed from: com.iMe.ui.wallet.common.BottomNavigationTabFragment */
/* loaded from: classes3.dex */
public abstract class BottomNavigationTabFragment extends WalletAuthBaseFragment {
    private BottomNavigationDelegate bottomNavigationDelegate;

    public abstract void handleBottomPadding(int i);

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment
    protected boolean shouldAskPinCode() {
        return false;
    }

    public final BottomNavigationDelegate getBottomNavigationDelegate() {
        return this.bottomNavigationDelegate;
    }

    public final void setBottomNavigationDelegate(BottomNavigationDelegate bottomNavigationDelegate) {
        this.bottomNavigationDelegate = bottomNavigationDelegate;
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        BottomNavigationDelegate bottomNavigationDelegate = this.bottomNavigationDelegate;
        if (bottomNavigationDelegate != null) {
            bottomNavigationDelegate.getBottomNavigationPadding(new Function1<Integer, Unit>() { // from class: com.iMe.ui.wallet.common.BottomNavigationTabFragment$onResume$1
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
                    BottomNavigationTabFragment.this.handleBottomPadding(i);
                }
            });
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
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
