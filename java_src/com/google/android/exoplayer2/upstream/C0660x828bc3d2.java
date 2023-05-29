package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.common.base.Predicate;
/* renamed from: com.google.android.exoplayer2.upstream.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0660x828bc3d2 implements Predicate {
    public static final /* synthetic */ C0660x828bc3d2 INSTANCE = new C0660x828bc3d2();

    private /* synthetic */ C0660x828bc3d2() {
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean lambda$keySet$0;
        lambda$keySet$0 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
        return lambda$keySet$0;
    }
}
