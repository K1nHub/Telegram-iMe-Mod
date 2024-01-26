package org.ton.hashmap;

import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.hashmap.HashmapAugE;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugE.kt */
/* loaded from: classes6.dex */
public final class AhmeEmptyImpl<X, Y> implements HashmapAugE.AhmeEmpty<X, Y> {
    private final Y extra;

    /* renamed from: n */
    private final int f2090n;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AhmeEmptyImpl) {
            AhmeEmptyImpl ahmeEmptyImpl = (AhmeEmptyImpl) obj;
            return this.f2090n == ahmeEmptyImpl.f2090n && Intrinsics.areEqual(this.extra, ahmeEmptyImpl.extra);
        }
        return false;
    }

    @Override // org.ton.hashmap.HashmapAugE
    public HashmapAugNode.AhmnLeaf<X, Y> get(BitString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    public int hashCode() {
        int i = this.f2090n * 31;
        Y y = this.extra;
        return i + (y == null ? 0 : y.hashCode());
    }

    public AhmeEmptyImpl(int i, Y y) {
        this.f2090n = i;
        this.extra = y;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return HashmapAugE.AhmeEmpty.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.hashmap.HashmapAugE.AhmeEmpty
    public int getN() {
        return this.f2090n;
    }

    @Override // org.ton.hashmap.HashmapAugE.AhmeEmpty
    public Y getExtra() {
        return this.extra;
    }

    public Iterator<Pair<BitString, HashmapAugNode<X, Y>>> iterator() {
        return new AhmnNodeIterator(null);
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
