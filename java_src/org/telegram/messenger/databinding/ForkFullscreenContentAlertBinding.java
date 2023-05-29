package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFullscreenContentAlertBinding implements ViewBinding {
    public final ActionButton buttonAction;
    public final RLottieImageView imageAlertResult;
    private final LinearLayout rootView;
    public final AppCompatTextView textAlertDescription;
    public final AppCompatTextView textAlertTitle;

    private ForkFullscreenContentAlertBinding(LinearLayout linearLayout, ActionButton actionButton, RLottieImageView rLottieImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.buttonAction = actionButton;
        this.imageAlertResult = rLottieImageView;
        this.textAlertDescription = appCompatTextView;
        this.textAlertTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkFullscreenContentAlertBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFullscreenContentAlertBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3290R.layout.fork_fullscreen_content_alert, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFullscreenContentAlertBinding bind(View view) {
        int i = C3290R.C3293id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3290R.C3293id.image_alert_result;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = C3290R.C3293id.text_alert_description;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3290R.C3293id.text_alert_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new ForkFullscreenContentAlertBinding(linearLayout, actionButton, rLottieImageView, linearLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
