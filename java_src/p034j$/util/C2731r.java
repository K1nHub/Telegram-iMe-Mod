package p034j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
public class C2731r extends C2654G {

    /* renamed from: f */
    final /* synthetic */ SortedSet f682f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2731r(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f682f = sortedSet;
    }

    @Override // p034j$.util.C2654G, p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        return this.f682f.comparator();
    }
}
