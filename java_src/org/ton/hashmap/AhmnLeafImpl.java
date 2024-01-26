package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugNode.kt */
/* loaded from: classes6.dex */
public final class AhmnLeafImpl<X, Y> implements HashmapAugNode.AhmnLeaf<X, Y> {
    private final Y extra;
    private final X value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AhmnLeafImpl) {
            AhmnLeafImpl ahmnLeafImpl = (AhmnLeafImpl) obj;
            return Intrinsics.areEqual(this.extra, ahmnLeafImpl.extra) && Intrinsics.areEqual(this.value, ahmnLeafImpl.value);
        }
        return false;
    }

    public int hashCode() {
        Y y = this.extra;
        int hashCode = (y == null ? 0 : y.hashCode()) * 31;
        X x = this.value;
        return hashCode + (x != null ? x.hashCode() : 0);
    }

    public AhmnLeafImpl(Y y, X x) {
        this.extra = y;
        this.value = x;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return HashmapAugNode.AhmnLeaf.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnLeaf
    public Y getExtra() {
        return this.extra;
    }

    @Override // org.ton.hashmap.HashmapAugNode.AhmnLeaf
    public X getValue() {
        return this.value;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
