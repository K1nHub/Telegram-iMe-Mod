package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.smedialink.p031ui.custom.BigActionButton;
import com.smedialink.p031ui.custom.DetailsIconCellView;
import com.smedialink.p031ui.custom.ImageHeaderView;
import org.telegram.messenger.C3286R;
/* loaded from: classes4.dex */
public final class ForkContentStakingConditionsBinding implements ViewBinding {
    public final BigActionButton buttonOk;
    private final NestedScrollView rootView;
    public final DetailsIconCellView viewAnnualPercentageCell;
    public final DetailsIconCellView viewCompletionDateCell;
    public final DetailsIconCellView viewFinishedFeeCell;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewImmediateWithdrawalFeeCell;
    public final DetailsIconCellView viewPlannedWithdrawalFeeCell;
    public final DetailsIconCellView viewStartDateCell;
    public final DetailsIconCellView viewThresholdCell;

    private ForkContentStakingConditionsBinding(NestedScrollView nestedScrollView, BigActionButton bigActionButton, DetailsIconCellView detailsIconCellView, DetailsIconCellView detailsIconCellView2, DetailsIconCellView detailsIconCellView3, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView4, DetailsIconCellView detailsIconCellView5, DetailsIconCellView detailsIconCellView6, DetailsIconCellView detailsIconCellView7) {
        this.rootView = nestedScrollView;
        this.buttonOk = bigActionButton;
        this.viewAnnualPercentageCell = detailsIconCellView;
        this.viewCompletionDateCell = detailsIconCellView2;
        this.viewFinishedFeeCell = detailsIconCellView3;
        this.viewHeader = imageHeaderView;
        this.viewImmediateWithdrawalFeeCell = detailsIconCellView4;
        this.viewPlannedWithdrawalFeeCell = detailsIconCellView5;
        this.viewStartDateCell = detailsIconCellView6;
        this.viewThresholdCell = detailsIconCellView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingConditionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingConditionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_content_staking_conditions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingConditionsBinding bind(View view) {
        int i = C3286R.C3289id.button_ok;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3286R.C3289id.view_annual_percentage_cell;
            DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
            if (detailsIconCellView != null) {
                i = C3286R.C3289id.view_completion_date_cell;
                DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                if (detailsIconCellView2 != null) {
                    i = C3286R.C3289id.view_finished_fee_cell;
                    DetailsIconCellView detailsIconCellView3 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                    if (detailsIconCellView3 != null) {
                        i = C3286R.C3289id.view_header;
                        ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                        if (imageHeaderView != null) {
                            i = C3286R.C3289id.view_immediate_withdrawal_fee_cell;
                            DetailsIconCellView detailsIconCellView4 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                            if (detailsIconCellView4 != null) {
                                i = C3286R.C3289id.view_planned_withdrawal_fee_cell;
                                DetailsIconCellView detailsIconCellView5 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                if (detailsIconCellView5 != null) {
                                    i = C3286R.C3289id.view_start_date_cell;
                                    DetailsIconCellView detailsIconCellView6 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                    if (detailsIconCellView6 != null) {
                                        i = C3286R.C3289id.view_threshold_cell;
                                        DetailsIconCellView detailsIconCellView7 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                        if (detailsIconCellView7 != null) {
                                            return new ForkContentStakingConditionsBinding((NestedScrollView) view, bigActionButton, detailsIconCellView, detailsIconCellView2, detailsIconCellView3, imageHeaderView, detailsIconCellView4, detailsIconCellView5, detailsIconCellView6, detailsIconCellView7);
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
