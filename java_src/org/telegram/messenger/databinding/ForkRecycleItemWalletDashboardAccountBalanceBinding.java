package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletDashboardAccountBalanceBinding implements ViewBinding {
    private ForkRecycleItemWalletDashboardAccountBalanceBinding(FrameLayout frameLayout, CardView cardView, FrameLayout frameLayout2) {
    }

    public static ForkRecycleItemWalletDashboardAccountBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDashboardAccountBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_dashboard_account_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDashboardAccountBalanceBinding bind(View view) {
        int i = C3632R.C3635id.card_account_balance;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new ForkRecycleItemWalletDashboardAccountBalanceBinding(frameLayout, cardView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
