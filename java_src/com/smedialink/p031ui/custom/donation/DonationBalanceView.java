package com.smedialink.p031ui.custom.donation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.databinding.ForkRecycleItemWalletTokenBalanceBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: DonationBalanceView.kt */
/* renamed from: com.smedialink.ui.custom.donation.DonationBalanceView */
/* loaded from: classes3.dex */
public final class DonationBalanceView extends FrameLayout implements KoinComponent {
    private ForkRecycleItemWalletTokenBalanceBinding binding;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DonationBalanceView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DonationBalanceView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationBalanceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new DonationBalanceView$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        ForkRecycleItemWalletTokenBalanceBinding inflate = ForkRecycleItemWalletTokenBalanceBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setBalance(TokenBalance balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        ForkRecycleItemWalletTokenBalanceBinding forkRecycleItemWalletTokenBalanceBinding = this.binding;
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalance.setText(TokenBalanceExtKt.getTotalBalance(balance));
        forkRecycleItemWalletTokenBalanceBinding.imageCoinIcon.setImageResource(TokenInfoExtKt.getLogo(balance.getInfo(), NetworkType.BINANCE_SMART_CHAIN));
        forkRecycleItemWalletTokenBalanceBinding.textAccountTitle.setText(getResourceManager().getString(balance.getInfo().getFullName()));
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars.setText(TokenBalanceExtKt.getDollarsBalanceText(balance, getResourceManager()));
        forkRecycleItemWalletTokenBalanceBinding.textCoinTicker.setTicker(balance.getInfo(), getResourceManager());
    }

    public final void setupColors() {
        List<AppCompatTextView> listOf;
        ForkRecycleItemWalletTokenBalanceBinding forkRecycleItemWalletTokenBalanceBinding = this.binding;
        forkRecycleItemWalletTokenBalanceBinding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{forkRecycleItemWalletTokenBalanceBinding.textAccountBalance, forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars});
        for (AppCompatTextView setupColors$lambda$2$lambda$1 : listOf) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
            ViewExtKt.withMediumTypeface(setupColors$lambda$2$lambda$1);
        }
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalanceInDollars.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        forkRecycleItemWalletTokenBalanceBinding.textAccountTitle.setTextColor(Theme.getColor("chats_actionBackground"));
        forkRecycleItemWalletTokenBalanceBinding.textAccountBalance.setTextColor(Theme.getColor("chat_messagePanelText"));
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
        ViewExtKt.gone(constraintLayout);
        addView(this.binding.getRoot());
    }
}
