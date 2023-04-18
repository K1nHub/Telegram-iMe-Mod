package org.telegram.p044ui.Components;

import java.util.Comparator;
import org.telegram.p044ui.Components.CacheChart;
/* renamed from: org.telegram.ui.Components.CacheChart$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class CacheChart$$ExternalSyntheticLambda0 implements Comparator {
    public static final /* synthetic */ CacheChart$$ExternalSyntheticLambda0 INSTANCE = new CacheChart$$ExternalSyntheticLambda0();

    private /* synthetic */ CacheChart$$ExternalSyntheticLambda0() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$setSegments$0;
        lambda$setSegments$0 = CacheChart.lambda$setSegments$0((CacheChart.SegmentSize) obj, (CacheChart.SegmentSize) obj2);
        return lambda$setSegments$0;
    }
}
