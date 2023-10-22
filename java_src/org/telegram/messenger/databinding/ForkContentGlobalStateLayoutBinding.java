package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkContentGlobalStateLayoutBinding implements ViewBinding {
    private ForkContentGlobalStateLayoutBinding(NestedScrollView nestedScrollView, AppCompatButton appCompatButton, RLottieImageView rLottieImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
    }

    public static ForkContentGlobalStateLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentGlobalStateLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_content_global_state_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentGlobalStateLayoutBinding bind(View view) {
        int i = C3630R.C3633id.button_retry;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
        if (appCompatButton != null) {
            i = C3630R.C3633id.image_state_animation;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                i = C3630R.C3633id.text_state_description;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3630R.C3633id.text_state_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new ForkContentGlobalStateLayoutBinding((NestedScrollView) view, appCompatButton, rLottieImageView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
