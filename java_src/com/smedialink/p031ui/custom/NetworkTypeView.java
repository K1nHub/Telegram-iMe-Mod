package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: NetworkTypeView.kt */
/* renamed from: com.smedialink.ui.custom.NetworkTypeView */
/* loaded from: classes3.dex */
public final class NetworkTypeView extends TextView implements KoinComponent {
    private NetworkType networkType;
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
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new NetworkTypeView$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        this.networkType = NetworkType.BINANCE_SMART_CHAIN;
        setTextSize(12.0f);
        setGravity(17);
        setIncludeFontPadding(false);
        ViewExtKt.withMediumTypeface(this);
        ViewExtKt.setVerticalPadding(this, 4);
        ViewExtKt.setHorizontalPadding(this, 10);
        setTag("network_type_view");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final void setNetworkType(NetworkType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.networkType = value;
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m51dp(15.0f), getResourceManager().getColor(value.getBackgroundColor())));
        setText(getResourceManager().getString(value.getTitle()));
        setTextColor(getResourceManager().getColor(value.getTextColor()));
        setCompoundDrawablesWithIntrinsicBounds(value.getSmallIcon(), 0, C3286R.C3288drawable.fork_ic_arrow_down_16, 0);
        setCompoundDrawablePadding(AndroidUtilities.m50dp(4));
        ViewExtKt.setCompoundDrawablesColor(this, getResourceManager().getColor(value.getTextColor()));
    }

    /* compiled from: NetworkTypeView.kt */
    /* renamed from: com.smedialink.ui.custom.NetworkTypeView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
