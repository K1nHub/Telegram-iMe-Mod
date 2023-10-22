package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugNode.kt */
/* loaded from: classes6.dex */
public final class AhmnForkImpl<X, Y> implements HashmapAugNode.AhmnFork<X, Y> {
    private final Y extra;
    private final CellRef<HashmapAug<X, Y>> left;

    /* renamed from: n */
    private final int f2065n;
    private final CellRef<HashmapAug<X, Y>> right;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AhmnForkImpl) {
            AhmnForkImpl ahmnForkImpl = (AhmnForkImpl) obj;
            return this.f2065n == ahmnForkImpl.f2065n && Intrinsics.areEqual(this.left, ahmnForkImpl.left) && Intrinsics.areEqual(this.right, ahmnForkImpl.right) && Intrinsics.areEqual(this.extra, ahmnForkImpl.extra);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((this.f2065n * 31) + this.left.hashCode()) * 31) + this.right.hashCode()) * 31;
        Y y = this.extra;
        return hashCode + (y == null ? 0 : y.hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AhmnForkImpl(int i, CellRef<? extends HashmapAug<X, Y>> left, CellRef<? extends HashmapAug<X, Y>> right, Y y) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(right, "right");
        this.f2065n = i;
        this.left = left;
        this.right = right;
        this.extra = y;
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public HashmapAug<X, Y> loadLeft() {
        return HashmapAugNode.AhmnFork.DefaultImpls.loadLeft(this);
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public HashmapAug<X, Y> loadRight() {
        return HashmapAugNode.AhmnFork.DefaultImpls.loadRight(this);
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return HashmapAugNode.AhmnFork.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public int getN() {
        return this.f2065n;
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public CellRef<HashmapAug<X, Y>> getLeft() {
        return this.left;
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public CellRef<HashmapAug<X, Y>> getRight() {
        return this.right;
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnFork
    public Y getExtra() {
        return this.extra;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
