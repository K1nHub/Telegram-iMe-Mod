package org.ton.hashmap;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.AbstractIterator;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.hashmap.HashmapAug;
import org.ton.hashmap.HashmapAugNode;
/* compiled from: HashmapAug.kt */
/* loaded from: classes6.dex */
public final class AhmnNodeIterator<X, Y> extends AbstractIterator<Pair<? extends BitString, ? extends HashmapAugNode<X, Y>>> {
    private final ArrayDeque<WalkState<X, Y>> state = new ArrayDeque<>();

    public AhmnNodeIterator(HashmapAug.AhmEdge<X, Y> ahmEdge) {
        if (ahmEdge != null) {
            addState(ahmEdge.getLabel().toBitString(), ahmEdge.getNode());
        } else {
            done();
        }
    }

    private final void addState(BitString bitString, HashmapAugNode<X, Y> hashmapAugNode) {
        if (hashmapAugNode instanceof HashmapAugNode.AhmnFork) {
            this.state.addFirst(new WalkState.Fork(bitString, (HashmapAugNode.AhmnFork) hashmapAugNode));
        } else if (hashmapAugNode instanceof HashmapAugNode.AhmnLeaf) {
            this.state.addFirst(new WalkState.Leaf(bitString, (HashmapAugNode.AhmnLeaf) hashmapAugNode));
        }
    }

    /* compiled from: HashmapAug.kt */
    /* loaded from: classes6.dex */
    public static abstract class WalkState<X, Y> {
        private final HashmapAugNode<X, Y> node;

        public /* synthetic */ WalkState(HashmapAugNode hashmapAugNode, DefaultConstructorMarker defaultConstructorMarker) {
            this(hashmapAugNode);
        }

        public abstract Pair<BitString, HashmapAugNode<X, Y>> step();

        private WalkState(HashmapAugNode<X, Y> hashmapAugNode) {
            this.node = hashmapAugNode;
        }

        public HashmapAugNode<X, Y> getNode() {
            return this.node;
        }

        /* compiled from: HashmapAug.kt */
        /* loaded from: classes6.dex */
        public static final class Leaf<X, Y> extends WalkState<X, Y> {
            private final HashmapAugNode.AhmnLeaf<X, Y> node;
            private final BitString prefix;
            private boolean visited;

            @Override // org.ton.hashmap.AhmnNodeIterator.WalkState
            public HashmapAugNode.AhmnLeaf<X, Y> getNode() {
                return this.node;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Leaf(BitString prefix, HashmapAugNode.AhmnLeaf<X, Y> node) {
                super(node, null);
                Intrinsics.checkNotNullParameter(prefix, "prefix");
                Intrinsics.checkNotNullParameter(node, "node");
                this.prefix = prefix;
                this.node = node;
            }

            @Override // org.ton.hashmap.AhmnNodeIterator.WalkState
            public Pair<BitString, HashmapAugNode<X, Y>> step() {
                if (this.visited) {
                    return null;
                }
                this.visited = true;
                return TuplesKt.m144to(this.prefix, getNode());
            }
        }

        /* compiled from: HashmapAug.kt */
        /* loaded from: classes6.dex */
        public static final class Fork<X, Y> extends WalkState<X, Y> {
            private boolean leftVisited;
            private final HashmapAugNode.AhmnFork<X, Y> node;
            private final BitString prefix;
            private boolean rightVisited;
            private boolean rootVisited;

            @Override // org.ton.hashmap.AhmnNodeIterator.WalkState
            public HashmapAugNode.AhmnFork<X, Y> getNode() {
                return this.node;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Fork(BitString prefix, HashmapAugNode.AhmnFork<X, Y> node) {
                super(node, null);
                Intrinsics.checkNotNullParameter(prefix, "prefix");
                Intrinsics.checkNotNullParameter(node, "node");
                this.prefix = prefix;
                this.node = node;
            }

            @Override // org.ton.hashmap.AhmnNodeIterator.WalkState
            public Pair<BitString, HashmapAugNode<X, Y>> step() {
                if (!this.rootVisited) {
                    this.rootVisited = true;
                    return TuplesKt.m144to(this.prefix, getNode());
                } else if (this.leftVisited) {
                    if (this.rightVisited) {
                        return null;
                    }
                    this.rightVisited = true;
                    HashmapAug<X, Y> value = getNode().getRight().getValue();
                    Intrinsics.checkNotNull(value, "null cannot be cast to non-null type org.ton.hashmap.HashmapAug.AhmEdge<X of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork, Y of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork>");
                    HashmapAug.AhmEdge ahmEdge = (HashmapAug.AhmEdge) value;
                    CellBuilder beginCell = CellBuilder.Companion.beginCell();
                    beginCell.storeBits(this.prefix);
                    beginCell.storeBit(true);
                    beginCell.storeBits(ahmEdge.getLabel().toBitString());
                    return TuplesKt.m144to(beginCell.getBits().toBitString(), ahmEdge.getNode());
                } else {
                    this.leftVisited = true;
                    HashmapAug<X, Y> value2 = getNode().getLeft().getValue();
                    Intrinsics.checkNotNull(value2, "null cannot be cast to non-null type org.ton.hashmap.HashmapAug.AhmEdge<X of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork, Y of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork>");
                    HashmapAug.AhmEdge ahmEdge2 = (HashmapAug.AhmEdge) value2;
                    CellBuilder beginCell2 = CellBuilder.Companion.beginCell();
                    beginCell2.storeBits(this.prefix);
                    beginCell2.storeBit(false);
                    beginCell2.storeBits(ahmEdge2.getLabel().toBitString());
                    return TuplesKt.m144to(beginCell2.getBits().toBitString(), ahmEdge2.getNode());
                }
            }
        }
    }

    @Override // kotlin.collections.AbstractIterator
    protected void computeNext() {
        Pair<BitString, HashmapAugNode<X, Y>> gotoNext = gotoNext();
        if (gotoNext != null) {
            setNext(gotoNext);
        } else {
            done();
        }
    }

    private final Pair<BitString, HashmapAugNode<X, Y>> gotoNext() {
        Pair<BitString, HashmapAugNode<X, Y>> step;
        while (true) {
            WalkState<X, Y> firstOrNull = this.state.firstOrNull();
            if (firstOrNull == null) {
                return null;
            }
            step = firstOrNull.step();
            if (step == null) {
                this.state.removeFirst();
            } else {
                BitString component1 = step.component1();
                HashmapAugNode<X, Y> component2 = step.component2();
                if (Intrinsics.areEqual(component2, firstOrNull.getNode()) || (component2 instanceof HashmapAugNode.AhmnLeaf)) {
                    break;
                }
                addState(component1, component2);
            }
        }
        return step;
    }
}
