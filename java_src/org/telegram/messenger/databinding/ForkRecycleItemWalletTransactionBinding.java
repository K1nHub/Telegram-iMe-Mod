package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import com.iMe.p030ui.custom.TimeWithClockView;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletTransactionBinding implements ViewBinding {
    private ForkRecycleItemWalletTransactionBinding(LinearLayout linearLayout, Barrier barrier, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, TimeWithClockView timeWithClockView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, DividerView dividerView) {
    }

    public static ForkRecycleItemWalletTransactionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletTransactionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_transaction, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletTransactionBinding bind(View view) {
        int i = C3632R.C3635id.barrier_amount_end;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            i = C3632R.C3635id.constraint_layout_transaction_root;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3632R.C3635id.image_staking_icon;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView != null) {
                    i = C3632R.C3635id.image_transaction_type_icon;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView2 != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i = C3632R.C3635id.text_amount;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView != null) {
                            i = C3632R.C3635id.text_date;
                            TimeWithClockView timeWithClockView = (TimeWithClockView) ViewBindings.findChildViewById(view, i);
                            if (timeWithClockView != null) {
                                i = C3632R.C3635id.text_status;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView2 != null) {
                                    i = C3632R.C3635id.text_transaction_type_title;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView3 != null) {
                                        i = C3632R.C3635id.view_divider;
                                        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                                        if (dividerView != null) {
                                            return new ForkRecycleItemWalletTransactionBinding(linearLayout, barrier, constraintLayout, appCompatImageView, appCompatImageView2, linearLayout, appCompatTextView, timeWithClockView, appCompatTextView2, appCompatTextView3, dividerView);
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
