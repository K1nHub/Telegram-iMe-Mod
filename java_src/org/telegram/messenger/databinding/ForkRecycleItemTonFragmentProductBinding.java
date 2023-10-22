package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemTonFragmentProductBinding implements ViewBinding {
    private ForkRecycleItemTonFragmentProductBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, DividerView dividerView, FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4) {
    }

    public static ForkRecycleItemTonFragmentProductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemTonFragmentProductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_ton_fragment_product, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemTonFragmentProductBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3630R.C3633id.divider_horizontal;
        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
        if (dividerView != null) {
            i = C3630R.C3633id.frame_icon_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = C3630R.C3633id.linear_info;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3630R.C3633id.text_discount;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3630R.C3633id.text_fiat_price;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3630R.C3633id.text_price;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView != null) {
                                i = C3630R.C3633id.text_subtitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = C3630R.C3633id.text_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        return new ForkRecycleItemTonFragmentProductBinding(constraintLayout, constraintLayout, dividerView, frameLayout, linearLayout, textView, textView2, appCompatTextView, textView3, textView4);
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
