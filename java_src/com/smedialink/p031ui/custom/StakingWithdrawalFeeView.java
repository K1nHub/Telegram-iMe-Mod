package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingWithdrawalFeeBinding;
/* compiled from: StakingWithdrawalFeeView.kt */
/* renamed from: com.smedialink.ui.custom.StakingWithdrawalFeeView */
/* loaded from: classes3.dex */
public final class StakingWithdrawalFeeView extends FrameLayout {
    private ForkContentStakingWithdrawalFeeBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingWithdrawalFeeView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingWithdrawalFeeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingWithdrawalFeeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentStakingWithdrawalFeeBinding inflate = ForkContentStakingWithdrawalFeeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setupViewData(String feeValueText, String timeValueText) {
        Intrinsics.checkNotNullParameter(feeValueText, "feeValueText");
        Intrinsics.checkNotNullParameter(timeValueText, "timeValueText");
        ForkContentStakingWithdrawalFeeBinding forkContentStakingWithdrawalFeeBinding = this.binding;
        forkContentStakingWithdrawalFeeBinding.textFeeValue.setText(feeValueText);
        forkContentStakingWithdrawalFeeBinding.textTimeValue.setText(timeValueText);
    }

    public final void setupColors() {
        ForkContentStakingWithdrawalFeeBinding forkContentStakingWithdrawalFeeBinding = this.binding;
        AppCompatTextView textFeeTitle = forkContentStakingWithdrawalFeeBinding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        AppCompatTextView textTimeTitle = forkContentStakingWithdrawalFeeBinding.textTimeTitle;
        Intrinsics.checkNotNullExpressionValue(textTimeTitle, "textTimeTitle");
        ViewExtKt.setTextsColor("windowBackgroundWhiteGrayText4", textFeeTitle, textTimeTitle);
        AppCompatTextView textFeeValue = forkContentStakingWithdrawalFeeBinding.textFeeValue;
        Intrinsics.checkNotNullExpressionValue(textFeeValue, "textFeeValue");
        AppCompatTextView textTimeValue = forkContentStakingWithdrawalFeeBinding.textTimeValue;
        Intrinsics.checkNotNullExpressionValue(textTimeValue, "textTimeValue");
        ViewExtKt.setTextsColor("chat_messagePanelText", textFeeValue, textTimeValue);
    }

    private final void setupView() {
        setupColors();
        setupTexts();
        addView(this.binding.getRoot());
    }

    private final void setupTexts() {
        ForkContentStakingWithdrawalFeeBinding forkContentStakingWithdrawalFeeBinding = this.binding;
        forkContentStakingWithdrawalFeeBinding.textFeeTitle.setText(LocaleController.getInternalString(C3301R.string.staking_withdraw_fee_title));
        forkContentStakingWithdrawalFeeBinding.textTimeTitle.setText(LocaleController.getInternalString(C3301R.string.staking_withdraw_time_title));
    }
}
