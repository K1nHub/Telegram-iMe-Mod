package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.NetworkTypeView;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding implements ViewBinding {
    private ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, NetworkTypeView networkTypeView, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_dashboard_header_with_network_switcher, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding bind(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i = C3632R.C3635id.network_type_view;
        NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
        if (networkTypeView != null) {
            i = C3632R.C3635id.text_wallet_header;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                return new ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding(relativeLayout, relativeLayout, networkTypeView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
