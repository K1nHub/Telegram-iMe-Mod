package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletTransactionsBinding implements ViewBinding {
    public final RecyclerView recycleTransactions;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentWalletTransactionsBinding(SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.recycleTransactions = recyclerView;
    }

    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletTransactionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletTransactionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_fragment_wallet_transactions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletTransactionsBinding bind(View view) {
        int i = C3630R.C3633id.recycle_transactions;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletTransactionsBinding((SwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
