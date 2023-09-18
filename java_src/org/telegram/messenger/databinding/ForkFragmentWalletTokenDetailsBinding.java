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
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Cells.TextDetailCell;
/* loaded from: classes6.dex */
public final class ForkFragmentWalletTokenDetailsBinding implements ViewBinding {
    public final AccountLevelBadgeView accountRankBadge;
    public final AppBarLayout appbar;
    public final ConstraintLayout constraintLayoutHeader;
    public final View dividerActionButtons;
    public final View dividerCryptoboxDescription;
    public final View dividerCryptoboxInfo;
    public final View dividerStaking;
    public final View headerUnderlay;
    public final HorizontalActionButtonsView horizontalActionButtons;
    public final AppCompatImageView imageCryptoboxInfo;
    public final AppCompatImageView imageLogo;
    public final AppCompatImageView imageStakingInfo;
    public final ActionBarMenuItem itemBack;
    public final ActionBarMenuItem itemMoreOptions;
    public final LinearLayout linearContent;
    public final LinearLayoutCompat linearCryptoboxDescription;
    public final LinearLayoutCompat linearCryptoboxInfo;
    public final LinearLayout linearHeader;
    public final LinearLayoutCompat linearStakingInfo;
    private final SwipeRefreshLayout rootView;
    public final AppCompatTextView textCryptoboxDescription;
    public final AppCompatTextView textCryptoboxDescriptionTitle;
    public final AppCompatTextView textCryptoboxInfo;
    public final AppCompatTextView textStakingInfo;
    public final AppCompatTextView textSubtitle;
    public final AppCompatTextView textTitle;
    public final AppCompatTextView textTransactions;
    public final MaterialToolbar toolbar;
    public final TabbedViewPager transactionsPager;
    public final TextDetailCell viewAnnualPercentageCell;
    public final TextDetailCell viewBalanceCell;
    public final TextDetailCell viewChatCell;
    public final TextDetailCell viewFinishedCell;
    public final TextDetailCell viewMembersCell;
    public final TextDetailCell viewProfitCell;
    public final TextDetailCell viewStatusCell;

