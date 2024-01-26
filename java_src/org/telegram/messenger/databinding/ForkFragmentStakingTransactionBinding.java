package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.StakingPercentageView;
import com.iMe.p030ui.custom.StakingSafeWithdrawalView;
import com.iMe.p030ui.custom.StakingWithdrawalFeeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentStakingTransactionBinding implements ViewBinding {
    public final TransactionActionButtonsView buttonSend;
    public final RLottieImageView imageHeader;
    public final TitledInputFieldView inputAmount;
    public final LinearLayout linearStakingSettings;
    private final NestedScrollView rootView;
    public final StakingPercentageView stakingPercentageView;
    public final StakingSafeWithdrawalView stakingSafeWithdrawalView;
    public final StakingWithdrawalFeeView stakingWithdrawalFeeView;
    public final TextView textBalance;
    public final TextView textHeader;
    public final FeeView viewFee;

    private ForkFragmentStakingTransactionBinding(NestedScrollView nestedScrollView, TransactionActionButtonsView transactionActionButtonsView, RLottieImageView rLottieImageView, TitledInputFieldView titledInputFieldView, LinearLayout linearLayout, StakingPercentageView stakingPercentageView, StakingSafeWithdrawalView stakingSafeWithdrawalView, StakingWithdrawalFeeView stakingWithdrawalFeeView, TextView textView, TextView textView2, FeeView feeView) {
        this.rootView = nestedScrollView;
        this.buttonSend = transactionActionButtonsView;
        this.imageHeader = rLottieImageView;
        this.inputAmount = titledInputFieldView;
        this.linearStakingSettings = linearLayout;
        this.stakingPercentageView = stakingPercentageView;
        this.stakingSafeWithdrawalView = stakingSafeWithdrawalView;
        this.stakingWithdrawalFeeView = stakingWithdrawalFeeView;
        this.textBalance = textView;
        this.textHeader = textView2;
        this.viewFee = feeView;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentStakingTransactionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentStakingTransactionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_staking_transaction, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentStakingTransactionBinding bind(View view) {
        int i = C3632R.C3635id.button_send;
        TransactionActionButtonsView transactionActionButtonsView = (TransactionActionButtonsView) ViewBindings.findChildViewById(view, i);
        if (transactionActionButtonsView != null) {
            i = C3632R.C3635id.image_header;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                i = C3632R.C3635id.input_amount;
                TitledInputFieldView titledInputFieldView = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                if (titledInputFieldView != null) {
                    i = C3632R.C3635id.linear_staking_settings;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3632R.C3635id.staking_percentage_view;
                        StakingPercentageView stakingPercentageView = (StakingPercentageView) ViewBindings.findChildViewById(view, i);
                        if (stakingPercentageView != null) {
                            i = C3632R.C3635id.staking_safe_withdrawal_view;
                            StakingSafeWithdrawalView stakingSafeWithdrawalView = (StakingSafeWithdrawalView) ViewBindings.findChildViewById(view, i);
                            if (stakingSafeWithdrawalView != null) {
                                i = C3632R.C3635id.staking_withdrawal_fee_view;
                                StakingWithdrawalFeeView stakingWithdrawalFeeView = (StakingWithdrawalFeeView) ViewBindings.findChildViewById(view, i);
                                if (stakingWithdrawalFeeView != null) {
                                    i = C3632R.C3635id.text_balance;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = C3632R.C3635id.text_header;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = C3632R.C3635id.view_fee;
                                            FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                                            if (feeView != null) {
                                                return new ForkFragmentStakingTransactionBinding((NestedScrollView) view, transactionActionButtonsView, rLottieImageView, titledInputFieldView, linearLayout, stakingPercentageView, stakingSafeWithdrawalView, stakingWithdrawalFeeView, textView, textView2, feeView);
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
