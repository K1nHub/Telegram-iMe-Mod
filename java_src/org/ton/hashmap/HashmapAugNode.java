package org.ton.hashmap;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.Intrinsics;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HashmapAugNode.kt */
/* loaded from: classes6.dex */
public interface HashmapAugNode<X, Y> extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: HashmapAugNode.kt */
    /* loaded from: classes6.dex */
    public interface AhmnLeaf<X, Y> extends HashmapAugNode<X, Y> {
        public static final Companion Companion = Companion.$$INSTANCE;

        Y getExtra();

        X getValue();

        /* compiled from: HashmapAugNode.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final <X, Y> TlbCodec<AhmnLeaf<X, Y>> tlbCodec(TlbCodec<X> x, TlbCodec<Y> y) {
                Intrinsics.checkNotNullParameter(x, "x");
                Intrinsics.checkNotNullParameter(y, "y");
                return new AhmnLeafTlbConstructor(x, y);
            }
        }

        /* compiled from: HashmapAugNode.kt */
        /* loaded from: classes6.dex */
        public static final class DefaultImpls {
            public static <X, Y> TlbPrettyPrinter print(AhmnLeaf<X, Y> ahmnLeaf, TlbPrettyPrinter printer) {
                Intrinsics.checkNotNullParameter(printer, "printer");
                TlbPrettyPrinter open = printer.open("ahmn_leaf");
                open.field("extra", ahmnLeaf.getExtra());
                open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, ahmnLeaf.getValue());
                TlbPrettyPrinter.close$default(open, null, 1, null);
                return printer;
            }
        }
    }

    /* compiled from: HashmapAugNode.kt */
    /* loaded from: classes6.dex */
    public interface AhmnFork<X, Y> extends HashmapAugNode<X, Y> {
        public static final Companion Companion = Companion.$$INSTANCE;

        Y getExtra();

        CellRef<HashmapAug<X, Y>> getLeft();

        int getN();

        CellRef<HashmapAug<X, Y>> getRight();

        HashmapAug<X, Y> loadLeft();

        HashmapAug<X, Y> loadRight();

        /* compiled from: HashmapAugNode.kt */
        /* loaded from: classes6.dex */
        public static final class DefaultImpls {
            public static <X, Y> HashmapAug<X, Y> loadLeft(AhmnFork<X, Y> ahmnFork) {
                return ahmnFork.getLeft().getValue();
            }

            public static <X, Y> HashmapAug<X, Y> loadRight(AhmnFork<X, Y> ahmnFork) {
                return ahmnFork.getRight().getValue();
            }

            public static <X, Y> TlbPrettyPrinter print(AhmnFork<X, Y> ahmnFork, TlbPrettyPrinter printer) {
                Intrinsics.checkNotNullParameter(printer, "printer");
                TlbPrettyPrinter open = printer.open("ahmn_fork");
                open.field(TtmlNode.LEFT, ahmnFork.getLeft());
                open.field(TtmlNode.RIGHT, ahmnFork.getRight());
                open.field("extra", ahmnFork.getExtra());
                TlbPrettyPrinter.close$default(open, null, 1, null);
                return printer;
            }
        }

        /* compiled from: HashmapAugNode.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final <X, Y> TlbCodec<AhmnFork<X, Y>> tlbCodec(TlbCodec<X> x, TlbCodec<Y> y, int i) {
                Intrinsics.checkNotNullParameter(x, "x");
                Intrinsics.checkNotNullParameter(y, "y");
                return new AhmnForkTlbConstructor(x, y, i);
            }
        }
    }

    /* compiled from: HashmapAugNode.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <X, Y> TlbCodec<HashmapAugNode<X, Y>> tlbCodec(TlbCodec<X> x, TlbCodec<Y> y, int i) {
            TlbCodec<AhmnLeaf<X, Y>> tlbCodec;
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y, "y");
            if (i == 0) {
                tlbCodec = AhmnLeaf.Companion.tlbCodec(x, y);
            } else {
                tlbCodec = AhmnFork.Companion.tlbCodec(x, y, i);
            }
            Intrinsics.checkNotNull(tlbCodec, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashmapAugNode<X of org.ton.hashmap.HashmapAugNode.Companion.tlbCodec, Y of org.ton.hashmap.HashmapAugNode.Companion.tlbCodec>>");
            return tlbCodec;
        }
    }
}
