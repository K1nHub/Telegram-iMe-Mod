package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Cells.TextDetailCell;
/* loaded from: classes4.dex */
public final class ForkContentWalletConnectMessageSignBinding implements ViewBinding {
    public final ActionBarMenuItem buttonClose;
    public final BigActionButton buttonProcess;
    private final NestedScrollView rootView;
    public final TextDetailCell textFrom;
    public final AppCompatTextView textMessage;
    public final TextDetailCell textPeerUrl;
    public final AppCompatTextView textTitle;

    private ForkContentWalletConnectMessageSignBinding(NestedScrollView nestedScrollView, ActionBarMenuItem actionBarMenuItem, BigActionButton bigActionButton, TextDetailCell textDetailCell, AppCompatTextView appCompatTextView, TextDetailCell textDetailCell2, AppCompatTextView appCompatTextView2) {
        this.rootView = nestedScrollView;
        this.buttonClose = actionBarMenuItem;
        this.buttonProcess = bigActionButton;
        this.textFrom = textDetailCell;
        this.textMessage = appCompatTextView;
        this.textPeerUrl = textDetailCell2;
        this.textTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletConnectMessageSignBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletConnectMessageSignBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_wallet_connect_message_sign, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletConnectMessageSignBinding bind(View view) {
        int i = C3558R.C3561id.button_close;
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
        if (actionBarMenuItem != null) {
            i = C3558R.C3561id.button_process;
            BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
            if (bigActionButton != null) {
                i = C3558R.C3561id.text_from;
                TextDetailCell textDetailCell = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                if (textDetailCell != null) {
                    i = C3558R.C3561id.text_message;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = C3558R.C3561id.text_peer_url;
                        TextDetailCell textDetailCell2 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                        if (textDetailCell2 != null) {
                            i = C3558R.C3561id.text_title;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView2 != null) {
                                return new ForkContentWalletConnectMessageSignBinding((NestedScrollView) view, actionBarMenuItem, bigActionButton, textDetailCell, appCompatTextView, textDetailCell2, appCompatTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
