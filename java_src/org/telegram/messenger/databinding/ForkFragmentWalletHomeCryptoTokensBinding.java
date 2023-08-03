package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletHomeCryptoTokensBinding implements ViewBinding {
    public final RecyclerView recycleMain;
    public final RecyclerView recycleTokensSearch;
    private final FrameLayout rootView;

    private ForkFragmentWalletHomeCryptoTokensBinding(FrameLayout frameLayout, RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = frameLayout;
        this.recycleMain = recyclerView;
        this.recycleTokensSearch = recyclerView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletHomeCryptoTokensBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletHomeCryptoTokensBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_wallet_home_crypto_tokens, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletHomeCryptoTokensBinding bind(View view) {
        int i = C3419R.C3422id.recycle_main;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            i = C3419R.C3422id.recycle_tokens_search;
            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView2 != null) {
                return new ForkFragmentWalletHomeCryptoTokensBinding((FrameLayout) view, recyclerView, recyclerView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
