package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletCardIconTitleSubtitleBinding implements ViewBinding {
    private ForkRecycleItemWalletCardIconTitleSubtitleBinding(FrameLayout frameLayout, CardView cardView, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
    }

    public static ForkRecycleItemWalletCardIconTitleSubtitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletCardIconTitleSubtitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_wallet_card_icon_title_subtitle, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletCardIconTitleSubtitleBinding bind(View view) {
        int i = C3630R.C3633id.card_root;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i = C3630R.C3633id.image_icon;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3630R.C3633id.text_subtitle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3630R.C3633id.text_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new ForkRecycleItemWalletCardIconTitleSubtitleBinding(frameLayout, cardView, frameLayout, appCompatImageView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
