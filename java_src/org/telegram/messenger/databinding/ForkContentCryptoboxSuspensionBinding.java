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
/* loaded from: classes4.dex */
public final class ForkContentCryptoboxSuspensionBinding implements ViewBinding {
    public final ActionBarMenuItem buttonClose;
    public final BigActionButton buttonProcess;
    public final FeeView feeView;
    private final LinearLayout rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textTitle;

    private ForkContentCryptoboxSuspensionBinding(LinearLayout linearLayout, ActionBarMenuItem actionBarMenuItem, BigActionButton bigActionButton, FeeView feeView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.buttonClose = actionBarMenuItem;
        this.buttonProcess = bigActionButton;
        this.feeView = feeView;
        this.textDescription = appCompatTextView;
        this.textTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentCryptoboxSuspensionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentCryptoboxSuspensionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_cryptobox_suspension, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentCryptoboxSuspensionBinding bind(View view) {
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
                    i = C3558R.C3561id.text_description;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = C3558R.C3561id.text_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView2 != null) {
                            return new ForkContentCryptoboxSuspensionBinding(linearLayout, actionBarMenuItem, bigActionButton, feeView, linearLayout, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
