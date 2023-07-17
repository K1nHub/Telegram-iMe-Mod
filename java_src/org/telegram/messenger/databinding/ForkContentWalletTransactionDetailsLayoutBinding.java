package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DividerView;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentWalletTransactionDetailsLayoutBinding implements ViewBinding {
    public final CardView cardViewTransactionInfo;
    public final ConstraintLayout constraintBottomAction;
    public final ConstraintLayout constraintLayoutHeader;
    public final LinearLayout constraintRoot;
    public final DividerView dividerComment;
    public final AppCompatImageView imageCoinIcon;
    public final AppCompatImageView imageStakingIcon;
    public final ActionBarMenuItem itemMoreOptions;
    public final LinearLayout linearActions;
    public final RecyclerView recycleActions;
    private final LinearLayout rootView;
    public final AppCompatTextView textActionCancel;
    public final AppCompatTextView textCommentTitle;
    public final AppCompatTextView textCommentValue;
    public final AppCompatTextView textDateTitle;
    public final AppCompatTextView textDateValue;
    public final AppCompatTextView textFeeTitle;
    public final AppCompatTextView textFeeValue;
    public final AppCompatTextView textProcessingTitle;
    public final AppCompatTextView textProcessingValue;
    public final AppCompatTextView textRecipientTitle;
    public final AppCompatTextView textRecipientValue;
    public final AppCompatTextView textSectionActions;
    public final AppCompatTextView textSectionName;
    public final AppCompatTextView textStatusTitle;
    public final AppCompatTextView textStatusValue;
    public final AppCompatTextView textTransactionAmount;
    public final AppCompatTextView textTransactionType;

    private ForkContentWalletTransactionDetailsLayoutBinding(LinearLayout linearLayout, CardView cardView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, LinearLayout linearLayout2, DividerView dividerView, DividerView dividerView2, DividerView dividerView3, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ActionBarMenuItem actionBarMenuItem, LinearLayout linearLayout3, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12, AppCompatTextView appCompatTextView13, AppCompatTextView appCompatTextView14, AppCompatTextView appCompatTextView15, AppCompatTextView appCompatTextView16, AppCompatTextView appCompatTextView17, DividerView dividerView4) {
        this.rootView = linearLayout;
        this.cardViewTransactionInfo = cardView;
        this.constraintBottomAction = constraintLayout;
        this.constraintLayoutHeader = constraintLayout2;
        this.constraintRoot = linearLayout2;
        this.dividerComment = dividerView3;
        this.imageCoinIcon = appCompatImageView;
        this.imageStakingIcon = appCompatImageView2;
        this.itemMoreOptions = actionBarMenuItem;
        this.linearActions = linearLayout3;
        this.recycleActions = recyclerView;
        this.textActionCancel = appCompatTextView;
        this.textCommentTitle = appCompatTextView2;
        this.textCommentValue = appCompatTextView3;
        this.textDateTitle = appCompatTextView4;
        this.textDateValue = appCompatTextView5;
        this.textFeeTitle = appCompatTextView6;
        this.textFeeValue = appCompatTextView7;
        this.textProcessingTitle = appCompatTextView8;
        this.textProcessingValue = appCompatTextView9;
        this.textRecipientTitle = appCompatTextView10;
        this.textRecipientValue = appCompatTextView11;
        this.textSectionActions = appCompatTextView12;
        this.textSectionName = appCompatTextView13;
        this.textStatusTitle = appCompatTextView14;
        this.textStatusValue = appCompatTextView15;
        this.textTransactionAmount = appCompatTextView16;
        this.textTransactionType = appCompatTextView17;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletTransactionDetailsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletTransactionDetailsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_content_wallet_transaction_details_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletTransactionDetailsLayoutBinding bind(View view) {
        int i = C3417R.C3420id.card_view_transaction_info;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3417R.C3420id.constraint_bottom_action;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3417R.C3420id.constraint_layout_header;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = C3417R.C3420id.divider;
                    DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                    if (dividerView != null) {
                        i = C3417R.C3420id.divider_1;
                        DividerView dividerView2 = (DividerView) ViewBindings.findChildViewById(view, i);
                        if (dividerView2 != null) {
                            i = C3417R.C3420id.divider_comment;
                            DividerView dividerView3 = (DividerView) ViewBindings.findChildViewById(view, i);
                            if (dividerView3 != null) {
                                i = C3417R.C3420id.image_coin_icon;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView != null) {
                                    i = C3417R.C3420id.image_staking_icon;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatImageView2 != null) {
                                        i = C3417R.C3420id.item_more_options;
                                        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                        if (actionBarMenuItem != null) {
                                            i = C3417R.C3420id.linear_actions;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = C3417R.C3420id.recycle_actions;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                                if (recyclerView != null) {
                                                    i = C3417R.C3420id.text_action_cancel;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatTextView != null) {
                                                        i = C3417R.C3420id.text_comment_title;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView2 != null) {
                                                            i = C3417R.C3420id.text_comment_value;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView3 != null) {
                                                                i = C3417R.C3420id.text_date_title;
                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView4 != null) {
                                                                    i = C3417R.C3420id.text_date_value;
                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView5 != null) {
                                                                        i = C3417R.C3420id.text_fee_title;
                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView6 != null) {
                                                                            i = C3417R.C3420id.text_fee_value;
                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView7 != null) {
                                                                                i = C3417R.C3420id.text_processing_title;
                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView8 != null) {
                                                                                    i = C3417R.C3420id.text_processing_value;
                                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView9 != null) {
                                                                                        i = C3417R.C3420id.text_recipient_title;
                                                                                        AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView10 != null) {
                                                                                            i = C3417R.C3420id.text_recipient_value;
                                                                                            AppCompatTextView appCompatTextView11 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView11 != null) {
                                                                                                i = C3417R.C3420id.text_section_actions;
                                                                                                AppCompatTextView appCompatTextView12 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView12 != null) {
                                                                                                    i = C3417R.C3420id.text_section_name;
                                                                                                    AppCompatTextView appCompatTextView13 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView13 != null) {
                                                                                                        i = C3417R.C3420id.text_status_title;
                                                                                                        AppCompatTextView appCompatTextView14 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (appCompatTextView14 != null) {
                                                                                                            i = C3417R.C3420id.text_status_value;
                                                                                                            AppCompatTextView appCompatTextView15 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (appCompatTextView15 != null) {
                                                                                                                i = C3417R.C3420id.text_transaction_amount;
                                                                                                                AppCompatTextView appCompatTextView16 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (appCompatTextView16 != null) {
                                                                                                                    i = C3417R.C3420id.text_transaction_type;
                                                                                                                    AppCompatTextView appCompatTextView17 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (appCompatTextView17 != null) {
                                                                                                                        i = C3417R.C3420id.view_divider;
                                                                                                                        DividerView dividerView4 = (DividerView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (dividerView4 != null) {
                                                                                                                            return new ForkContentWalletTransactionDetailsLayoutBinding(linearLayout, cardView, constraintLayout, constraintLayout2, linearLayout, dividerView, dividerView2, dividerView3, appCompatImageView, appCompatImageView2, actionBarMenuItem, linearLayout2, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13, appCompatTextView14, appCompatTextView15, appCompatTextView16, appCompatTextView17, dividerView4);
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
