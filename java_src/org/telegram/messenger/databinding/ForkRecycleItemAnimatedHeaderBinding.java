package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkRecycleItemAnimatedHeaderBinding implements ViewBinding {
    private ForkRecycleItemAnimatedHeaderBinding(LinearLayout linearLayout, FrameLayout frameLayout, RLottieImageView rLottieImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
    }

    public static ForkRecycleItemAnimatedHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemAnimatedHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_animated_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemAnimatedHeaderBinding bind(View view) {
        int i = C3630R.C3633id.button_action;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3630R.C3633id.image_header;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = C3630R.C3633id.text_action;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3630R.C3633id.text_description;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new ForkRecycleItemAnimatedHeaderBinding(linearLayout, frameLayout, rLottieImageView, linearLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
