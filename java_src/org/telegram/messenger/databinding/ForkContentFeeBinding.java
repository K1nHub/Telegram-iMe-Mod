package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3316R;
/* loaded from: classes4.dex */
public final class ForkContentFeeBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final AppCompatTextView textFeeTitle;
    public final AppCompatTextView textFeeValue;
    public final AppCompatTextView textTimeTitle;
    public final AppCompatTextView textTimeValue;

    private ForkContentFeeBinding(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = constraintLayout;
        this.textFeeTitle = appCompatTextView;
        this.textFeeValue = appCompatTextView2;
        this.textTimeTitle = appCompatTextView3;
        this.textTimeValue = appCompatTextView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentFeeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentFeeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3316R.layout.fork_content_fee, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentFeeBinding bind(View view) {
        int i = C3316R.C3319id.image_fee_arrow;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3316R.C3319id.text_fee_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3316R.C3319id.text_fee_value;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3316R.C3319id.text_time_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null) {
                        i = C3316R.C3319id.text_time_value;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView4 != null) {
                            return new ForkContentFeeBinding((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
