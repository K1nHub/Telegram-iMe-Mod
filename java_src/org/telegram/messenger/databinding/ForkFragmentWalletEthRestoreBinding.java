package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.backup.SecretWordsActionButton;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthRestoreBinding implements ViewBinding {
    private final ConstraintLayout rootView;

    private ForkFragmentWalletEthRestoreBinding(ConstraintLayout constraintLayout, ActionButton actionButton, SecretWordsActionButton secretWordsActionButton, CardView cardView, AppCompatEditText appCompatEditText, FrameLayout frameLayout, LinearLayout linearLayout, AppCompatTextView appCompatTextView, View view) {
        this.rootView = constraintLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthRestoreBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthRestoreBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_wallet_eth_restore, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthRestoreBinding bind(View view) {
        View findChildViewById;
        int i = C3419R.C3422id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3419R.C3422id.button_scan_qr;
            SecretWordsActionButton secretWordsActionButton = (SecretWordsActionButton) ViewBindings.findChildViewById(view, i);
            if (secretWordsActionButton != null) {
                i = C3419R.C3422id.card_seed;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
                if (cardView != null) {
                    i = C3419R.C3422id.edit_seed;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                    if (appCompatEditText != null) {
                        i = C3419R.C3422id.frame_half_bg;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout != null) {
                            i = C3419R.C3422id.linear_input_wrapper;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = C3419R.C3422id.text_title;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3419R.C3422id.view_tag))) != null) {
                                    return new ForkFragmentWalletEthRestoreBinding((ConstraintLayout) view, actionButton, secretWordsActionButton, cardView, appCompatEditText, frameLayout, linearLayout, appCompatTextView, findChildViewById);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
