package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DividerView;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletConnectSessionBinding implements ViewBinding {
    private final ConstraintLayout rootView;

    private ForkRecycleItemWalletConnectSessionBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, DividerView dividerView) {
        this.rootView = constraintLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletConnectSessionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletConnectSessionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_recycle_item_wallet_connect_session, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletConnectSessionBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3419R.C3422id.image_peer_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3419R.C3422id.text_peer_name;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3419R.C3422id.text_peer_url;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3419R.C3422id.view_divider;
                    DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                    if (dividerView != null) {
                        return new ForkRecycleItemWalletConnectSessionBinding(constraintLayout, constraintLayout, appCompatImageView, appCompatTextView, appCompatTextView2, dividerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
