package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.FeeView;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Cells.TextDetailCell;
/* loaded from: classes4.dex */
public final class ForkContentWalletConnectTransactionBinding implements ViewBinding {
    public final ActionBarMenuItem buttonClose;
    public final BigActionButton buttonProcess;
    public final FeeView feeView;
    private final LinearLayout rootView;
    public final TextDetailCell textFrom;
    public final TextDetailCell textNetwork;
    public final TextDetailCell textPeerUrl;
    public final AppCompatTextView textTitle;
    public final TextDetailCell textTo;
    public final AppCompatTextView textTransactionAmount;

    private ForkContentWalletConnectTransactionBinding(LinearLayout linearLayout, ActionBarMenuItem actionBarMenuItem, BigActionButton bigActionButton, FeeView feeView, LinearLayout linearLayout2, TextDetailCell textDetailCell, TextDetailCell textDetailCell2, TextDetailCell textDetailCell3, AppCompatTextView appCompatTextView, TextDetailCell textDetailCell4, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.buttonClose = actionBarMenuItem;
        this.buttonProcess = bigActionButton;
        this.feeView = feeView;
        this.textFrom = textDetailCell;
        this.textNetwork = textDetailCell2;
        this.textPeerUrl = textDetailCell3;
        this.textTitle = appCompatTextView;
        this.textTo = textDetailCell4;
        this.textTransactionAmount = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletConnectTransactionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletConnectTransactionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_wallet_connect_transaction, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletConnectTransactionBinding bind(View view) {
        int i = C3558R.C3561id.button_close;
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
        if (actionBarMenuItem != null) {
            i = C3558R.C3561id.button_process;
            BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
            if (bigActionButton != null) {
                i = C3558R.C3561id.fee_view;
                FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                if (feeView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = C3558R.C3561id.text_from;
                    TextDetailCell textDetailCell = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                    if (textDetailCell != null) {
                        i = C3558R.C3561id.text_network;
                        TextDetailCell textDetailCell2 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                        if (textDetailCell2 != null) {
                            i = C3558R.C3561id.text_peer_url;
                            TextDetailCell textDetailCell3 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                            if (textDetailCell3 != null) {
                                i = C3558R.C3561id.text_title;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3558R.C3561id.text_to;
                                    TextDetailCell textDetailCell4 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                    if (textDetailCell4 != null) {
                                        i = C3558R.C3561id.text_transaction_amount;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView2 != null) {
                                            return new ForkContentWalletConnectTransactionBinding(linearLayout, actionBarMenuItem, bigActionButton, feeView, linearLayout, textDetailCell, textDetailCell2, textDetailCell3, appCompatTextView, textDetailCell4, appCompatTextView2);
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
