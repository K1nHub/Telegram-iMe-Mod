package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemCryptoboxStatusBinding implements ViewBinding {
    private ForkRecycleItemCryptoboxStatusBinding(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, TextView textView, DividerView dividerView) {
    }

    public static ForkRecycleItemCryptoboxStatusBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemCryptoboxStatusBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_cryptobox_status, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemCryptoboxStatusBinding bind(View view) {
        int i = C3630R.C3633id.image_check;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3630R.C3633id.text_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3630R.C3633id.view_divider;
                DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                if (dividerView != null) {
                    return new ForkRecycleItemCryptoboxStatusBinding((ConstraintLayout) view, appCompatImageView, textView, dividerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
