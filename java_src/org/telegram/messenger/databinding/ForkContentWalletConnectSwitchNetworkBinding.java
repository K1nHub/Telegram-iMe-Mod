package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentWalletConnectSwitchNetworkBinding implements ViewBinding {
    public final BigActionButton buttonChangeNetwork;
    public final ActionBarMenuItem buttonClose;
    private final ConstraintLayout rootView;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewNetworkCell;

    private ForkContentWalletConnectSwitchNetworkBinding(ConstraintLayout constraintLayout, BigActionButton bigActionButton, ActionBarMenuItem actionBarMenuItem, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView) {
        this.rootView = constraintLayout;
        this.buttonChangeNetwork = bigActionButton;
        this.buttonClose = actionBarMenuItem;
        this.viewHeader = imageHeaderView;
        this.viewNetworkCell = detailsIconCellView;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletConnectSwitchNetworkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletConnectSwitchNetworkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_wallet_connect_switch_network, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletConnectSwitchNetworkBinding bind(View view) {
        int i = C3632R.C3635id.button_change_network;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3632R.C3635id.button_close;
            ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
            if (actionBarMenuItem != null) {
                i = C3632R.C3635id.view_header;
                ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                if (imageHeaderView != null) {
                    i = C3632R.C3635id.view_network_cell;
                    DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                    if (detailsIconCellView != null) {
                        return new ForkContentWalletConnectSwitchNetworkBinding((ConstraintLayout) view, bigActionButton, actionBarMenuItem, imageHeaderView, detailsIconCellView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
