package kotlin.reflect.jvm.internal.impl.resolve.sam;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
/* compiled from: SamConversionResolverImpl.kt */
/* loaded from: classes4.dex */
public final class SamConversionResolverImpl implements SamConversionResolver {
    private final Iterable<Object> samWithReceiverResolvers;

    public SamConversionResolverImpl(StorageManager storageManager, Iterable<? extends Object> samWithReceiverResolvers) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(samWithReceiverResolvers, "samWithReceiverResolvers");
        this.samWithReceiverResolvers = samWithReceiverResolvers;
        storageManager.createCacheWithNullableValues();
    }
}
