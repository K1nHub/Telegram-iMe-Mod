package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.CircleTokenView;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletBuyTokenBinding implements ViewBinding {
    private ForkRecycleItemWalletBuyTokenBinding(FrameLayout frameLayout, CardView cardView, CircleTokenView circleTokenView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
    }

    public static ForkRecycleItemWalletBuyTokenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletBuyTokenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_wallet_buy_token, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletBuyTokenBinding bind(View view) {
        int i = C3630R.C3633id.card_buy_token_wrapper;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3630R.C3633id.image_logo;
            CircleTokenView circleTokenView = (CircleTokenView) ViewBindings.findChildViewById(view, i);
            if (circleTokenView != null) {
                i = C3630R.C3633id.text_coin_value;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3630R.C3633id.text_discount;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        i = C3630R.C3633id.text_price_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView3 != null) {
                            i = C3630R.C3633id.text_price_value;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView4 != null) {
                                return new ForkRecycleItemWalletBuyTokenBinding((FrameLayout) view, cardView, circleTokenView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
