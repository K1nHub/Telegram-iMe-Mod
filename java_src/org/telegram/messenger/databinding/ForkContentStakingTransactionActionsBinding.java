package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import org.telegram.messenger.C3290R;
/* loaded from: classes4.dex */
public final class ForkContentStakingTransactionActionsBinding implements ViewBinding {
    public final BigActionButton buttonAction;
    public final AppCompatTextView buttonApproveInfo;
    public final AppCompatTextView buttonConditions;
    private final LinearLayoutCompat rootView;

    private ForkContentStakingTransactionActionsBinding(LinearLayoutCompat linearLayoutCompat, BigActionButton bigActionButton, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayoutCompat;
        this.buttonAction = bigActionButton;
        this.buttonApproveInfo = appCompatTextView;
        this.buttonConditions = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingTransactionActionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingTransactionActionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3290R.layout.fork_content_staking_transaction_actions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingTransactionActionsBinding bind(View view) {
        int i = C3290R.C3293id.button_action;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3290R.C3293id.button_approve_info;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3290R.C3293id.button_conditions;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    return new ForkContentStakingTransactionActionsBinding((LinearLayoutCompat) view, bigActionButton, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
