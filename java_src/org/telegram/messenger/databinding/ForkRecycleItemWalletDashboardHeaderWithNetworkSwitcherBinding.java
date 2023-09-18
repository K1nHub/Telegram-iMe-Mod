package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.NetworkTypeView;
import org.telegram.messenger.C3473R;
/* loaded from: classes6.dex */
public final class ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, NetworkTypeView networkTypeView, AppCompatTextView appCompatTextView) {
        this.rootView = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_recycle_item_wallet_dashboard_header_with_network_switcher, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding bind(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i = C3473R.C3476id.network_type_view;
        NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
        if (networkTypeView != null) {
            i = C3473R.C3476id.text_wallet_header;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                return new ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding(relativeLayout, relativeLayout, networkTypeView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
