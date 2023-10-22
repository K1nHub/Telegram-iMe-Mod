package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.ChooseRecipientOptionsView;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletSendBinding implements ViewBinding {
    public final TransactionActionButtonsView buttonSend;
    public final ChooseRecipientOptionsView choiceAddressButtons;
    public final RLottieImageView imageHeader;
    public final AppCompatImageView imageNetwork;
    public final TitledInputFieldView inputAmount;
    public final TitledInputFieldView inputComment;
    public final TitledInputFieldView inputRecipient;
    public final TitledInputFieldView inputToken;
    public final LinearLayout linearCryptoSettings;
    public final LinearLayout linearSelectNetwork;
    public final NetworkTypeView networkTypeView;
    private final NestedScrollView rootView;
    public final TextView textHeader;
    public final TextView textNetwork;
    public final TextView textTokenBalance;
    public final TextView textTokenBalanceInDollars;
    public final FeeView viewFee;

    private ForkFragmentWalletSendBinding(NestedScrollView nestedScrollView, TransactionActionButtonsView transactionActionButtonsView, ChooseRecipientOptionsView chooseRecipientOptionsView, RLottieImageView rLottieImageView, AppCompatImageView appCompatImageView, TitledInputFieldView titledInputFieldView, TitledInputFieldView titledInputFieldView2, TitledInputFieldView titledInputFieldView3, TitledInputFieldView titledInputFieldView4, LinearLayout linearLayout, LinearLayout linearLayout2, NetworkTypeView networkTypeView, TextView textView, TextView textView2, TextView textView3, TextView textView4, FeeView feeView) {
        this.rootView = nestedScrollView;
        this.buttonSend = transactionActionButtonsView;
        this.choiceAddressButtons = chooseRecipientOptionsView;
        this.imageHeader = rLottieImageView;
        this.imageNetwork = appCompatImageView;
        this.inputAmount = titledInputFieldView;
        this.inputComment = titledInputFieldView2;
        this.inputRecipient = titledInputFieldView3;
        this.inputToken = titledInputFieldView4;
        this.linearCryptoSettings = linearLayout;
        this.linearSelectNetwork = linearLayout2;
        this.networkTypeView = networkTypeView;
        this.textHeader = textView;
        this.textNetwork = textView2;
        this.textTokenBalance = textView3;
        this.textTokenBalanceInDollars = textView4;
        this.viewFee = feeView;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletSendBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletSendBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_fragment_wallet_send, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletSendBinding bind(View view) {
        int i = C3630R.C3633id.button_send;
        TransactionActionButtonsView transactionActionButtonsView = (TransactionActionButtonsView) ViewBindings.findChildViewById(view, i);
        if (transactionActionButtonsView != null) {
            i = C3630R.C3633id.choice_address_buttons;
            ChooseRecipientOptionsView chooseRecipientOptionsView = (ChooseRecipientOptionsView) ViewBindings.findChildViewById(view, i);
            if (chooseRecipientOptionsView != null) {
                i = C3630R.C3633id.image_header;
                RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                if (rLottieImageView != null) {
                    i = C3630R.C3633id.image_network;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView != null) {
                        i = C3630R.C3633id.input_amount;
                        TitledInputFieldView titledInputFieldView = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                        if (titledInputFieldView != null) {
                            i = C3630R.C3633id.input_comment;
                            TitledInputFieldView titledInputFieldView2 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                            if (titledInputFieldView2 != null) {
                                i = C3630R.C3633id.input_recipient;
                                TitledInputFieldView titledInputFieldView3 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                                if (titledInputFieldView3 != null) {
                                    i = C3630R.C3633id.input_token;
                                    TitledInputFieldView titledInputFieldView4 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                                    if (titledInputFieldView4 != null) {
                                        i = C3630R.C3633id.linear_crypto_settings;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = C3630R.C3633id.linear_select_network;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = C3630R.C3633id.network_type_view;
                                                NetworkTypeView networkTypeView = (NetworkTypeView) ViewBindings.findChildViewById(view, i);
                                                if (networkTypeView != null) {
                                                    i = C3630R.C3633id.text_header;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = C3630R.C3633id.text_network;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView2 != null) {
                                                            i = C3630R.C3633id.text_token_balance;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView3 != null) {
                                                                i = C3630R.C3633id.text_token_balance_in_dollars;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView4 != null) {
                                                                    i = C3630R.C3633id.view_fee;
                                                                    FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                                                                    if (feeView != null) {
                                                                        return new ForkFragmentWalletSendBinding((NestedScrollView) view, transactionActionButtonsView, chooseRecipientOptionsView, rLottieImageView, appCompatImageView, titledInputFieldView, titledInputFieldView2, titledInputFieldView3, titledInputFieldView4, linearLayout, linearLayout2, networkTypeView, textView, textView2, textView3, textView4, feeView);
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
