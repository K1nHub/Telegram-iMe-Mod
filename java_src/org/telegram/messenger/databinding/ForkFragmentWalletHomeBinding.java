package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.fork.p046ui.view.TabbedViewPager;
import org.telegram.messenger.C3301R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletHomeBinding implements ViewBinding {
    private final TabbedViewPager rootView;
    public final TabbedViewPager walletHomeViewPager;

    private ForkFragmentWalletHomeBinding(TabbedViewPager tabbedViewPager, TabbedViewPager tabbedViewPager2) {
        this.rootView = tabbedViewPager;
        this.walletHomeViewPager = tabbedViewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TabbedViewPager getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletHomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3301R.layout.fork_fragment_wallet_home, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletHomeBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TabbedViewPager tabbedViewPager = (TabbedViewPager) view;
        return new ForkFragmentWalletHomeBinding(tabbedViewPager, tabbedViewPager);
    }
}
