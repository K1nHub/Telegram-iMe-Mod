package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.NetworkTypeView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletTokensHeaderBinding implements ViewBinding {
    public final AppCompatImageView imageAddToken;
    public final AppCompatImageView imageNetwork;
    public final LinearLayout linearAddToken;
    public final LinearLayout linearNetwork;
    public final NetworkTypeView networkTypeView;
    private final LinearLayout rootView;
    public final AppCompatTextView textAddToken;
    public final AppCompatTextView textNetwork;
    public final TextView textTitleDisplayedTokens;

    private ForkRecycleItemWalletTokensHeaderBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, NetworkTypeView networkTypeView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView) {
        this.rootView = linearLayout;
        this.imageAddToken = appCompatImageView;
        this.imageNetwork = appCompatImageView2;
        this.linearAddToken = linearLayout2;
        this.linearNetwork = linearLayout3;
        this.networkTypeView = networkTypeView;
        this.textAddToken = appCompatTextView;
        this.textNetwork = appCompatTextView2;
        this.textTitleDisplayedTokens = textView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletTokensHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletTokensHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_wallet_tokens_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletTokensHeaderBinding bind(View view) {
        int i = C3634R.C3637id.image_add_token;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3634R.C3637id.image_network;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = C3634R.C3637id.linear_add_token;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3634R.C3637id.linear_network;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = C3634R.C3637id.network_type_view;
                        NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                        if (networkTypeView != null) {
                            i = C3634R.C3637id.text_add_token;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView != null) {
                                i = C3634R.C3637id.text_network;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView2 != null) {
                                    i = C3634R.C3637id.text_title_displayed_tokens;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        return new ForkRecycleItemWalletTokensHeaderBinding((LinearLayout) view, appCompatImageView, appCompatImageView2, linearLayout, linearLayout2, networkTypeView, appCompatTextView, appCompatTextView2, textView);
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
