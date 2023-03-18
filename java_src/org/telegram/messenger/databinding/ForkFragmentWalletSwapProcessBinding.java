package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.smedialink.p031ui.custom.ActionButton;
import com.smedialink.p031ui.custom.FeeView;
import com.smedialink.p031ui.custom.NetworkTypeView;
import org.telegram.messenger.C3286R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletSwapProcessBinding implements ViewBinding {
    public final ActionButton buttonAction;
    public final ConstraintLayout constraintFromToken;
    public final ConstraintLayout constraintToToken;
    public final AppCompatEditText editFromAmount;
    public final AppCompatEditText editToAmount;
    public final FeeView feeView;
    public final Group groupFromSelectedToken;
    public final Group groupToSelectedToken;
    public final AppCompatImageView imageExchangeArrow;
    public final AppCompatImageView imageFromIcon;
    public final AppCompatImageView imageSwapProtocolIcon;
    public final AppCompatImageView imageToIcon;
    public final AppCompatImageView imageTokenFrom;
    public final AppCompatImageView imageTokenTo;
    public final LinearLayout linearChooseFrom;
    public final LinearLayout linearChooseTo;
    public final NetworkTypeView networkTypeInputView;
    public final NetworkTypeView networkTypeOutputView;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textFromAdditionalDescription;
    public final AppCompatTextView textFromDescription;
    public final AppCompatTextView textFromToken;
    public final AppCompatTextView textSelectFromToken;
    public final AppCompatTextView textSelectToToken;
    public final AppCompatTextView textSwapProtocolDescription;
    public final AppCompatTextView textToDescription;
    public final AppCompatTextView textToToken;
    public final AppCompatTextView textWhatIsApprove;

    private ForkFragmentWalletSwapProcessBinding(ConstraintLayout constraintLayout, ActionButton actionButton, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, FeeView feeView, Group group, Group group2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, LinearLayout linearLayout, LinearLayout linearLayout2, NetworkTypeView networkTypeView, NetworkTypeView networkTypeView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9) {
        this.rootView = constraintLayout;
        this.buttonAction = actionButton;
        this.constraintFromToken = constraintLayout2;
        this.constraintToToken = constraintLayout3;
        this.editFromAmount = appCompatEditText;
        this.editToAmount = appCompatEditText2;
        this.feeView = feeView;
        this.groupFromSelectedToken = group;
        this.groupToSelectedToken = group2;
        this.imageExchangeArrow = appCompatImageView;
        this.imageFromIcon = appCompatImageView2;
        this.imageSwapProtocolIcon = appCompatImageView3;
        this.imageToIcon = appCompatImageView4;
        this.imageTokenFrom = appCompatImageView5;
        this.imageTokenTo = appCompatImageView6;
        this.linearChooseFrom = linearLayout;
        this.linearChooseTo = linearLayout2;
        this.networkTypeInputView = networkTypeView;
        this.networkTypeOutputView = networkTypeView2;
        this.textFromAdditionalDescription = appCompatTextView;
        this.textFromDescription = appCompatTextView2;
        this.textFromToken = appCompatTextView3;
        this.textSelectFromToken = appCompatTextView4;
        this.textSelectToToken = appCompatTextView5;
        this.textSwapProtocolDescription = appCompatTextView6;
        this.textToDescription = appCompatTextView7;
        this.textToToken = appCompatTextView8;
        this.textWhatIsApprove = appCompatTextView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletSwapProcessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletSwapProcessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_fragment_wallet_swap_process, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletSwapProcessBinding bind(View view) {
        int i = C3286R.C3289id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3286R.C3289id.constraint_from_token;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3286R.C3289id.constraint_to_token;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    i = C3286R.C3289id.edit_from_amount;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                    if (appCompatEditText != null) {
                        i = C3286R.C3289id.edit_to_amount;
                        AppCompatEditText appCompatEditText2 = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                        if (appCompatEditText2 != null) {
                            i = C3286R.C3289id.fee_view;
                            FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                            if (feeView != null) {
                                i = C3286R.C3289id.group_from_selected_token;
                                Group group = (Group) ViewBindings.findChildViewById(view, i);
                                if (group != null) {
                                    i = C3286R.C3289id.group_to_selected_token;
                                    Group group2 = (Group) ViewBindings.findChildViewById(view, i);
                                    if (group2 != null) {
                                        i = C3286R.C3289id.image_exchange_arrow;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatImageView != null) {
                                            i = C3286R.C3289id.image_from_icon;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatImageView2 != null) {
                                                i = C3286R.C3289id.image_swap_protocol_icon;
                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatImageView3 != null) {
                                                    i = C3286R.C3289id.image_to_icon;
                                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatImageView4 != null) {
                                                        i = C3286R.C3289id.image_token_from;
                                                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatImageView5 != null) {
                                                            i = C3286R.C3289id.image_token_to;
                                                            AppCompatImageView appCompatImageView6 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatImageView6 != null) {
                                                                i = C3286R.C3289id.linear_choose_from;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout != null) {
                                                                    i = C3286R.C3289id.linear_choose_to;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout2 != null) {
                                                                        i = C3286R.C3289id.network_type_input_view;
                                                                        NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                                                                        if (networkTypeView != null) {
                                                                            i = C3286R.C3289id.network_type_output_view;
                                                                            NetworkTypeView networkTypeView2 = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                                                                            if (networkTypeView2 != null) {
                                                                                i = C3286R.C3289id.text_from_additional_description;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView != null) {
                                                                                    i = C3286R.C3289id.text_from_description;
                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView2 != null) {
                                                                                        i = C3286R.C3289id.text_from_token;
                                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView3 != null) {
                                                                                            i = C3286R.C3289id.text_select_from_token;
                                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView4 != null) {
                                                                                                i = C3286R.C3289id.text_select_to_token;
                                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView5 != null) {
                                                                                                    i = C3286R.C3289id.text_swap_protocol_description;
                                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView6 != null) {
                                                                                                        i = C3286R.C3289id.text_to_description;
                                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (appCompatTextView7 != null) {
                                                                                                            i = C3286R.C3289id.text_to_token;
                                                                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (appCompatTextView8 != null) {
                                                                                                                i = C3286R.C3289id.text_what_is_approve;
                                                                                                                AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (appCompatTextView9 != null) {
                                                                                                                    return new ForkFragmentWalletSwapProcessBinding((ConstraintLayout) view, actionButton, constraintLayout, constraintLayout2, appCompatEditText, appCompatEditText2, feeView, group, group2, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, linearLayout, linearLayout2, networkTypeView, networkTypeView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9);
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
