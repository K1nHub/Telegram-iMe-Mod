package com.iMe.p031ui.custom.donation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkRecycleItemWalletTokenBalanceBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: DonationBalanceView.kt */
/* renamed from: com.iMe.ui.custom.donation.DonationBalanceView */
/* loaded from: classes3.dex */
public final class DonationBalanceView extends FrameLayout {
    private ForkRecycleItemWalletTokenBalanceBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DonationBalanceView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DonationBalanceView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationBalanceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkRecycleItemWalletTokenBalanceBinding inflate = ForkRecycleItemWalletTokenBalanceBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setBalance(TokenBalance balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        ForkRecycleItemWalletTokenBalanceBinding forkRecycleItemWalletTokenBalanceBinding = this.binding;
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalance.setText(TokenBalanceExtKt.getTotalBalance(balance));
        AppCompatImageView imageCoinIcon = forkRecycleItemWalletTokenBalanceBinding.imageCoinIcon;
        Intrinsics.checkNotNullExpressionValue(imageCoinIcon, "imageCoinIcon");
        ImageViewExtKt.loadFrom$default(imageCoinIcon, balance.getToken().getAvatarUrl(), null, false, 6, null);
        forkRecycleItemWalletTokenBalanceBinding.textAccountTitle.setText(balance.getToken().getName());
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars.setText(TokenBalanceExtKt.getDollarsBalanceText(balance));
        forkRecycleItemWalletTokenBalanceBinding.textCoinTicker.setText(balance.getToken().getTicker());
    }

    public final void setupColors() {
        List<AppCompatTextView> listOf;
        ForkRecycleItemWalletTokenBalanceBinding forkRecycleItemWalletTokenBalanceBinding = this.binding;
        forkRecycleItemWalletTokenBalanceBinding.getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{forkRecycleItemWalletTokenBalanceBinding.textAccountBalance, forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars});
        for (AppCompatTextView setupColors$lambda$2$lambda$1 : listOf) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
            ViewExtKt.withMediumTypeface(setupColors$lambda$2$lambda$1);
        }
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        forkRecycleItemWalletTokenBalanceBinding.textAccountTitle.setTextColor(Theme.getColor(Theme.key_chats_actionBackground));
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalance.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        forkRecycleItemWalletTokenBalanceBinding.textCoinTicker.setupColors();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.binding.getRoot().setPadding(i, i2, i3, i4);
    }

    private final void setupView() {
        setupColors();
        ConstraintLayout constraintLayout = this.binding.constraintTradeInfo;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.constraintTradeInfo");
        ViewExtKt.gone$default(constraintLayout, false, 1, null);
        addView(this.binding.getRoot());
    }
}
