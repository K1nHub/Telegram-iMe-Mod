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
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Components.Switch;
/* loaded from: classes4.dex */
public final class ForkRecycleItemFoundTokenBinding implements ViewBinding {
    private ForkRecycleItemFoundTokenBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, DividerView dividerView, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView, TextView textView2, TickerView tickerView, Switch r10) {
    }

    public static ForkRecycleItemFoundTokenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemFoundTokenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_found_token, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemFoundTokenBinding bind(View view) {
        View findChildViewById;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3632R.C3635id.divider_horizontal;
        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
        if (dividerView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3632R.C3635id.divider_vertical))) != null) {
            i = C3632R.C3635id.image_network_icon;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3632R.C3635id.image_token_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3632R.C3635id.text_address;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3632R.C3635id.text_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3632R.C3635id.text_ticker;
                            TickerView tickerView = (TickerView) ViewBindings.findChildViewById(view, i);
                            if (tickerView != null) {
                                i = C3632R.C3635id.view_switch;
                                Switch r10 = (Switch) ViewBindings.findChildViewById(view, i);
                                if (r10 != null) {
                                    return new ForkRecycleItemFoundTokenBinding(constraintLayout, constraintLayout, dividerView, findChildViewById, appCompatImageView, appCompatImageView2, textView, textView2, tickerView, r10);
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
