package com.iMe.utils.formatter;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: MaskFormatter.kt */
/* loaded from: classes4.dex */
public final class MaskFormatter implements KoinComponent {
    private static final String HIDDEN_MASK;
    public static final MaskFormatter INSTANCE;
    private static final Lazy resourceManager$delegate;

    private MaskFormatter() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public static final String formatBalanceOrMask(boolean z, Number balance, int i, int i2) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        if (z) {
            return HIDDEN_MASK;
        }
        return BalanceFormatter.formatBalance(balance, i) + ' ' + INSTANCE.getResourceManager().getString(i2);
    }

    public final String textOrMask(boolean z, String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return z ? HIDDEN_MASK : text;
    }

    static {
        Lazy lazy;
        String repeat;
        MaskFormatter maskFormatter = new MaskFormatter();
        INSTANCE = maskFormatter;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new MaskFormatter$special$$inlined$inject$default$1(maskFormatter, null, null));
        resourceManager$delegate = lazy;
        repeat = StringsKt__StringsJVMKt.repeat("*", 4);
        HIDDEN_MASK = repeat;
    }
}
