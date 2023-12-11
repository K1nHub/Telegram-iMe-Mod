package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletSwapProcessBinding implements ViewBinding {
    public final AppCompatEditText editInputAmount;
    public final AppCompatEditText editOutputAmount;
    public final FeeView feeView;
    public final AppCompatImageView imageInputArrow;
    public final AppCompatImageView imageInputToken;
    public final AppCompatImageView imageOutputArrow;
    public final AppCompatImageView imageOutputToken;
    public final AppCompatImageView imageSwapProtocolLogo;
    public final AppCompatImageView imageSwapTokensPositions;
    public final LinearLayout linearContent;
    public final LinearLayout linearInputToken;
    public final LinearLayout linearOutputToken;
    private final NestedScrollView rootView;
    public final AppCompatTextView textBalance;
    public final AppCompatTextView textInputAdditionalDescription;
    public final AppCompatTextView textInputFiat;
    public final AppCompatTextView textInputTitle;
    public final AppCompatTextView textInputToken;
    public final AppCompatTextView textOutputFiat;
    public final AppCompatTextView textOutputRate;
    public final AppCompatTextView textOutputTitle;
    public final AppCompatTextView textOutputToken;
    public final AppCompatTextView textSwapProtocolDescription;
    public final TransactionActionButtonsView viewActionButtons;
    public final View viewDividerLeft;
    public final View viewDividerRight;
    public final NetworkTypeView viewInputNetwork;
    public final NetworkTypeView viewOutputNetwork;

    private ForkFragmentWalletSwapProcessBinding(NestedScrollView nestedScrollView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, FeeView feeView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, TransactionActionButtonsView transactionActionButtonsView, View view, View view2, NetworkTypeView networkTypeView, NetworkTypeView networkTypeView2) {
        this.rootView = nestedScrollView;
        this.editInputAmount = appCompatEditText;
        this.editOutputAmount = appCompatEditText2;
        this.feeView = feeView;
        this.imageInputArrow = appCompatImageView;
        this.imageInputToken = appCompatImageView2;
        this.imageOutputArrow = appCompatImageView3;
        this.imageOutputToken = appCompatImageView4;
        this.imageSwapProtocolLogo = appCompatImageView5;
        this.imageSwapTokensPositions = appCompatImageView6;
        this.linearContent = linearLayout;
        this.linearInputToken = linearLayout2;
        this.linearOutputToken = linearLayout3;
        this.textBalance = appCompatTextView;
        this.textInputAdditionalDescription = appCompatTextView2;
        this.textInputFiat = appCompatTextView3;
        this.textInputTitle = appCompatTextView4;
        this.textInputToken = appCompatTextView5;
        this.textOutputFiat = appCompatTextView6;
        this.textOutputRate = appCompatTextView7;
        this.textOutputTitle = appCompatTextView8;
        this.textOutputToken = appCompatTextView9;
        this.textSwapProtocolDescription = appCompatTextView10;
        this.viewActionButtons = transactionActionButtonsView;
        this.viewDividerLeft = view;
        this.viewDividerRight = view2;
        this.viewInputNetwork = networkTypeView;
        this.viewOutputNetwork = networkTypeView2;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletSwapProcessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletSwapProcessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_wallet_swap_process, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletSwapProcessBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        int i = C3632R.C3635id.constraint_input;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C3632R.C3635id.constraint_output;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout2 != null) {
                i = C3632R.C3635id.edit_input_amount;
                AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                if (appCompatEditText != null) {
                    i = C3632R.C3635id.edit_output_amount;
                    AppCompatEditText appCompatEditText2 = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                    if (appCompatEditText2 != null) {
                        i = C3632R.C3635id.fee_view;
                        FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                        if (feeView != null) {
                            i = C3632R.C3635id.image_input_arrow;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView != null) {
                                i = C3632R.C3635id.image_input_token;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView2 != null) {
                                    i = C3632R.C3635id.image_output_arrow;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatImageView3 != null) {
                                        i = C3632R.C3635id.image_output_token;
                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatImageView4 != null) {
                                            i = C3632R.C3635id.image_swap_protocol_logo;
                                            AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatImageView5 != null) {
                                                i = C3632R.C3635id.image_swap_tokens_positions;
                                                AppCompatImageView appCompatImageView6 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatImageView6 != null) {
                                                    i = C3632R.C3635id.linear_content;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout != null) {
                                                        i = C3632R.C3635id.linear_input_token;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout2 != null) {
                                                            i = C3632R.C3635id.linear_output_token;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout3 != null) {
                                                                i = C3632R.C3635id.text_balance;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView != null) {
                                                                    i = C3632R.C3635id.text_input_additional_description;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView2 != null) {
                                                                        i = C3632R.C3635id.text_input_fiat;
                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView3 != null) {
                                                                            i = C3632R.C3635id.text_input_title;
                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView4 != null) {
                                                                                i = C3632R.C3635id.text_input_token;
                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView5 != null) {
                                                                                    i = C3632R.C3635id.text_output_fiat;
                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView6 != null) {
                                                                                        i = C3632R.C3635id.text_output_rate;
                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView7 != null) {
                                                                                            i = C3632R.C3635id.text_output_title;
                                                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView8 != null) {
                                                                                                i = C3632R.C3635id.text_output_token;
                                                                                                AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView9 != null) {
                                                                                                    i = C3632R.C3635id.text_swap_protocol_description;
                                                                                                    AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView10 != null) {
                                                                                                        i = C3632R.C3635id.view_action_buttons;
                                                                                                        TransactionActionButtonsView transactionActionButtonsView = (TransactionActionButtonsView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (transactionActionButtonsView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3632R.C3635id.view_divider_left))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C3632R.C3635id.view_divider_right))) != null) {
                                                                                                            i = C3632R.C3635id.view_input_network;
                                                                                                            NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (networkTypeView != null) {
                                                                                                                i = C3632R.C3635id.view_output_network;
                                                                                                                NetworkTypeView networkTypeView2 = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (networkTypeView2 != null) {
                                                                                                                    return new ForkFragmentWalletSwapProcessBinding((NestedScrollView) view, constraintLayout, constraintLayout2, appCompatEditText, appCompatEditText2, feeView, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, linearLayout, linearLayout2, linearLayout3, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, transactionActionButtonsView, findChildViewById, findChildViewById2, networkTypeView, networkTypeView2);
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
