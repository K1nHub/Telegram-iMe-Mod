package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.CryptoboxInfoView;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentCreateCryptoboxBinding implements ViewBinding {
    public final RLottieImageView imageHeader;
    public final TitledInputFieldView inputAmount;
    public final TitledInputFieldView inputCapacity;
    public final TitledInputFieldView inputChat;
    public final TitledInputFieldView inputDescription;
    public final TitledInputFieldView inputToken;
    public final LinearLayout linearChatSettings;
    public final LinearLayout linearCryptoSettings;
    private final NestedScrollView rootView;
    public final TextView textDescription;
    public final TextView textHeader;
    public final TextView textTokenBalance;
    public final TextView textTotalTokens;
    public final TransactionActionButtonsView viewActionButtons;
    public final CryptoboxInfoView viewCryptoboxInfo;
    public final FeeView viewFee;

    private ForkFragmentCreateCryptoboxBinding(NestedScrollView nestedScrollView, RLottieImageView rLottieImageView, TitledInputFieldView titledInputFieldView, TitledInputFieldView titledInputFieldView2, TitledInputFieldView titledInputFieldView3, TitledInputFieldView titledInputFieldView4, TitledInputFieldView titledInputFieldView5, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TransactionActionButtonsView transactionActionButtonsView, CryptoboxInfoView cryptoboxInfoView, FeeView feeView) {
        this.rootView = nestedScrollView;
        this.imageHeader = rLottieImageView;
        this.inputAmount = titledInputFieldView;
        this.inputCapacity = titledInputFieldView2;
        this.inputChat = titledInputFieldView3;
        this.inputDescription = titledInputFieldView4;
        this.inputToken = titledInputFieldView5;
        this.linearChatSettings = linearLayout;
        this.linearCryptoSettings = linearLayout2;
        this.textDescription = textView;
        this.textHeader = textView2;
        this.textTokenBalance = textView3;
        this.textTotalTokens = textView4;
        this.viewActionButtons = transactionActionButtonsView;
        this.viewCryptoboxInfo = cryptoboxInfoView;
        this.viewFee = feeView;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCreateCryptoboxBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCreateCryptoboxBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_create_cryptobox, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCreateCryptoboxBinding bind(View view) {
        int i = C3632R.C3635id.image_header;
        RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
        if (rLottieImageView != null) {
            i = C3632R.C3635id.input_amount;
            TitledInputFieldView titledInputFieldView = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
            if (titledInputFieldView != null) {
                i = C3632R.C3635id.input_capacity;
                TitledInputFieldView titledInputFieldView2 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                if (titledInputFieldView2 != null) {
                    i = C3632R.C3635id.input_chat;
                    TitledInputFieldView titledInputFieldView3 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                    if (titledInputFieldView3 != null) {
                        i = C3632R.C3635id.input_description;
                        TitledInputFieldView titledInputFieldView4 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                        if (titledInputFieldView4 != null) {
                            i = C3632R.C3635id.input_token;
                            TitledInputFieldView titledInputFieldView5 = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
                            if (titledInputFieldView5 != null) {
                                i = C3632R.C3635id.linear_chat_settings;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout != null) {
                                    i = C3632R.C3635id.linear_crypto_settings;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout2 != null) {
                                        i = C3632R.C3635id.text_description;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = C3632R.C3635id.text_header;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                i = C3632R.C3635id.text_token_balance;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView3 != null) {
                                                    i = C3632R.C3635id.text_total_tokens;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView4 != null) {
                                                        i = C3632R.C3635id.view_action_buttons;
                                                        TransactionActionButtonsView transactionActionButtonsView = (TransactionActionButtonsView) ViewBindings.findChildViewById(view, i);
                                                        if (transactionActionButtonsView != null) {
                                                            i = C3632R.C3635id.view_cryptobox_info;
                                                            CryptoboxInfoView cryptoboxInfoView = (CryptoboxInfoView) ViewBindings.findChildViewById(view, i);
                                                            if (cryptoboxInfoView != null) {
                                                                i = C3632R.C3635id.view_fee;
                                                                FeeView feeView = (FeeView) ViewBindings.findChildViewById(view, i);
                                                                if (feeView != null) {
                                                                    return new ForkFragmentCreateCryptoboxBinding((NestedScrollView) view, rLottieImageView, titledInputFieldView, titledInputFieldView2, titledInputFieldView3, titledInputFieldView4, titledInputFieldView5, linearLayout, linearLayout2, textView, textView2, textView3, textView4, transactionActionButtonsView, cryptoboxInfoView, feeView);
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
