package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkContentNetworkTypeBinding implements ViewBinding {
    public final AppCompatImageView imageNetwork;
    private final LinearLayout rootView;
    public final AppCompatTextView textNetwork;

    private ForkContentNetworkTypeBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayout;
        this.imageNetwork = appCompatImageView;
        this.textNetwork = appCompatTextView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentNetworkTypeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentNetworkTypeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_content_network_type, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentNetworkTypeBinding bind(View view) {
        int i = C3630R.C3633id.image_network;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3630R.C3633id.text_network;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                return new ForkContentNetworkTypeBinding((LinearLayout) view, appCompatImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
