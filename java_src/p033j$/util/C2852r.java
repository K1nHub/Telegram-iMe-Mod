package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
public class C2852r extends C2775G {

    /* renamed from: f */
    final /* synthetic */ SortedSet f764f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2852r(SortedSet sortedSet, Collection collection, int i) {
        super(collection, i);
        this.f764f = sortedSet;
    }

    @Override // p033j$.util.C2775G, p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        return this.f764f.comparator();
    }
}
