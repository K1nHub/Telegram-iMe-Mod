package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* renamed from: j$.util.q */
/* loaded from: classes2.dex */
class C2847q extends C2767D {

    /* renamed from: f */
    final /* synthetic */ SortedSet f811f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847q(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f811f = sortedSet;
    }

    @Override // p033j$.util.C2767D, p033j$.util.Spliterator
    public Comparator getComparator() {
        return this.f811f.comparator();
    }
}
