package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p032ui.custom.CoinTickerView;
import com.iMe.p032ui.custom.DividerView;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.Components.BackupImageView;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletDonationTransactionBinding implements ViewBinding {
    public final BackupImageView imageUserAvatar;
    private final LinearLayout rootView;
    public final AppCompatTextView textAmount;
    public final CoinTickerView textCoinTicker;
    public final AppCompatTextView textDate;
    public final AppCompatTextView textUserFullName;
    public final DividerView viewDivider;

    private ForkRecycleItemWalletDonationTransactionBinding(LinearLayout linearLayout, Barrier barrier, ConstraintLayout constraintLayout, BackupImageView backupImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, CoinTickerView coinTickerView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, DividerView dividerView) {
        this.rootView = linearLayout;
        this.imageUserAvatar = backupImageView;
        this.textAmount = appCompatTextView;
        this.textCoinTicker = coinTickerView;
        this.textDate = appCompatTextView2;
        this.textUserFullName = appCompatTextView3;
        this.viewDivider = dividerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletDonationTransactionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDonationTransactionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3316R.layout.fork_recycle_item_wallet_donation_transaction, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDonationTransactionBinding bind(View view) {
        int i = C3316R.C3319id.barrier_amount_end;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            i = C3316R.C3319id.constraint_layout_transaction_root;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3316R.C3319id.image_user_avatar;
                BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                if (backupImageView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = C3316R.C3319id.text_amount;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = C3316R.C3319id.text_coin_ticker;
                        CoinTickerView coinTickerView = (CoinTickerView) ViewBindings.findChildViewById(view, i);
                        if (coinTickerView != null) {
                            i = C3316R.C3319id.text_date;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView2 != null) {
                                i = C3316R.C3319id.text_user_full_name;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView3 != null) {
                                    i = C3316R.C3319id.view_divider;
                                    DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                                    if (dividerView != null) {
                                        return new ForkRecycleItemWalletDonationTransactionBinding(linearLayout, barrier, constraintLayout, backupImageView, linearLayout, appCompatTextView, coinTickerView, appCompatTextView2, appCompatTextView3, dividerView);
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
