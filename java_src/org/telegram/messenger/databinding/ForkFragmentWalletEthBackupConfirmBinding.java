package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.backup.ConfirmSeedView;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthBackupConfirmBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private ForkFragmentWalletEthBackupConfirmBinding(RelativeLayout relativeLayout, ActionButton actionButton, ConfirmSeedView confirmSeedView) {
        this.rootView = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthBackupConfirmBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthBackupConfirmBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_fragment_wallet_eth_backup_confirm, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthBackupConfirmBinding bind(View view) {
        int i = C3558R.C3561id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3558R.C3561id.confirm_seed_view;
            ConfirmSeedView confirmSeedView = (ConfirmSeedView) ViewBindings.findChildViewById(view, i);
            if (confirmSeedView != null) {
                return new ForkFragmentWalletEthBackupConfirmBinding((RelativeLayout) view, actionButton, confirmSeedView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
