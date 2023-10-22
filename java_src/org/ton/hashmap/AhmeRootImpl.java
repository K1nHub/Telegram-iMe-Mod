package org.ton.hashmap;

import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.hashmap.HashmapAugE;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugE.kt */
/* loaded from: classes6.dex */
public final class AhmeRootImpl<X, Y> implements HashmapAugE.AhmeRoot<X, Y> {
    private final Y extra;

    /* renamed from: n */
    private final int f2062n;
    private final CellRef<HashmapAug<X, Y>> root;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AhmeRootImpl) {
            AhmeRootImpl ahmeRootImpl = (AhmeRootImpl) obj;
            return this.f2062n == ahmeRootImpl.f2062n && Intrinsics.areEqual(this.root, ahmeRootImpl.root) && Intrinsics.areEqual(this.extra, ahmeRootImpl.extra);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.f2062n * 31) + this.root.hashCode()) * 31;
        Y y = this.extra;
        return hashCode + (y == null ? 0 : y.hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AhmeRootImpl(int i, CellRef<? extends HashmapAug<X, Y>> root, Y y) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.f2062n = i;
        this.root = root;
        this.extra = y;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return HashmapAugE.AhmeRoot.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.hashmap.HashmapAugE.AhmeRoot
    public int getN() {
        return this.f2062n;
    }

    @Override // org.ton.hashmap.HashmapAugE.AhmeRoot
    public CellRef<HashmapAug<X, Y>> getRoot() {
        return this.root;
    }

    @Override // org.ton.hashmap.HashmapAugE.AhmeRoot
    public Y getExtra() {
        return this.extra;
    }

    @Override // org.ton.hashmap.HashmapAugE
    public HashmapAugNode.AhmnLeaf<X, Y> get(BitString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getRoot().getValue().get(key);
    }

    public Iterator<Pair<BitString, HashmapAugNode<X, Y>>> iterator() {
        return getRoot().getValue().iterator();
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