    private ForkFragmentWalletTokenDetailsBinding(SwipeRefreshLayout swipeRefreshLayout, AccountLevelBadgeView accountLevelBadgeView, AppBarLayout appBarLayout, ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, View view, View view2, View view3, View view4, View view5, HorizontalActionButtonsView horizontalActionButtonsView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ActionBarMenuItem actionBarMenuItem, ActionBarMenuItem actionBarMenuItem2, LinearLayout linearLayout, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, LinearLayout linearLayout2, LinearLayoutCompat linearLayoutCompat3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, MaterialToolbar materialToolbar, TabbedViewPager tabbedViewPager, TextDetailCell textDetailCell, TextDetailCell textDetailCell2, TextDetailCell textDetailCell3, TextDetailCell textDetailCell4, TextDetailCell textDetailCell5, TextDetailCell textDetailCell6, TextDetailCell textDetailCell7) {
        this.rootView = swipeRefreshLayout;
        this.accountRankBadge = accountLevelBadgeView;
        this.appbar = appBarLayout;
        this.constraintLayoutHeader = constraintLayout;
        this.dividerActionButtons = view;
        this.dividerCryptoboxDescription = view2;
        this.dividerCryptoboxInfo = view3;
        this.dividerStaking = view4;
        this.headerUnderlay = view5;
        this.horizontalActionButtons = horizontalActionButtonsView;
        this.imageCryptoboxInfo = appCompatImageView;
        this.imageLogo = appCompatImageView2;
        this.imageStakingInfo = appCompatImageView3;
        this.itemBack = actionBarMenuItem;
        this.itemMoreOptions = actionBarMenuItem2;
        this.linearContent = linearLayout;
        this.linearCryptoboxDescription = linearLayoutCompat;
        this.linearCryptoboxInfo = linearLayoutCompat2;
        this.linearHeader = linearLayout2;
        this.linearStakingInfo = linearLayoutCompat3;
        this.textCryptoboxDescription = appCompatTextView;
        this.textCryptoboxDescriptionTitle = appCompatTextView2;
        this.textCryptoboxInfo = appCompatTextView3;
        this.textStakingInfo = appCompatTextView4;
        this.textSubtitle = appCompatTextView5;
        this.textTitle = appCompatTextView6;
        this.textTransactions = appCompatTextView7;
        this.toolbar = materialToolbar;
        this.transactionsPager = tabbedViewPager;
        this.viewAnnualPercentageCell = textDetailCell;
        this.viewBalanceCell = textDetailCell2;
        this.viewChatCell = textDetailCell3;
        this.viewFinishedCell = textDetailCell4;
        this.viewMembersCell = textDetailCell5;
        this.viewProfitCell = textDetailCell6;
        this.viewStatusCell = textDetailCell7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletTokenDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletTokenDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_fragment_wallet_token_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletTokenDetailsBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        View findChildViewById5;
        int i = C3473R.C3476id.account_rank_badge;
        AccountLevelBadgeView accountLevelBadgeView = (AccountLevelBadgeView) ViewBindings.findChildViewById(view, i);
        if (accountLevelBadgeView != null) {
            i = C3473R.C3476id.appbar;
            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, i);
            if (appBarLayout != null) {
                i = C3473R.C3476id.constraint_layout_header;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout != null) {
                    i = C3473R.C3476id.coordinator;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, i);
                    if (coordinatorLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3473R.C3476id.divider_action_buttons))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C3473R.C3476id.divider_cryptobox_description))) != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C3473R.C3476id.divider_cryptobox_info))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = C3473R.C3476id.divider_staking))) != null && (findChildViewById5 = ViewBindings.findChildViewById(view, (i = C3473R.C3476id.header_underlay))) != null) {
                        i = C3473R.C3476id.horizontal_action_buttons;
                        HorizontalActionButtonsView horizontalActionButtonsView = (HorizontalActionButtonsView) ViewBindings.findChildViewById(view, i);
                        if (horizontalActionButtonsView != null) {
                            i = C3473R.C3476id.image_cryptobox_info;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView != null) {
                                i = C3473R.C3476id.image_logo;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView2 != null) {
                                    i = C3473R.C3476id.image_staking_info;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatImageView3 != null) {
                                        i = C3473R.C3476id.item_back;
                                        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                        if (actionBarMenuItem != null) {
                                            i = C3473R.C3476id.item_more_options;
                                            ActionBarMenuItem actionBarMenuItem2 = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                            if (actionBarMenuItem2 != null) {
                                                i = C3473R.C3476id.linear_content;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = C3473R.C3476id.linear_cryptobox_description;
                                                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayoutCompat != null) {
                                                        i = C3473R.C3476id.linear_cryptobox_info;
                                                        LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayoutCompat2 != null) {
                                                            i = C3473R.C3476id.linear_header;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout2 != null) {
                                                                i = C3473R.C3476id.linear_staking_info;
                                                                LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayoutCompat3 != null) {
                                                                    i = C3473R.C3476id.text_cryptobox_description;
                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView != null) {
                                                                        i = C3473R.C3476id.text_cryptobox_description_title;
                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView2 != null) {
                                                                            i = C3473R.C3476id.text_cryptobox_info;
                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView3 != null) {
                                                                                i = C3473R.C3476id.text_staking_info;
                                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView4 != null) {
                                                                                    i = C3473R.C3476id.text_subtitle;
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i = C3473R.C3476id.text_title;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView6 != null) {
                                                                                            i = C3473R.C3476id.text_transactions;
                                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView7 != null) {
                                                                                                i = C3473R.C3476id.toolbar;
                                                                                                MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, i);
                                                                                                if (materialToolbar != null) {
                                                                                                    i = C3473R.C3476id.transactions_pager;
                                                                                                    TabbedViewPager tabbedViewPager = (TabbedViewPager) ViewBindings.findChildViewById(view, i);
                                                                                                    if (tabbedViewPager != null) {
                                                                                                        i = C3473R.C3476id.view_annual_percentage_cell;
                                                                                                        TextDetailCell textDetailCell = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textDetailCell != null) {
                                                                                                            i = C3473R.C3476id.view_balance_cell;
                                                                                                            TextDetailCell textDetailCell2 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textDetailCell2 != null) {
                                                                                                                i = C3473R.C3476id.view_chat_cell;
                                                                                                                TextDetailCell textDetailCell3 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textDetailCell3 != null) {
                                                                                                                    i = C3473R.C3476id.view_finished_cell;
                                                                                                                    TextDetailCell textDetailCell4 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textDetailCell4 != null) {
                                                                                                                        i = C3473R.C3476id.view_members_cell;
                                                                                                                        TextDetailCell textDetailCell5 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (textDetailCell5 != null) {
                                                                                                                            i = C3473R.C3476id.view_profit_cell;
                                                                                                                            TextDetailCell textDetailCell6 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (textDetailCell6 != null) {
                                                                                                                                i = C3473R.C3476id.view_status_cell;
                                                                                                                                TextDetailCell textDetailCell7 = (TextDetailCell) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (textDetailCell7 != null) {
                                                                                                                                    return new ForkFragmentWalletTokenDetailsBinding((SwipeRefreshLayout) view, accountLevelBadgeView, appBarLayout, constraintLayout, coordinatorLayout, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4, findChildViewById5, horizontalActionButtonsView, appCompatImageView, appCompatImageView2, appCompatImageView3, actionBarMenuItem, actionBarMenuItem2, linearLayout, linearLayoutCompat, linearLayoutCompat2, linearLayout2, linearLayoutCompat3, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, materialToolbar, tabbedViewPager, textDetailCell, textDetailCell2, textDetailCell3, textDetailCell4, textDetailCell5, textDetailCell6, textDetailCell7);
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
