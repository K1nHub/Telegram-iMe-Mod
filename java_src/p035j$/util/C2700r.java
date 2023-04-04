package p035j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
public class C2700r extends C2623G {

    /* renamed from: f */
    final /* synthetic */ SortedSet f684f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2700r(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f684f = sortedSet;
    }

    @Override // p035j$.util.C2623G, p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        return this.f684f.comparator();
    }
}
