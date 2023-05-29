package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3295R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletNotificationsBinding implements ViewBinding {
    public final GlobalStateLayout globalStateLayout;
    public final RecyclerView recycleNotifications;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentWalletNotificationsBinding(SwipeRefreshLayout swipeRefreshLayout, GlobalStateLayout globalStateLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.globalStateLayout = globalStateLayout;
        this.recycleNotifications = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletNotificationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletNotificationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3295R.layout.fork_fragment_wallet_notifications, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletNotificationsBinding bind(View view) {
        int i = C3295R.C3298id.global_state_layout;
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) ViewBindings.findChildViewById(view, i);
        if (globalStateLayout != null) {
            i = C3295R.C3298id.recycle_notifications;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                return new ForkFragmentWalletNotificationsBinding((SwipeRefreshLayout) view, globalStateLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
