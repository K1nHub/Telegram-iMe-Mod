package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import com.iMe.p030ui.custom.HorizontalActionButtonsView;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.Components.StorageDiagramView;
/* loaded from: classes4.dex */
public final class ForkContentStakingDashboardBinding implements ViewBinding {
    public final CardView cardStakingDashboard;
    public final DividerView divider;
    public final HorizontalActionButtonsView horizontalActionButtons;
    private final LinearLayout rootView;
    public final AppCompatTextView textHeader;
    public final TextView textProfitTitle;
    public final TextView textProfitValue;
    public final TextView textStakedTitle;
    public final TextView textStakedValue;
    public final StorageDiagramView viewDiagram;
    public final View viewProfitDot;
    public final View viewStakedDot;

    private ForkContentStakingDashboardBinding(LinearLayout linearLayout, CardView cardView, DividerView dividerView, HorizontalActionButtonsView horizontalActionButtonsView, LinearLayout linearLayout2, LinearLayout linearLayout3, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, TextView textView3, TextView textView4, StorageDiagramView storageDiagramView, View view, View view2) {
        this.rootView = linearLayout;
        this.cardStakingDashboard = cardView;
        this.divider = dividerView;
        this.horizontalActionButtons = horizontalActionButtonsView;
        this.textHeader = appCompatTextView;
        this.textProfitTitle = textView;
        this.textProfitValue = textView2;
        this.textStakedTitle = textView3;
        this.textStakedValue = textView4;
        this.viewDiagram = storageDiagramView;
        this.viewProfitDot = view;
        this.viewStakedDot = view2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentStakingDashboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentStakingDashboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_staking_dashboard, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentStakingDashboardBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        int i = C3634R.C3637id.card_staking_dashboard;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3634R.C3637id.divider;
            DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
            if (dividerView != null) {
                i = C3634R.C3637id.horizontal_action_buttons;
                HorizontalActionButtonsView horizontalActionButtonsView = (HorizontalActionButtonsView) ViewBindings.findChildViewById(view, i);
                if (horizontalActionButtonsView != null) {
                    i = C3634R.C3637id.linear_profit;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3634R.C3637id.linear_staked;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = C3634R.C3637id.text_header;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView != null) {
                                i = C3634R.C3637id.text_profit_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = C3634R.C3637id.text_profit_value;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = C3634R.C3637id.text_staked_title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = C3634R.C3637id.text_staked_value;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                i = C3634R.C3637id.view_diagram;
                                                StorageDiagramView storageDiagramView = (StorageDiagramView) ViewBindings.findChildViewById(view, i);
                                                if (storageDiagramView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3634R.C3637id.view_profit_dot))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C3634R.C3637id.view_staked_dot))) != null) {
                                                    return new ForkContentStakingDashboardBinding((LinearLayout) view, cardView, dividerView, horizontalActionButtonsView, linearLayout, linearLayout2, appCompatTextView, textView, textView2, textView3, textView4, storageDiagramView, findChildViewById, findChildViewById2);
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
