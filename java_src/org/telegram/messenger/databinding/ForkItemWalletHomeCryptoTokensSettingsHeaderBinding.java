package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.NetworkTypeView;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.Components.CheckBoxSquare;
/* loaded from: classes6.dex */
public final class ForkItemWalletHomeCryptoTokensSettingsHeaderBinding implements ViewBinding {
    private final FrameLayout rootView;

    private ForkItemWalletHomeCryptoTokensSettingsHeaderBinding(FrameLayout frameLayout, NetworkTypeView networkTypeView, FrameLayout frameLayout2, CheckBoxSquare checkBoxSquare, LinearLayout linearLayout, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkItemWalletHomeCryptoTokensSettingsHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkItemWalletHomeCryptoTokensSettingsHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_item_wallet_home_crypto_tokens_settings_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkItemWalletHomeCryptoTokensSettingsHeaderBinding bind(View view) {
        int i = C3473R.C3476id.network_type_view;
        NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
        if (networkTypeView != null) {
            i = C3473R.C3476id.network_type_view_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = C3473R.C3476id.only_positive_checkbox;
                CheckBoxSquare checkBoxSquare = (CheckBoxSquare) ViewBindings.findChildViewById(view, i);
                if (checkBoxSquare != null) {
                    i = C3473R.C3476id.only_positive_checkbox_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3473R.C3476id.only_positive_checkbox_text;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView != null) {
                            return new ForkItemWalletHomeCryptoTokensSettingsHeaderBinding((FrameLayout) view, networkTypeView, frameLayout, checkBoxSquare, linearLayout, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
