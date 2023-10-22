package org.ton.hashmap;

import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.ton.bitstring.BitString;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HashmapAug.kt */
/* loaded from: classes6.dex */
public interface HashmapAug<X, Y> extends TlbObject, KMappedMarker, TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    HashmapAugNode.AhmnLeaf<X, Y> get(BitString bitString);

    Iterator<Pair<BitString, HashmapAugNode<X, Y>>> iterator();

    /* compiled from: HashmapAug.kt */
    /* loaded from: classes6.dex */
    public interface AhmEdge<X, Y> extends HashmapAug<X, Y> {
        public static final Companion Companion = Companion.$$INSTANCE;

        HmLabel getLabel();

        int getN();

        HashmapAugNode<X, Y> getNode();

        /* compiled from: HashmapAug.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final <X, Y> TlbCodec<AhmEdge<X, Y>> tlbCodec(int i, TlbCodec<X> x, TlbCodec<Y> y) {
                Intrinsics.checkNotNullParameter(x, "x");
                Intrinsics.checkNotNullParameter(y, "y");
                return new AhmEdgeTlbConstructor(i, x, y);
            }
        }

        /* compiled from: HashmapAug.kt */
        /* loaded from: classes6.dex */
        public static final class DefaultImpls {
            public static <X, Y> TlbPrettyPrinter print(AhmEdge<X, Y> ahmEdge, TlbPrettyPrinter printer) {
                Intrinsics.checkNotNullParameter(printer, "printer");
                TlbPrettyPrinter open = printer.open("ahm_edge");
                open.field("label", ahmEdge.getLabel());
                open.field("node", ahmEdge.getNode());
                TlbPrettyPrinter.close$default(open, null, 1, null);
                return printer;
            }
        }
    }

    /* compiled from: HashmapAug.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <X, Y> AhmEdge<X, Y> edge(int i, HmLabel label, HashmapAugNode<X, Y> node) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(node, "node");
            return new AhmeEdgeImpl(i, label, node);
        }

        public final <X, Y> TlbCodec<HashmapAug<X, Y>> tlbCodec(int i, TlbCodec<X> x, TlbCodec<Y> y) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y, "y");
            TlbCodec<AhmEdge<X, Y>> tlbCodec = AhmEdge.Companion.tlbCodec(i, x, y);
            Intrinsics.checkNotNull(tlbCodec, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashmapAug<X of org.ton.hashmap.HashmapAug.Companion.tlbCodec, Y of org.ton.hashmap.HashmapAug.Companion.tlbCodec>>");
            return tlbCodec;
        }
    }
}
