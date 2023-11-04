package org.ton.hashmap;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.AbstractIterator;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmEdge.kt */
/* loaded from: classes6.dex */
public final class HmEdgeIterator<T> extends AbstractIterator<Pair<? extends BitString, ? extends T>> {
    private final ArrayDeque<WalkState<T>> state;

    public HmEdgeIterator(HmEdge<T> start) {
        Intrinsics.checkNotNullParameter(start, "start");
        this.state = new ArrayDeque<>();
        addState(start.getLabel().toBitString(), start.getNode());
    }

    private final void addState(BitString bitString, HashMapNode<T> hashMapNode) {
        if (hashMapNode instanceof HmnFork) {
            this.state.addFirst(new WalkState.Fork(bitString, (HmnFork) hashMapNode));
        } else if (hashMapNode instanceof HmnLeaf) {
            this.state.addFirst(new WalkState.Leaf(bitString, (HmnLeaf) hashMapNode));
        }
    }

    /* compiled from: HmEdge.kt */
    /* loaded from: classes6.dex */
    public static abstract class WalkState<T> {
        private final HashMapNode<T> node;

        public /* synthetic */ WalkState(HashMapNode hashMapNode, DefaultConstructorMarker defaultConstructorMarker) {
            this(hashMapNode);
        }

        public abstract Pair<BitString, HashMapNode<T>> step();

        private WalkState(HashMapNode<T> hashMapNode) {
            this.node = hashMapNode;
        }

        /* compiled from: HmEdge.kt */
        /* loaded from: classes6.dex */
        public static final class Leaf<T> extends WalkState<T> {
            private final HmnLeaf<T> node;
            private final BitString prefix;
            private boolean visited;

            public HmnLeaf<T> getNode() {
                return this.node;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Leaf(BitString prefix, HmnLeaf<T> node) {
                super(node, null);
                Intrinsics.checkNotNullParameter(prefix, "prefix");
                Intrinsics.checkNotNullParameter(node, "node");
                this.prefix = prefix;
                this.node = node;
            }

            @Override // org.ton.hashmap.HmEdgeIterator.WalkState
            public Pair<BitString, HashMapNode<T>> step() {
                if (this.visited) {
                    return null;
                }
                this.visited = true;
                return TuplesKt.m146to(this.prefix, getNode());
            }
        }

        /* compiled from: HmEdge.kt */
        /* loaded from: classes6.dex */
        public static final class Fork<T> extends WalkState<T> {
            private boolean leftVisited;
            private final HmnFork<T> node;
            private final BitString prefix;
            private boolean rightVisited;

            public HmnFork<T> getNode() {
                return this.node;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Fork(BitString prefix, HmnFork<T> node) {
                super(node, null);
                Intrinsics.checkNotNullParameter(prefix, "prefix");
                Intrinsics.checkNotNullParameter(node, "node");
                this.prefix = prefix;
                this.node = node;
            }

            @Override // org.ton.hashmap.HmEdgeIterator.WalkState
            public Pair<BitString, HashMapNode<T>> step() {
                if (this.leftVisited) {
                    if (this.rightVisited) {
                        return null;
                    }
                    this.rightVisited = true;
                    CellBuilder beginCell = CellBuilder.Companion.beginCell();
                    beginCell.storeBits(this.prefix);
                    beginCell.storeBit(true);
                    beginCell.storeBits(getNode().getRight().getValue().getLabel().toBitString());
                    return TuplesKt.m146to(beginCell.getBits().toBitString(), getNode().getRight().getValue().getNode());
                }
                this.leftVisited = true;
                CellBuilder beginCell2 = CellBuilder.Companion.beginCell();
                beginCell2.storeBits(this.prefix);
                beginCell2.storeBit(false);
                beginCell2.storeBits(getNode().getLeft().getValue().getLabel().toBitString());
                return TuplesKt.m146to(beginCell2.getBits().toBitString(), getNode().getLeft().getValue().getNode());
            }
        }
    }

    @Override // kotlin.collections.AbstractIterator
    protected void computeNext() {
        Pair gotoNext = gotoNext();
        if (gotoNext != null) {
            setNext(gotoNext);
        } else {
            done();
        }
    }

    private final Pair<BitString, T> gotoNext() {
        while (true) {
            WalkState<T> firstOrNull = this.state.firstOrNull();
            if (firstOrNull == null) {
                return null;
            }
            Pair<BitString, HashMapNode<T>> step = firstOrNull.step();
            if (step == null) {
                this.state.removeFirst();
            } else {
                BitString component1 = step.component1();
                HashMapNode<T> component2 = step.component2();
                if (component2 instanceof HmnLeaf) {
                    return TuplesKt.m146to(component1, ((HmnLeaf) component2).getValue());
                }
                addState(component1, component2);
            }
        }
    }
}
