package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentCryptoboxesBinding implements ViewBinding {
    public final RecyclerView recycleCryptoboxes;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentCryptoboxesBinding(SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.recycleCryptoboxes = recyclerView;
    }

    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCryptoboxesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCryptoboxesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_cryptoboxes, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCryptoboxesBinding bind(View view) {
        int i = C3632R.C3635id.recycle_cryptoboxes;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentCryptoboxesBinding((SwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
