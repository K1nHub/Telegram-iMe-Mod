package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletCryptoAddTokensBinding implements ViewBinding {
    private ForkRecycleItemWalletCryptoAddTokensBinding(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemWalletCryptoAddTokensBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletCryptoAddTokensBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_crypto_add_tokens, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletCryptoAddTokensBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = C3632R.C3635id.text_add_tokens;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            return new ForkRecycleItemWalletCryptoAddTokensBinding(frameLayout, frameLayout, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
