package p034j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
public class C2687r extends C2610G {

    /* renamed from: f */
    final /* synthetic */ SortedSet f679f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687r(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f679f = sortedSet;
    }

    @Override // p034j$.util.C2610G, p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        return this.f679f.comparator();
    }
}