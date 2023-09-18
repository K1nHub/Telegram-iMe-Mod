package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.backup.SeedListView;
import org.telegram.messenger.C3473R;
/* loaded from: classes6.dex */
public final class ForkFragmentWalletEthBackupBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private ForkFragmentWalletEthBackupBinding(RelativeLayout relativeLayout, ActionButton actionButton, SeedListView seedListView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthBackupBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthBackupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_fragment_wallet_eth_backup, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthBackupBinding bind(View view) {
        int i = C3473R.C3476id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3473R.C3476id.seed_list;
            SeedListView seedListView = (SeedListView) ViewBindings.findChildViewById(view, i);
            if (seedListView != null) {
                i = C3473R.C3476id.text_copy_info;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3473R.C3476id.text_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new ForkFragmentWalletEthBackupBinding((RelativeLayout) view, actionButton, seedListView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
