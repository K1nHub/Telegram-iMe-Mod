package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.Components.CheckBoxSquare;
/* loaded from: classes4.dex */
public final class ForkContentStakingSafeWithdrawalBinding implements ViewBinding {
    public final CheckBoxSquare checkboxSafeWithdrawal;
    public final AppCompatImageView imageHelp;
    public final LinearLayoutCompat linearSafeWithdrawal;
    private final LinearLayoutCompat rootView;
    public final AppCompatTextView textSafeWithdrawal;

    private ForkContentStakingSafeWithdrawalBinding(LinearLayoutCompat linearLayoutCompat, CheckBoxSquare checkBoxSquare, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat2, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayoutCompat;
        this.checkboxSafeWithdrawal = checkBoxSquare;
        this.imageHelp = appCompatImageView;
        this.linearSafeWithdrawal = linearLayoutCompat2;
        this.textSafeWithdrawal = appCompatTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingSafeWithdrawalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingSafeWithdrawalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_content_staking_safe_withdrawal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingSafeWithdrawalBinding bind(View view) {
        int i = C3419R.C3422id.checkbox_safe_withdrawal;
        CheckBoxSquare checkBoxSquare = (CheckBoxSquare) ViewBindings.findChildViewById(view, i);
        if (checkBoxSquare != null) {
            i = C3419R.C3422id.image_help;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3419R.C3422id.linear_safe_withdrawal;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                if (linearLayoutCompat != null) {
                    i = C3419R.C3422id.text_safe_withdrawal;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        return new ForkContentStakingSafeWithdrawalBinding((LinearLayoutCompat) view, checkBoxSquare, appCompatImageView, linearLayoutCompat, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
