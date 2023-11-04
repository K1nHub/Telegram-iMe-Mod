package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletNotificationBinding implements ViewBinding {
    private ForkRecycleItemWalletNotificationBinding(LinearLayout linearLayout, DividerView dividerView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view) {
    }

    public static ForkRecycleItemWalletNotificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletNotificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_wallet_notification, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletNotificationBinding bind(View view) {
        View findChildViewById;
        int i = C3634R.C3637id.divider;
        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
        if (dividerView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = C3634R.C3637id.text_notification_category;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3634R.C3637id.text_notification_date;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3634R.C3637id.text_notification_message;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3634R.C3637id.view_read_mark))) != null) {
                        return new ForkRecycleItemWalletNotificationBinding(linearLayout, dividerView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
