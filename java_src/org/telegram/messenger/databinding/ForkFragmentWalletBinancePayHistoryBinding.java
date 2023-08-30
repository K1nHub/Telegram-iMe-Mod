package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletBinancePayHistoryBinding implements ViewBinding {
    public final GlobalStateLayout globalStateLayout;
    public final RecyclerView recycleHistory;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentWalletBinancePayHistoryBinding(SwipeRefreshLayout swipeRefreshLayout, GlobalStateLayout globalStateLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.globalStateLayout = globalStateLayout;
        this.recycleHistory = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletBinancePayHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletBinancePayHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_fragment_wallet_binance_pay_history, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletBinancePayHistoryBinding bind(View view) {
        int i = C3558R.C3561id.global_state_layout;
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) ViewBindings.findChildViewById(view, i);
        if (globalStateLayout != null) {
            i = C3558R.C3561id.recycle_history;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                return new ForkFragmentWalletBinancePayHistoryBinding((SwipeRefreshLayout) view, globalStateLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
