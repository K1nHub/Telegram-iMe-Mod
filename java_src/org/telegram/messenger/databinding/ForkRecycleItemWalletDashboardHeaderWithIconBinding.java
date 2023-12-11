package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletDashboardHeaderWithIconBinding implements ViewBinding {
    private ForkRecycleItemWalletDashboardHeaderWithIconBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemWalletDashboardHeaderWithIconBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithIconBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_dashboard_header_with_icon, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDashboardHeaderWithIconBinding bind(View view) {
        int i = C3632R.C3635id.header_info_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i2 = C3632R.C3635id.text_wallet_header;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i2);
            if (appCompatTextView != null) {
                return new ForkRecycleItemWalletDashboardHeaderWithIconBinding(linearLayout, appCompatImageView, linearLayout, appCompatTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
