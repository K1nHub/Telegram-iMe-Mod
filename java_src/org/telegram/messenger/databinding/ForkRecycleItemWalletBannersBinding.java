package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3419R;
import ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletBannersBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkRecycleItemWalletBannersBinding(LinearLayout linearLayout, ScrollingPagerIndicator scrollingPagerIndicator, RecyclerView recyclerView) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletBannersBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletBannersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_recycle_item_wallet_banners, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletBannersBinding bind(View view) {
        int i = C3419R.C3422id.banner_slide_indicator;
        ScrollingPagerIndicator scrollingPagerIndicator = (ScrollingPagerIndicator) ViewBindings.findChildViewById(view, i);
        if (scrollingPagerIndicator != null) {
            i = C3419R.C3422id.recycle_banners;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                return new ForkRecycleItemWalletBannersBinding((LinearLayout) view, scrollingPagerIndicator, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
