package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkItemAdapterWalletEthTutorialBinding implements ViewBinding {
    public final RLottieImageView imageLogo;
    private final LinearLayout rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textTitle;

    private ForkItemAdapterWalletEthTutorialBinding(LinearLayout linearLayout, RLottieImageView rLottieImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.imageLogo = rLottieImageView;
        this.textDescription = appCompatTextView;
        this.textTitle = appCompatTextView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkItemAdapterWalletEthTutorialBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkItemAdapterWalletEthTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_item_adapter_wallet_eth_tutorial, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkItemAdapterWalletEthTutorialBinding bind(View view) {
        int i = C3630R.C3633id.image_logo;
        RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
        if (rLottieImageView != null) {
            i = C3630R.C3633id.text_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3630R.C3633id.text_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    return new ForkItemAdapterWalletEthTutorialBinding((LinearLayout) view, rLottieImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
