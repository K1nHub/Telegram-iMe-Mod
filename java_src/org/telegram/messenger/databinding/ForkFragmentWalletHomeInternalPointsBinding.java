package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.SlopSwipeRefreshLayout;
import org.telegram.messenger.C3473R;
/* loaded from: classes6.dex */
public final class ForkFragmentWalletHomeInternalPointsBinding implements ViewBinding {
    private final SlopSwipeRefreshLayout rootView;

    private ForkFragmentWalletHomeInternalPointsBinding(SlopSwipeRefreshLayout slopSwipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = slopSwipeRefreshLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SlopSwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletHomeInternalPointsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletHomeInternalPointsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_fragment_wallet_home_internal_points, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletHomeInternalPointsBinding bind(View view) {
        int i = C3473R.C3476id.recycle_wallet_home_services_dashboard;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletHomeInternalPointsBinding((SlopSwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
