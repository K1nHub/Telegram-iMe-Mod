package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.ChartCellView;
import org.telegram.messenger.C3242R;
/* loaded from: classes4.dex */
public final class ForkContentStakingPrognosisBinding implements ViewBinding {
    public final BigActionButton buttonDeposit;
    public final ConstraintLayout constraintStatistics;
    public final LinearLayout linearDeposit;
    private final LinearLayout rootView;
    public final TextView textDates;
    public final TextView textDepositDescription;
    public final TextView textDepositTitle;
    public final TextView textModeTitle;
    public final TextView textModeValue;
    public final TextView textPercentageValue;
    public final TextView textProfitTitle;
    public final TextView textProfitTokenValue;
    public final TextView textProfitUsdValue;
    public final TextView textStatistics;
    public final ChartCellView viewChart;

    private ForkContentStakingPrognosisBinding(LinearLayout linearLayout, BigActionButton bigActionButton, ConstraintLayout constraintLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, ChartCellView chartCellView) {
        this.rootView = linearLayout;
        this.buttonDeposit = bigActionButton;
        this.constraintStatistics = constraintLayout;
        this.linearDeposit = linearLayout2;
        this.textDates = textView;
        this.textDepositDescription = textView2;
        this.textDepositTitle = textView3;
        this.textModeTitle = textView4;
        this.textModeValue = textView5;
        this.textPercentageValue = textView6;
        this.textProfitTitle = textView7;
        this.textProfitTokenValue = textView8;
        this.textProfitUsdValue = textView9;
        this.textStatistics = textView10;
        this.viewChart = chartCellView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingPrognosisBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingPrognosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3242R.layout.fork_content_staking_prognosis, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingPrognosisBinding bind(View view) {
        int i = C3242R.C3245id.button_deposit;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3242R.C3245id.constraint_statistics;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3242R.C3245id.linear_deposit;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3242R.C3245id.text_dates;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3242R.C3245id.text_deposit_description;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3242R.C3245id.text_deposit_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                i = C3242R.C3245id.text_mode_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView4 != null) {
                                    i = C3242R.C3245id.text_mode_value;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView5 != null) {
                                        i = C3242R.C3245id.text_percentage_value;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView6 != null) {
                                            i = C3242R.C3245id.text_profit_title;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView7 != null) {
                                                i = C3242R.C3245id.text_profit_token_value;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView8 != null) {
                                                    i = C3242R.C3245id.text_profit_usd_value;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView9 != null) {
                                                        i = C3242R.C3245id.text_statistics;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView10 != null) {
                                                            i = C3242R.C3245id.view_chart;
                                                            ChartCellView chartCellView = (ChartCellView) ViewBindings.findChildViewById(view, i);
                                                            if (chartCellView != null) {
                                                                return new ForkContentStakingPrognosisBinding((LinearLayout) view, bigActionButton, constraintLayout, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, chartCellView);
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
