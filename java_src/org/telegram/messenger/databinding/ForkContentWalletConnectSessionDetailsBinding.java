package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.DetailsIconCellView;
import com.iMe.p031ui.custom.ImageHeaderView;
import org.telegram.messenger.C3242R;
/* loaded from: classes4.dex */
public final class ForkContentWalletConnectSessionDetailsBinding implements ViewBinding {
    public final BigActionButton buttonDisconnect;
    private final LinearLayoutCompat rootView;
    public final DetailsIconCellView viewAddressCell;
    public final DetailsIconCellView viewConnectedCell;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewNetworkCell;

    private ForkContentWalletConnectSessionDetailsBinding(LinearLayoutCompat linearLayoutCompat, BigActionButton bigActionButton, LinearLayoutCompat linearLayoutCompat2, DetailsIconCellView detailsIconCellView, DetailsIconCellView detailsIconCellView2, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView3) {
        this.rootView = linearLayoutCompat;
        this.buttonDisconnect = bigActionButton;
        this.viewAddressCell = detailsIconCellView;
        this.viewConnectedCell = detailsIconCellView2;
        this.viewHeader = imageHeaderView;
        this.viewNetworkCell = detailsIconCellView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletConnectSessionDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletConnectSessionDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3242R.layout.fork_content_wallet_connect_session_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletConnectSessionDetailsBinding bind(View view) {
        int i = C3242R.C3245id.button_disconnect;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            i = C3242R.C3245id.view_address_cell;
            DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
            if (detailsIconCellView != null) {
                i = C3242R.C3245id.view_connected_cell;
                DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                if (detailsIconCellView2 != null) {
                    i = C3242R.C3245id.view_header;
                    ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                    if (imageHeaderView != null) {
                        i = C3242R.C3245id.view_network_cell;
                        DetailsIconCellView detailsIconCellView3 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                        if (detailsIconCellView3 != null) {
                            return new ForkContentWalletConnectSessionDetailsBinding(linearLayoutCompat, bigActionButton, linearLayoutCompat, detailsIconCellView, detailsIconCellView2, imageHeaderView, detailsIconCellView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
