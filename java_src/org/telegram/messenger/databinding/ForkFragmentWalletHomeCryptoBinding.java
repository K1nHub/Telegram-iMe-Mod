package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.SlopSwipeRefreshLayout;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletHomeCryptoBinding implements ViewBinding {
    public final RecyclerView recycleWalletHomeCryptoDashboard;
    private final SlopSwipeRefreshLayout rootView;

    private ForkFragmentWalletHomeCryptoBinding(SlopSwipeRefreshLayout slopSwipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = slopSwipeRefreshLayout;
        this.recycleWalletHomeCryptoDashboard = recyclerView;
    }

    public SlopSwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletHomeCryptoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletHomeCryptoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_wallet_home_crypto, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletHomeCryptoBinding bind(View view) {
        int i = C3632R.C3635id.recycle_wallet_home_crypto_dashboard;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletHomeCryptoBinding((SlopSwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
