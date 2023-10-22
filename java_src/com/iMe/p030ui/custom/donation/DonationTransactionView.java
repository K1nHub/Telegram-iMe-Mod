package com.iMe.p030ui.custom.donation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p030ui.custom.DividerView;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.databinding.ForkRecycleItemWalletDonationTransactionBinding;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: DonationTransactionView.kt */
/* renamed from: com.iMe.ui.custom.donation.DonationTransactionView */
/* loaded from: classes3.dex */
public final class DonationTransactionView extends FrameLayout implements KoinComponent {
    private ForkRecycleItemWalletDonationTransactionBinding binding;
    private final Lazy resourceManager$delegate;
    private final Lazy telegramControllersGateway$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DonationTransactionView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DonationTransactionView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationTransactionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramControllersGateway>() { // from class: com.iMe.ui.custom.donation.DonationTransactionView$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.gateway.TelegramControllersGateway, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramControllersGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), qualifier, function0);
            }
        });
        this.telegramControllersGateway$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.donation.DonationTransactionView$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.resourceManager$delegate = lazy2;
        ForkRecycleItemWalletDonationTransactionBinding inflate = ForkRecycleItemWalletDonationTransactionBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final TelegramControllersGateway getTelegramControllersGateway() {
        return (TelegramControllersGateway) this.telegramControllersGateway$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void showDivider(boolean z) {
        DividerView dividerView = this.binding.viewDivider;
        Intrinsics.checkNotNullExpressionValue(dividerView, "binding.viewDivider");
        dividerView.setVisibility(z ? 0 : 8);
    }

    public final void setTransaction(TransactionItem item) {
        String substring;
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getTransaction() instanceof Transaction.Crypto.Donation) {
            ForkRecycleItemWalletDonationTransactionBinding forkRecycleItemWalletDonationTransactionBinding = this.binding;
            TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(getTelegramControllersGateway(), 0, 1, null).getUser(Long.valueOf(Long.parseLong(((Transaction.Crypto.Donation) item.getTransaction()).getSenderAccountId())));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            forkRecycleItemWalletDonationTransactionBinding.imageUserAvatar.getImageReceiver().setRoundRadius(getResources().getDimensionPixelSize(C3630R.dimen.telegram_avatar_size_medium) / 2);
            if (user != null) {
                avatarDrawable.setInfo(user);
                forkRecycleItemWalletDonationTransactionBinding.imageUserAvatar.setForUserOrChat(user, avatarDrawable);
                forkRecycleItemWalletDonationTransactionBinding.textUserFullName.setText(UserObject.getUserName(user));
            } else {
                long parseLong = Long.parseLong(((Transaction.Crypto.Donation) item.getTransaction()).getSenderAccountId());
                substring = StringsKt__StringsKt.substring(((Transaction.Crypto.Donation) item.getTransaction()).getSenderAccountId(), new IntRange(0, 1));
                avatarDrawable.setInfo(parseLong, null, null, substring);
                forkRecycleItemWalletDonationTransactionBinding.imageUserAvatar.setImageDrawable(avatarDrawable);
                forkRecycleItemWalletDonationTransactionBinding.textUserFullName.setText(getResourceManager().getString(C3630R.string.common_id, Long.valueOf(Long.parseLong(((Transaction.Crypto.Donation) item.getTransaction()).getSenderAccountId()))));
            }
            forkRecycleItemWalletDonationTransactionBinding.textDate.setText(item.getTransactionDate());
            forkRecycleItemWalletDonationTransactionBinding.textCoinTicker.setText(item.getTransaction().getToken().getTicker());
            forkRecycleItemWalletDonationTransactionBinding.textAmount.setText(item.getAmountWithSymbol(false));
            AppCompatTextView textUserFullName = forkRecycleItemWalletDonationTransactionBinding.textUserFullName;
            Intrinsics.checkNotNullExpressionValue(textUserFullName, "textUserFullName");
            ViewExtKt.withMediumTypeface(textUserFullName);
            AppCompatTextView textAmount = forkRecycleItemWalletDonationTransactionBinding.textAmount;
            Intrinsics.checkNotNullExpressionValue(textAmount, "textAmount");
            ViewExtKt.withMediumTypeface(textAmount);
        }
    }

    public final void setupColors() {
        List<AppCompatTextView> listOf;
        ForkRecycleItemWalletDonationTransactionBinding forkRecycleItemWalletDonationTransactionBinding = this.binding;
        forkRecycleItemWalletDonationTransactionBinding.getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{forkRecycleItemWalletDonationTransactionBinding.textUserFullName, forkRecycleItemWalletDonationTransactionBinding.textAmount});
        for (AppCompatTextView appCompatTextView : listOf) {
            appCompatTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        forkRecycleItemWalletDonationTransactionBinding.textDate.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        forkRecycleItemWalletDonationTransactionBinding.textCoinTicker.setupColors();
        forkRecycleItemWalletDonationTransactionBinding.viewDivider.setupColors();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.binding.getRoot().setPadding(i, i2, i3, i4);
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }
}
