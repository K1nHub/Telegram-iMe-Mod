package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletActionBinding implements ViewBinding {
    private ForkRecycleItemWalletActionBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemWalletActionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletActionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_action, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletActionBinding bind(View view) {
        int i = C3632R.C3635id.image_action;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i2 = C3632R.C3635id.text_action;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i2);
            if (appCompatTextView != null) {
                return new ForkRecycleItemWalletActionBinding(linearLayout, appCompatImageView, linearLayout, appCompatTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
