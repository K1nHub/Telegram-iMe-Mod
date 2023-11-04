package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentWalletConnectNewSessionBinding implements ViewBinding {
    public final ActionBarMenuItem buttonClose;
    public final BigActionButton buttonConnect;
    public final AppCompatImageView imageTransactionsApproval;
    public final AppCompatImageView imageViewBalance;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textTransactionsApproval;
    public final AppCompatTextView textViewBalance;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewNetworkCell;
    public final DetailsIconCellView viewWalletCell;

    private ForkContentWalletConnectNewSessionBinding(ConstraintLayout constraintLayout, ActionBarMenuItem actionBarMenuItem, BigActionButton bigActionButton, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView, DetailsIconCellView detailsIconCellView2) {
        this.rootView = constraintLayout;
        this.buttonClose = actionBarMenuItem;
        this.buttonConnect = bigActionButton;
        this.imageTransactionsApproval = appCompatImageView;
        this.imageViewBalance = appCompatImageView2;
        this.textTransactionsApproval = appCompatTextView;
        this.textViewBalance = appCompatTextView2;
        this.viewHeader = imageHeaderView;
        this.viewNetworkCell = detailsIconCellView;
        this.viewWalletCell = detailsIconCellView2;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletConnectNewSessionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletConnectNewSessionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_wallet_connect_new_session, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletConnectNewSessionBinding bind(View view) {
        int i = C3634R.C3637id.button_close;
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
        if (actionBarMenuItem != null) {
            i = C3634R.C3637id.button_connect;
            BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
            if (bigActionButton != null) {
                i = C3634R.C3637id.image_transactions_approval;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView != null) {
                    i = C3634R.C3637id.image_view_balance;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView2 != null) {
                        i = C3634R.C3637id.text_transactions_approval;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView != null) {
                            i = C3634R.C3637id.text_view_balance;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView2 != null) {
                                i = C3634R.C3637id.view_header;
                                ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                                if (imageHeaderView != null) {
                                    i = C3634R.C3637id.view_network_cell;
                                    DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                    if (detailsIconCellView != null) {
                                        i = C3634R.C3637id.view_wallet_cell;
                                        DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                        if (detailsIconCellView2 != null) {
                                            return new ForkContentWalletConnectNewSessionBinding((ConstraintLayout) view, actionBarMenuItem, bigActionButton, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, imageHeaderView, detailsIconCellView, detailsIconCellView2);
                                        }
                                    }
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
