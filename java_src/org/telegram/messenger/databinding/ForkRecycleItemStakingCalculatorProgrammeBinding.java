package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemStakingCalculatorProgrammeBinding implements ViewBinding {
    private ForkRecycleItemStakingCalculatorProgrammeBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
    }

    public static ForkRecycleItemStakingCalculatorProgrammeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemStakingCalculatorProgrammeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_staking_calculator_programme, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemStakingCalculatorProgrammeBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3632R.C3635id.image_info;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3632R.C3635id.image_logo;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = C3632R.C3635id.image_network_icon;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView3 != null) {
                    i = C3632R.C3635id.linear_percentages;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3632R.C3635id.text_apr_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = C3632R.C3635id.text_apr_value;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = C3632R.C3635id.text_apy_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = C3632R.C3635id.text_apy_value;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        i = C3632R.C3635id.text_name;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView5 != null) {
                                            return new ForkRecycleItemStakingCalculatorProgrammeBinding(constraintLayout, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayout, textView, textView2, textView3, textView4, textView5);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
