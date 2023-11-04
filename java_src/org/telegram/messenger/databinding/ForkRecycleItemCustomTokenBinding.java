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
import com.iMe.p030ui.custom.TickerView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemCustomTokenBinding implements ViewBinding {
    private ForkRecycleItemCustomTokenBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, DividerView dividerView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView, TextView textView2, TickerView tickerView) {
    }

    public static ForkRecycleItemCustomTokenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemCustomTokenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_custom_token, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemCustomTokenBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3634R.C3637id.divider_horizontal;
        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
        if (dividerView != null) {
            i = C3634R.C3637id.image_network_icon;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3634R.C3637id.image_token_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3634R.C3637id.text_address;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3634R.C3637id.text_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3634R.C3637id.text_ticker;
                            TickerView tickerView = (TickerView) ViewBindings.findChildViewById(view, i);
                            if (tickerView != null) {
                                return new ForkRecycleItemCustomTokenBinding(constraintLayout, constraintLayout, dividerView, appCompatImageView, appCompatImageView2, textView, textView2, tickerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
