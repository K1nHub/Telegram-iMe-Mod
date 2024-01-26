package org.ton.hashmap;

import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.hashmap.HashmapAug;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAug.kt */
/* loaded from: classes6.dex */
public final class AhmeEdgeImpl<X, Y> implements HashmapAug.AhmEdge<X, Y> {
    private final HmLabel label;

    /* renamed from: n */
    private final int f2089n;
    private final HashmapAugNode<X, Y> node;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AhmeEdgeImpl) {
            AhmeEdgeImpl ahmeEdgeImpl = (AhmeEdgeImpl) obj;
            return this.f2089n == ahmeEdgeImpl.f2089n && Intrinsics.areEqual(this.label, ahmeEdgeImpl.label) && Intrinsics.areEqual(this.node, ahmeEdgeImpl.node);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f2089n * 31) + this.label.hashCode()) * 31) + this.node.hashCode();
    }

    public AhmeEdgeImpl(int i, HmLabel label, HashmapAugNode<X, Y> node) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(node, "node");
        this.f2089n = i;
        this.label = label;
        this.node = node;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return HashmapAug.AhmEdge.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.hashmap.HashmapAug.AhmEdge
    public int getN() {
        return this.f2089n;
    }

    @Override // org.ton.hashmap.HashmapAug.AhmEdge
    public HmLabel getLabel() {
        return this.label;
    }

    @Override // org.ton.hashmap.HashmapAug.AhmEdge
    public HashmapAugNode<X, Y> getNode() {
        return this.node;
    }

    @Override // org.ton.hashmap.HashmapAug
    public HashmapAugNode.AhmnLeaf<X, Y> get(BitString key) {
        BitString bitString;
        BitString commonPrefixWith;
        HashmapAugNode<X, Y> node;
        HashmapAug<X, Y> loadLeft;
        Intrinsics.checkNotNullParameter(key, "key");
        HashmapAug.AhmEdge ahmEdge = this;
        while (true) {
            bitString = ahmEdge.getLabel().toBitString();
            commonPrefixWith = key.commonPrefixWith(bitString.toBitString());
            node = ahmEdge.getNode();
            if (node instanceof HashmapAugNode.AhmnLeaf) {
                break;
            } else if (node instanceof HashmapAugNode.AhmnFork) {
                if (key.get(commonPrefixWith.getSize())) {
                    loadLeft = ((HashmapAugNode.AhmnFork) node).loadRight();
                } else {
                    loadLeft = ((HashmapAugNode.AhmnFork) node).loadLeft();
                }
                Intrinsics.checkNotNull(loadLeft, "null cannot be cast to non-null type org.ton.hashmap.HashmapAug.AhmEdge<X of org.ton.hashmap.AhmeEdgeImpl, Y of org.ton.hashmap.AhmeEdgeImpl>");
                ahmEdge = (HashmapAug.AhmEdge) loadLeft;
                key = BitString.DefaultImpls.slice$default(key, commonPrefixWith.getSize() + 1, 0, 2, null);
            }
        }
        if (commonPrefixWith.getSize() != bitString.getSize()) {
            return null;
        }
        return (HashmapAugNode.AhmnLeaf) node;
    }

    @Override // org.ton.hashmap.HashmapAug
    public Iterator<Pair<BitString, HashmapAugNode<X, Y>>> iterator() {
        return new AhmnNodeIterator(this);
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
