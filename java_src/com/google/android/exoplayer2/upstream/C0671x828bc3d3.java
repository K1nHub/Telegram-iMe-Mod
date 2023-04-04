package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.common.base.Predicate;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0671x828bc3d3 implements Predicate {
    public static final /* synthetic */ C0671x828bc3d3 INSTANCE = new C0671x828bc3d3();

    private /* synthetic */ C0671x828bc3d3() {
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean lambda$entrySet$1;
        lambda$entrySet$1 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
        return lambda$entrySet$1;
    }
}
