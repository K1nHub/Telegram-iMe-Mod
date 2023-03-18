package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.smedialink.p031ui.custom.SlopSwipeRefreshLayout;
import org.telegram.messenger.C3286R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletHomeBinancePayBinding implements ViewBinding {
    public final RecyclerView recycleWalletHomeBinancePayDashboard;
    private final SlopSwipeRefreshLayout rootView;

    private ForkFragmentWalletHomeBinancePayBinding(SlopSwipeRefreshLayout slopSwipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = slopSwipeRefreshLayout;
        this.recycleWalletHomeBinancePayDashboard = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SlopSwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletHomeBinancePayBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletHomeBinancePayBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_fragment_wallet_home_binance_pay, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletHomeBinancePayBinding bind(View view) {
        int i = C3286R.C3289id.recycle_wallet_home_binance_pay_dashboard;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletHomeBinancePayBinding((SlopSwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
