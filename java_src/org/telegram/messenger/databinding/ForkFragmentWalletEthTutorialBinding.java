package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.WrapContentViewPager;
import com.tbuonomo.viewpagerdotsindicator.DotsIndicator;
import org.telegram.messenger.C3290R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthTutorialBinding implements ViewBinding {
    public final ActionButton buttonAction;
    public final DotsIndicator dotsIndicatorTutorial;
    private final RelativeLayout rootView;
    public final WrapContentViewPager viewPagerTutorial;

    private ForkFragmentWalletEthTutorialBinding(RelativeLayout relativeLayout, ActionButton actionButton, DotsIndicator dotsIndicator, WrapContentViewPager wrapContentViewPager) {
        this.rootView = relativeLayout;
        this.buttonAction = actionButton;
        this.dotsIndicatorTutorial = dotsIndicator;
        this.viewPagerTutorial = wrapContentViewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthTutorialBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3290R.layout.fork_fragment_wallet_eth_tutorial, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthTutorialBinding bind(View view) {
        int i = C3290R.C3293id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3290R.C3293id.dots_indicator_tutorial;
            DotsIndicator dotsIndicator = (DotsIndicator) ViewBindings.findChildViewById(view, i);
            if (dotsIndicator != null) {
                i = C3290R.C3293id.view_pager_tutorial;
                WrapContentViewPager wrapContentViewPager = (WrapContentViewPager) ViewBindings.findChildViewById(view, i);
                if (wrapContentViewPager != null) {
                    return new ForkFragmentWalletEthTutorialBinding((RelativeLayout) view, actionButton, dotsIndicator, wrapContentViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
