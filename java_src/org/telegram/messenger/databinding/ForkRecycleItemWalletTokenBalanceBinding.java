package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.TickerView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletTokenBalanceBinding implements ViewBinding {
    public final ConstraintLayout constraintTradeInfo;
    public final AppCompatImageView imageLogo;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textAccountBalanceInDollars;
    public final TickerView textCoinTicker;
    public final AppCompatTextView textSubtitle;
    public final AppCompatTextView textTitle;

    private ForkRecycleItemWalletTokenBalanceBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, TickerView tickerView, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12) {
        this.rootView = constraintLayout;
        this.constraintTradeInfo = constraintLayout3;
        this.imageLogo = appCompatImageView;
        this.textAccountBalanceInDollars = appCompatTextView;
        this.textCoinTicker = tickerView;
        this.textSubtitle = appCompatTextView8;
        this.textTitle = appCompatTextView9;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletTokenBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletTokenBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_wallet_token_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletTokenBalanceBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C3634R.C3637id.constraint_trade_info;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout2 != null) {
            i = C3634R.C3637id.image_logo;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3634R.C3637id.image_network_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3634R.C3637id.image_price_direction;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView3 != null) {
                        i = C3634R.C3637id.image_trade;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView4 != null) {
                            i = C3634R.C3637id.staking_info;
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                            if (linearLayoutCompat != null) {
                                i = C3634R.C3637id.text_account_balance_in_dollars;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3634R.C3637id.text_apr_title;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        i = C3634R.C3637id.text_apr_value;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView3 != null) {
                                            i = C3634R.C3637id.text_apy_title;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView4 != null) {
                                                i = C3634R.C3637id.text_apy_value;
                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView5 != null) {
                                                    i = C3634R.C3637id.text_coin_ticker;
                                                    TickerView tickerView = (TickerView) ViewBindings.findChildViewById(view, i);
                                                    if (tickerView != null) {
                                                        i = C3634R.C3637id.text_staking_end_title;
                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView6 != null) {
                                                            i = C3634R.C3637id.text_staking_end_value;
                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView7 != null) {
                                                                i = C3634R.C3637id.text_subtitle;
                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView8 != null) {
                                                                    i = C3634R.C3637id.text_title;
                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView9 != null) {
                                                                        i = C3634R.C3637id.text_trade_pair;
                                                                        AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView10 != null) {
                                                                            i = C3634R.C3637id.text_trade_percent;
                                                                            AppCompatTextView appCompatTextView11 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView11 != null) {
                                                                                i = C3634R.C3637id.text_trade_price;
                                                                                AppCompatTextView appCompatTextView12 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView12 != null) {
                                                                                    return new ForkRecycleItemWalletTokenBalanceBinding(constraintLayout, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, linearLayoutCompat, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, tickerView, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
