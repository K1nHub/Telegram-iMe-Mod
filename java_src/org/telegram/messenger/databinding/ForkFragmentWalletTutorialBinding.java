package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.ActionButton;
import com.iMe.p030ui.custom.WrapContentViewPager;
import com.tbuonomo.viewpagerdotsindicator.DotsIndicator;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletTutorialBinding implements ViewBinding {
    public final ActionButton buttonAction;
    public final DotsIndicator dotsIndicatorTutorial;
    private final NestedScrollView rootView;
    public final WrapContentViewPager viewPagerTutorial;

    private ForkFragmentWalletTutorialBinding(NestedScrollView nestedScrollView, ActionButton actionButton, DotsIndicator dotsIndicator, WrapContentViewPager wrapContentViewPager) {
        this.rootView = nestedScrollView;
        this.buttonAction = actionButton;
        this.dotsIndicatorTutorial = dotsIndicator;
        this.viewPagerTutorial = wrapContentViewPager;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletTutorialBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_wallet_tutorial, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletTutorialBinding bind(View view) {
        int i = C3632R.C3635id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3632R.C3635id.dots_indicator_tutorial;
            DotsIndicator dotsIndicator = (DotsIndicator) ViewBindings.findChildViewById(view, i);
            if (dotsIndicator != null) {
                i = C3632R.C3635id.view_pager_tutorial;
                WrapContentViewPager wrapContentViewPager = (WrapContentViewPager) ViewBindings.findChildViewById(view, i);
                if (wrapContentViewPager != null) {
                    return new ForkFragmentWalletTutorialBinding((NestedScrollView) view, actionButton, dotsIndicator, wrapContentViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
