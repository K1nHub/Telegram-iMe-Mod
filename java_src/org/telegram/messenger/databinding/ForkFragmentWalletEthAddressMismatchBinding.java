package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.smedialink.p031ui.custom.ActionButton;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthAddressMismatchBinding implements ViewBinding {
    public final ActionButton buttonBackup;
    public final AppCompatButton buttonDelete;
    public final RLottieImageView imageLogo;
    private final RelativeLayout rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textTitle;

    private ForkFragmentWalletEthAddressMismatchBinding(RelativeLayout relativeLayout, ActionButton actionButton, AppCompatButton appCompatButton, RLottieImageView rLottieImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = relativeLayout;
        this.buttonBackup = actionButton;
        this.buttonDelete = appCompatButton;
        this.imageLogo = rLottieImageView;
        this.textDescription = appCompatTextView;
        this.textTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthAddressMismatchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthAddressMismatchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3301R.layout.fork_fragment_wallet_eth_address_mismatch, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthAddressMismatchBinding bind(View view) {
        int i = C3301R.C3304id.button_backup;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3301R.C3304id.button_delete;
            AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
            if (appCompatButton != null) {
                i = C3301R.C3304id.image_logo;
                RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                if (rLottieImageView != null) {
                    i = C3301R.C3304id.text_description;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = C3301R.C3304id.text_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView2 != null) {
                            return new ForkFragmentWalletEthAddressMismatchBinding((RelativeLayout) view, actionButton, appCompatButton, rLottieImageView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
