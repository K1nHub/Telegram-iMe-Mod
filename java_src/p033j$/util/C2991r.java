package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
public class C2991r extends C2914G {

    /* renamed from: f */
    final /* synthetic */ SortedSet f777f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991r(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f777f = sortedSet;
    }

    @Override // p033j$.util.C2914G, p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        return this.f777f.comparator();
    }
}
