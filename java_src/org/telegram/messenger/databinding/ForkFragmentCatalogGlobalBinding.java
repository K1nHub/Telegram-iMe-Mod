package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fxn.BubbleTabBar;
import com.github.mmin18.widget.RealtimeBlurView;
import org.telegram.messenger.C3301R;
/* loaded from: classes4.dex */
public final class ForkFragmentCatalogGlobalBinding implements ViewBinding {
    public final BubbleTabBar bottomNavigationCatalog;
    public final CardView cardBottomNavigationWrapper;
    public final FrameLayout frameFragmentContainer;
    public final RealtimeBlurView realtimeBlur;
    private final ConstraintLayout rootView;

    private ForkFragmentCatalogGlobalBinding(ConstraintLayout constraintLayout, BubbleTabBar bubbleTabBar, CardView cardView, FrameLayout frameLayout, RealtimeBlurView realtimeBlurView) {
        this.rootView = constraintLayout;
        this.bottomNavigationCatalog = bubbleTabBar;
        this.cardBottomNavigationWrapper = cardView;
        this.frameFragmentContainer = frameLayout;
        this.realtimeBlur = realtimeBlurView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCatalogGlobalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCatalogGlobalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3301R.layout.fork_fragment_catalog_global, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCatalogGlobalBinding bind(View view) {
        int i = C3301R.C3304id.bottom_navigation_catalog;
        BubbleTabBar bubbleTabBar = (BubbleTabBar) ViewBindings.findChildViewById(view, i);
        if (bubbleTabBar != null) {
            i = C3301R.C3304id.card_bottom_navigation_wrapper;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
            if (cardView != null) {
                i = C3301R.C3304id.frame_fragment_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = C3301R.C3304id.realtime_blur;
                    RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.findChildViewById(view, i);
                    if (realtimeBlurView != null) {
                        return new ForkFragmentCatalogGlobalBinding((ConstraintLayout) view, bubbleTabBar, cardView, frameLayout, realtimeBlurView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
