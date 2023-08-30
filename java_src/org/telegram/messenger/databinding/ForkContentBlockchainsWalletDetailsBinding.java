package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.DetailsIconCellView;
import com.iMe.p031ui.custom.ImageHeaderView;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentBlockchainsWalletDetailsBinding implements ViewBinding {
    public final BigActionButton buttonBackup;
    public final BigActionButton buttonReset;
    public final ActionBarMenuItem itemMoreOptions;
    private final FrameLayout rootView;
    public final DetailsIconCellView viewAddressCell;
    public final DetailsIconCellView viewConnectedCell;
    public final ImageHeaderView viewHeader;

    private ForkContentBlockchainsWalletDetailsBinding(FrameLayout frameLayout, BigActionButton bigActionButton, BigActionButton bigActionButton2, FrameLayout frameLayout2, ActionBarMenuItem actionBarMenuItem, DetailsIconCellView detailsIconCellView, DetailsIconCellView detailsIconCellView2, ImageHeaderView imageHeaderView) {
        this.rootView = frameLayout;
        this.buttonBackup = bigActionButton;
        this.buttonReset = bigActionButton2;
        this.itemMoreOptions = actionBarMenuItem;
        this.viewAddressCell = detailsIconCellView;
        this.viewConnectedCell = detailsIconCellView2;
        this.viewHeader = imageHeaderView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentBlockchainsWalletDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentBlockchainsWalletDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_blockchains_wallet_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentBlockchainsWalletDetailsBinding bind(View view) {
        int i = C3558R.C3561id.button_backup;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3558R.C3561id.button_reset;
            BigActionButton bigActionButton2 = (BigActionButton) ViewBindings.findChildViewById(view, i);
            if (bigActionButton2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i = C3558R.C3561id.item_more_options;
                ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                if (actionBarMenuItem != null) {
                    i = C3558R.C3561id.view_address_cell;
                    DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                    if (detailsIconCellView != null) {
                        i = C3558R.C3561id.view_connected_cell;
                        DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                        if (detailsIconCellView2 != null) {
                            i = C3558R.C3561id.view_header;
                            ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                            if (imageHeaderView != null) {
                                return new ForkContentBlockchainsWalletDetailsBinding(frameLayout, bigActionButton, bigActionButton2, frameLayout, actionBarMenuItem, detailsIconCellView, detailsIconCellView2, imageHeaderView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
