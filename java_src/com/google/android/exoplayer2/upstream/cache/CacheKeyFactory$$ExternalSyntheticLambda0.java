package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
/* loaded from: classes.dex */
public final /* synthetic */ class CacheKeyFactory$$ExternalSyntheticLambda0 implements CacheKeyFactory {
    public static final /* synthetic */ CacheKeyFactory$$ExternalSyntheticLambda0 INSTANCE = new CacheKeyFactory$$ExternalSyntheticLambda0();

    private /* synthetic */ CacheKeyFactory$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
    public final String buildCacheKey(DataSpec dataSpec) {
        String lambda$static$0;
        lambda$static$0 = CacheKeyFactory.CC.lambda$static$0(dataSpec);
        return lambda$static$0;
    }
}
