package kotlinx.serialization.internal;

import java.util.List;
import kotlin.Result;
import kotlinx.serialization.KSerializer;
import p033j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
public final class ParametrizedCacheEntry<T> {
    private final ConcurrentHashMap<List<KTypeWrapper>, Result<KSerializer<T>>> serializers = new ConcurrentHashMap<>();

    public static final /* synthetic */ ConcurrentHashMap access$getSerializers$p(ParametrizedCacheEntry parametrizedCacheEntry) {
        return parametrizedCacheEntry.serializers;
    }
}
