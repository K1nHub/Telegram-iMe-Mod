package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkContentNetworkTypeBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: NetworkTypeView.kt */
/* renamed from: com.iMe.ui.custom.NetworkTypeView */
/* loaded from: classes3.dex */
public final class NetworkTypeView extends FrameLayout implements KoinComponent {
    private final ForkContentNetworkTypeBinding binding;
    private final Lazy cornerRadius$delegate;
    private boolean isImmutable;
    private NetworkItem network;
    private final Lazy resourceManager$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetworkTypeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NetworkTypeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkTypeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.network = NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getDefault());
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.NetworkTypeView$special$$inlined$inject$default$1
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
        this.resourceManager$delegate = lazy;
        ForkContentNetworkTypeBinding inflate = ForkContentNetworkTypeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.NetworkTypeView$cornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m105dp(15.0f));
            }
        });
        this.cornerRadius$delegate = lazy2;
        setupView();
    }

    public final NetworkItem getNetwork() {
        return this.network;
    }

    public final void setNetwork(NetworkItem value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.network = value;
        updateView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    private final int getNetworkColor() {
        NetworkItem networkItem = this.network;
        if (networkItem instanceof NetworkItem.All) {
            return getResourceManager().getColor(C3634R.C3635color.wallet_network_all);
        }
        if (networkItem instanceof NetworkItem.Crypto) {
            return Color.parseColor(((NetworkItem.Crypto) networkItem).getColorHex());
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void setImmutable() {
        this.isImmutable = true;
        setClickable(false);
        ForkContentNetworkTypeBinding forkContentNetworkTypeBinding = this.binding;
        forkContentNetworkTypeBinding.getRoot().setBackground(Theme.createRoundRectDrawable(getCornerRadius(), getNetworkColor()));
        forkContentNetworkTypeBinding.textNetwork.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    }

    private final void updateView() {
        String str;
        ForkContentNetworkTypeBinding forkContentNetworkTypeBinding = this.binding;
        NetworkItem networkItem = this.network;
        if (networkItem instanceof NetworkItem.All) {
            str = getResourceManager().getString(C3634R.string.networks_all);
            forkContentNetworkTypeBinding.imageNetwork.setImageResource(C3634R.C3636drawable.fork_ic_all_networks_small);
        } else if (networkItem instanceof NetworkItem.Crypto) {
            NetworkItem.Crypto crypto = (NetworkItem.Crypto) networkItem;
            String fullName = crypto.getFullName();
            AppCompatImageView imageNetwork = forkContentNetworkTypeBinding.imageNetwork;
            Intrinsics.checkNotNullExpressionValue(imageNetwork, "imageNetwork");
            ImageViewExtKt.loadFrom$default(imageNetwork, crypto.getSmallLogoUrl(), null, false, 2, null);
            str = fullName;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        forkContentNetworkTypeBinding.getRoot().setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), getNetworkColor(), 1090519039));
        AppCompatTextView updateView$lambda$2$lambda$1 = forkContentNetworkTypeBinding.textNetwork;
        updateView$lambda$2$lambda$1.setText(str);
        if (this.isImmutable) {
            return;
        }
        updateView$lambda$2$lambda$1.setCompoundDrawablesWithIntrinsicBounds(0, 0, C3634R.C3636drawable.fork_ic_arrow_down_16, 0);
        updateView$lambda$2$lambda$1.setCompoundDrawablePadding(AndroidUtilities.m104dp(4));
        Intrinsics.checkNotNullExpressionValue(updateView$lambda$2$lambda$1, "updateView$lambda$2$lambda$1");
        ViewExtKt.setCompoundDrawablesColor(updateView$lambda$2$lambda$1, -1);
    }

    private final void setupView() {
        setupColors();
        setTag("network_type_view");
        addView(this.binding.getRoot());
    }

    private final void setupColors() {
        AppCompatTextView setupColors$lambda$3 = this.binding.textNetwork;
        setupColors$lambda$3.setTextColor(-1);
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$3, "setupColors$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$3);
    }

    /* compiled from: NetworkTypeView.kt */
    /* renamed from: com.iMe.ui.custom.NetworkTypeView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
