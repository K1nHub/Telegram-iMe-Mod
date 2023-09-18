package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* loaded from: classes6.dex */
public final class ForkFragmentWalletEthEnterPasswordBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkFragmentWalletEthEnterPasswordBinding(LinearLayout linearLayout, EditTextBoldCursor editTextBoldCursor, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthEnterPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthEnterPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_fragment_wallet_eth_enter_password, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthEnterPasswordBinding bind(View view) {
        int i = C3473R.C3476id.edit_password;
        EditTextBoldCursor editTextBoldCursor = (EditTextBoldCursor) ViewBindings.findChildViewById(view, i);
        if (editTextBoldCursor != null) {
            i = C3473R.C3476id.text_forgot_password;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3473R.C3476id.text_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    return new ForkFragmentWalletEthEnterPasswordBinding((LinearLayout) view, editTextBoldCursor, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
