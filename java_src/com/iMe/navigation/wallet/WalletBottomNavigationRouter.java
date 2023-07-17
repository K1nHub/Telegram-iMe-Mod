package com.iMe.navigation.wallet;

import com.iMe.model.common.NavigationTab;
import com.iMe.model.wallet.navigation.WalletBottomNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.router.CommonBottomNavigationRouter;
import com.iMe.p031ui.wallet.common.WalletTabFragment;
import java.util.Iterator;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
/* compiled from: WalletBottomNavigationRouter.kt */
/* loaded from: classes3.dex */
public final class WalletBottomNavigationRouter extends CommonBottomNavigationRouter<WalletTabFragment> {
    @Override // com.iMe.navigation.common.router.base.BaseNavigationRouter, com.iMe.navigation.common.router.base.NavigationRouter
    public void show(int i) {
        super.show(i);
        showTitle(i);
    }

    private final void showTitle(int i) {
        Object obj;
        C3484ActionBar actionBar;
        boolean z;
        NavigationConfiguration<? extends NavigationTab<T>> configuration = getConfiguration();
        if (configuration == 0) {
            return;
        }
        Iterator it = configuration.getTabs().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((NavigationTab) obj).getId() == i) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        WalletBottomNavigationTab walletBottomNavigationTab = (WalletBottomNavigationTab) obj;
        if (walletBottomNavigationTab == null || (actionBar = configuration.getViewConfiguration().getParentFragment().getActionBar()) == null) {
            return;
        }
        actionBar.setTitle(walletBottomNavigationTab.getTitle());
        actionBar.setCastShadows(i != C3417R.C3420id.wallet_root_bottom_navigation_home);
    }
}
