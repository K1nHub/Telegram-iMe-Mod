package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingSafeWithdrawalBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBoxSquare;
/* compiled from: StakingSafeWithdrawalView.kt */
/* renamed from: com.iMe.ui.custom.StakingSafeWithdrawalView */
/* loaded from: classes3.dex */
public final class StakingSafeWithdrawalView extends FrameLayout {
    private ForkContentStakingSafeWithdrawalBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingSafeWithdrawalView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingSafeWithdrawalView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingSafeWithdrawalView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentStakingSafeWithdrawalBinding inflate = ForkContentStakingSafeWithdrawalBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setupViewData(boolean z, final Callbacks$Callback1<Boolean> onCheckedAction, final Callbacks$Callback onInfoClickAction) {
        Intrinsics.checkNotNullParameter(onCheckedAction, "onCheckedAction");
        Intrinsics.checkNotNullParameter(onInfoClickAction, "onInfoClickAction");
        ForkContentStakingSafeWithdrawalBinding forkContentStakingSafeWithdrawalBinding = this.binding;
        final CheckBoxSquare checkBoxSquare = forkContentStakingSafeWithdrawalBinding.checkboxSafeWithdrawal;
        checkBoxSquare.setChecked(z, false);
        LinearLayoutCompat linearSafeWithdrawal = forkContentStakingSafeWithdrawalBinding.linearSafeWithdrawal;
        Intrinsics.checkNotNullExpressionValue(linearSafeWithdrawal, "linearSafeWithdrawal");
        ViewExtKt.setMixedClickListener(linearSafeWithdrawal, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.StakingSafeWithdrawalView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingSafeWithdrawalView.setupViewData$lambda$3$lambda$1$lambda$0(CheckBoxSquare.this, onCheckedAction, (View) obj);
            }
        });
        AppCompatImageView imageHelp = forkContentStakingSafeWithdrawalBinding.imageHelp;
        Intrinsics.checkNotNullExpressionValue(imageHelp, "imageHelp");
        ViewExtKt.setMixedClickListener(imageHelp, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.StakingSafeWithdrawalView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingSafeWithdrawalView.setupViewData$lambda$3$lambda$2(Callbacks$Callback.this, (View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$3$lambda$1$lambda$0(CheckBoxSquare this_with, Callbacks$Callback1 onCheckedAction, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(onCheckedAction, "$onCheckedAction");
        this_with.setChecked(!this_with.isChecked(), true);
        onCheckedAction.invoke(Boolean.valueOf(this_with.isChecked()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$3$lambda$2(Callbacks$Callback onInfoClickAction, View view) {
        Intrinsics.checkNotNullParameter(onInfoClickAction, "$onInfoClickAction");
        onInfoClickAction.invoke();
    }

    public final void setupColors() {
        ForkContentStakingSafeWithdrawalBinding forkContentStakingSafeWithdrawalBinding = this.binding;
        forkContentStakingSafeWithdrawalBinding.checkboxSafeWithdrawal.setColors(Theme.key_checkboxSquareUnchecked, Theme.key_checkboxSquareBackground, Theme.key_checkboxSquareCheck);
        forkContentStakingSafeWithdrawalBinding.textSafeWithdrawal.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        AppCompatImageView setupColors$lambda$5$lambda$4 = forkContentStakingSafeWithdrawalBinding.imageHelp;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$4, "setupColors$lambda$5$lambda$4");
        ViewExtKt.setImageColor(setupColors$lambda$5$lambda$4, Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        ViewExtKt.setBoundedCircleRippleBackground(setupColors$lambda$5$lambda$4);
    }

    private final void setupView() {
        setupColors();
        this.binding.textSafeWithdrawal.setText(LocaleController.getInternalString(C3419R.string.staking_withdraw_safe_withdrawal));
        addView(this.binding.getRoot());
    }
}
