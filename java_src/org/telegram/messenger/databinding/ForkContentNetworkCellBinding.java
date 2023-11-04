package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkContentNetworkCellBinding implements ViewBinding {
    public final DividerView divider;
    public final AppCompatImageView imageCheck;
    public final AppCompatImageView imageNetwork;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textNetwork;

    private ForkContentNetworkCellBinding(ConstraintLayout constraintLayout, DividerView dividerView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView) {
        this.rootView = constraintLayout;
        this.divider = dividerView;
        this.imageCheck = appCompatImageView;
        this.imageNetwork = appCompatImageView2;
        this.textNetwork = appCompatTextView;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentNetworkCellBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentNetworkCellBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_network_cell, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentNetworkCellBinding bind(View view) {
        int i = C3634R.C3637id.divider;
        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
        if (dividerView != null) {
            i = C3634R.C3637id.image_check;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3634R.C3637id.image_network;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3634R.C3637id.text_network;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        return new ForkContentNetworkCellBinding((ConstraintLayout) view, dividerView, appCompatImageView, appCompatImageView2, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
