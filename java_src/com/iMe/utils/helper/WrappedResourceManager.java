package com.iMe.utils.helper;

import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WrappedResourceManager.kt */
/* loaded from: classes4.dex */
public final class WrappedResourceManager implements KoinComponent {
    public static final WrappedResourceManager INSTANCE;
    private static final Lazy resourceManager$delegate;

    private WrappedResourceManager() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public static final String getString(int i) {
        return INSTANCE.getResourceManager().getString(i);
    }

    public static final String getString(int i, Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        return INSTANCE.getResourceManager().getString(i, Arrays.copyOf(formatArgs, formatArgs.length));
    }

    static {
        Lazy lazy;
        WrappedResourceManager wrappedResourceManager = new WrappedResourceManager();
        INSTANCE = wrappedResourceManager;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WrappedResourceManager$special$$inlined$inject$default$1(wrappedResourceManager, null, null));
        resourceManager$delegate = lazy;
    }
}
