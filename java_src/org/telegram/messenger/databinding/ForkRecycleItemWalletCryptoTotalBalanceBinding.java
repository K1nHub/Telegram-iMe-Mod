package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletCryptoTotalBalanceBinding implements ViewBinding {
    private ForkRecycleItemWalletCryptoTotalBalanceBinding(LinearLayout linearLayout, LinearLayout linearLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemWalletCryptoTotalBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletCryptoTotalBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_crypto_total_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletCryptoTotalBalanceBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = C3632R.C3635id.image_wallet_crypto_eye;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3632R.C3635id.image_wallet_crypto_tokens_settings;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = C3632R.C3635id.image_wallet_order_tokens;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView3 != null) {
                    i = C3632R.C3635id.text_wallet_crypto_total_balance;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        return new ForkRecycleItemWalletCryptoTotalBalanceBinding(linearLayout, linearLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
