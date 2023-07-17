package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ProgressView;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ForkContentStakingCompoundBinding implements ViewBinding {
    public final AppCompatImageView imageInfo;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textApr;
    public final AppCompatTextView textApy;
    public final AppCompatTextView textStartValue;
    public final AppCompatTextView textThresholdValue;
    public final ProgressView viewProgress;

    private ForkContentStakingCompoundBinding(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, ProgressView progressView) {
        this.rootView = constraintLayout;
        this.imageInfo = appCompatImageView;
        this.textApr = appCompatTextView;
        this.textApy = appCompatTextView2;
        this.textStartValue = appCompatTextView3;
        this.textThresholdValue = appCompatTextView4;
        this.viewProgress = progressView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingCompoundBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingCompoundBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_content_staking_compound, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingCompoundBinding bind(View view) {
        int i = C3417R.C3420id.image_info;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3417R.C3420id.text_apr;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3417R.C3420id.text_apy;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3417R.C3420id.text_start_value;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null) {
                        i = C3417R.C3420id.text_threshold_value;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView4 != null) {
                            i = C3417R.C3420id.view_progress;
                            ProgressView progressView = (ProgressView) ViewBindings.findChildViewById(view, i);
                            if (progressView != null) {
                                return new ForkContentStakingCompoundBinding((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, progressView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
