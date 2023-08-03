package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.iMe.fork.p024ui.view.AccountLevelBadgeView;
import com.iMe.fork.p024ui.view.TabbedViewPager;
import com.iMe.p031ui.custom.HorizontalActionButtonsView;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Cells.TextDetailCell;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletTokenDetailsBinding implements ViewBinding {
    public final AccountLevelBadgeView accountRankBadge;
    public final AppBarLayout appbar;
    public final ConstraintLayout constraintLayoutHeader;
    public final View dividerActionButtons;
    public final View dividerStaking;
    public final View headerUnderlay;
    public final HorizontalActionButtonsView horizontalActionButtons;
    public final AppCompatImageView imageCoinIcon;
    public final AppCompatImageView imageStakingInfo;
    public final ActionBarMenuItem itemBack;
    public final ActionBarMenuItem itemMoreOptions;
    public final LinearLayout linearContent;
    public final LinearLayout linearHeader;
    public final LinearLayoutCompat linearStakingInfo;
    private final SwipeRefreshLayout rootView;
    public final AppCompatTextView textAccountBalance;
    public final AppCompatTextView textAccountTitle;
    public final AppCompatTextView textStakingInfo;
    public final AppCompatTextView textTransactions;
    public final MaterialToolbar toolbar;
    public final TabbedViewPager transactionsPager;
    public final TextDetailCell viewAnnualPercentageCell;
    public final TextDetailCell viewFinishedCell;
    public final TextDetailCell viewProfitCell;

    private ForkFragmentWalletTokenDetailsBinding(SwipeRefreshLayout swipeRefreshLayout, AccountLevelBadgeView accountLevelBadgeView, AppBarLayout appBarLayout, ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, View view, View view2, View view3, HorizontalActionButtonsView horizontalActionButtonsView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ActionBarMenuItem actionBarMenuItem, ActionBarMenuItem actionBarMenuItem2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, MaterialToolbar materialToolbar, TabbedViewPager tabbedViewPager, TextDetailCell textDetailCell, TextDetailCell textDetailCell2, TextDetailCell textDetailCell3) {
        this.rootView = swipeRefreshLayout;
        this.accountRankBadge = accountLevelBadgeView;
        this.appbar = appBarLayout;
        this.constraintLayoutHeader = constraintLayout;
        this.dividerActionButtons = view;
        this.dividerStaking = view2;
        this.headerUnderlay = view3;
        this.horizontalActionButtons = horizontalActionButtonsView;
        this.imageCoinIcon = appCompatImageView;
        this.imageStakingInfo = appCompatImageView2;
        this.itemBack = actionBarMenuItem;
        this.itemMoreOptions = actionBarMenuItem2;
        this.linearContent = linearLayout;
        this.linearHeader = linearLayout2;
        this.linearStakingInfo = linearLayoutCompat;
        this.textAccountBalance = appCompatTextView;
        this.textAccountTitle = appCompatTextView2;
        this.textStakingInfo = appCompatTextView3;
        this.textTransactions = appCompatTextView4;
        this.toolbar = materialToolbar;
        this.transactionsPager = tabbedViewPager;
        this.viewAnnualPercentageCell = textDetailCell;
        this.viewFinishedCell = textDetailCell2;
        this.viewProfitCell = textDetailCell3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletTokenDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletTokenDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_wallet_token_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletTokenDetailsBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i = C3419R.C3422id.account_rank_badge;
        AccountLevelBadgeView accountLevelBadgeView = (AccountLevelBadgeView) ViewBindings.findChildViewById(view, i);
        if (accountLevelBadgeView != null) {
            i = C3419R.C3422id.appbar;
            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, i);
            if (appBarLayout != null) {
                i = C3419R.C3422id.constraint_layout_header;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout != null) {
                    i = C3419R.C3422id.coordinator;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, i);
                    if (coordinatorLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3419R.C3422id.divider_action_buttons))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C3419R.C3422id.divider_staking))) != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C3419R.C3422id.header_underlay))) != null) {
                        i = C3419R.C3422id.horizontal_action_buttons;
                        HorizontalActionButtonsView horizontalActionButtonsView = (HorizontalActionButtonsView) ViewBindings.findChildViewById(view, i);
                        if (horizontalActionButtonsView != null) {
                            i = C3419R.C3422id.image_coin_icon;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView != null) {
                                i = C3419R.C3422id.image_staking_info;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView2 != null) {
                                    i = C3419R.C3422id.item_back;
                                    ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                    if (actionBarMenuItem != null) {
                                        i = C3419R.C3422id.item_more_options;
                                        ActionBarMenuItem actionBarMenuItem2 = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                        if (actionBarMenuItem2 != null) {
                                            i = C3419R.C3422id.linear_content;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout != null) {
                                                i = C3419R.C3422id.linear_header;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout2 != null) {
                                                    i = C3419R.C3422id.linear_staking_info;
                                                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayoutCompat != null) {
                                                        i = C3419R.C3422id.text_account_balance;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView != null) {
                                                            i = C3419R.C3422id.text_account_title;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView2 != null) {
                                                                i = C3419R.C3422id.text_staking_info;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView3 != null) {
                                                                    i = C3419R.C3422id.text_transactions;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView4 != null) {
                                                                        i = C3419R.C3422id.toolbar;
                                                                        MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, i);
                                                                        if (materialToolbar != null) {
                                                                            i = C3419R.C3422id.transactions_pager;
                                                                            TabbedViewPager tabbedViewPager = (TabbedViewPager) ViewBindings.findChildViewById(view, i);
                                                                            if (tabbedViewPager != null) {
                                                                                i = C3419R.C3422id.view_annual_percentage_cell;
                                                                                TextDetailCell textDetailCell = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                if (textDetailCell != null) {
                                                                                    i = C3419R.C3422id.view_finished_cell;
                                                                                    TextDetailCell textDetailCell2 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                    if (textDetailCell2 != null) {
                                                                                        i = C3419R.C3422id.view_profit_cell;
                                                                                        TextDetailCell textDetailCell3 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                        if (textDetailCell3 != null) {
                                                                                            return new ForkFragmentWalletTokenDetailsBinding((SwipeRefreshLayout) view, accountLevelBadgeView, appBarLayout, constraintLayout, coordinatorLayout, findChildViewById, findChildViewById2, findChildViewById3, horizontalActionButtonsView, appCompatImageView, appCompatImageView2, actionBarMenuItem, actionBarMenuItem2, linearLayout, linearLayout2, linearLayoutCompat, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, materialToolbar, tabbedViewPager, textDetailCell, textDetailCell2, textDetailCell3);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
