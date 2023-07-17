package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthCreatePasswordBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkFragmentWalletEthCreatePasswordBinding(LinearLayout linearLayout, EditTextBoldCursor editTextBoldCursor, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthCreatePasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthCreatePasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_fragment_wallet_eth_create_password, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthCreatePasswordBinding bind(View view) {
        int i = C3417R.C3420id.edit_password;
        EditTextBoldCursor editTextBoldCursor = (EditTextBoldCursor) ViewBindings.findChildViewById(view, i);
        if (editTextBoldCursor != null) {
            i = C3417R.C3420id.text_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3417R.C3420id.text_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3417R.C3420id.text_validation_error;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null) {
                        return new ForkFragmentWalletEthCreatePasswordBinding((LinearLayout) view, editTextBoldCursor, appCompatTextView, appCompatTextView2, appCompatTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
