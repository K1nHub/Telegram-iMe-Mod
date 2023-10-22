package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.bitstring.BitString;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HashmapAugE.kt */
@JsonClassDiscriminator(discriminator = "@type")
/* loaded from: classes6.dex */
public interface HashmapAugE<X, Y> extends TlbObject, KMappedMarker, TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    HashmapAugNode.AhmnLeaf<X, Y> get(BitString bitString);

    /* compiled from: HashmapAugE.kt */
    /* loaded from: classes6.dex */
    public interface AhmeEmpty<X, Y> extends HashmapAugE<X, Y> {
        public static final Companion Companion = Companion.$$INSTANCE;

        Y getExtra();

        int getN();

        /* compiled from: HashmapAugE.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final <X, Y> TlbCodec<AhmeEmpty<X, Y>> tlbCodec(int i, TlbCodec<Y> y) {
                Intrinsics.checkNotNullParameter(y, "y");
                return new AhmeEmptyTlbConstructor(i, y);
            }
        }

        /* compiled from: HashmapAugE.kt */
        /* loaded from: classes6.dex */
        public static final class DefaultImpls {
            public static <X, Y> TlbPrettyPrinter print(AhmeEmpty<X, Y> ahmeEmpty, TlbPrettyPrinter printer) {
                Intrinsics.checkNotNullParameter(printer, "printer");
                TlbPrettyPrinter open = printer.open("ahme_empty");
                open.field("extra", ahmeEmpty.getExtra());
                TlbPrettyPrinter.close$default(open, null, 1, null);
                return printer;
            }
        }
    }

    /* compiled from: HashmapAugE.kt */
    /* loaded from: classes6.dex */
    public interface AhmeRoot<X, Y> extends HashmapAugE<X, Y> {
        public static final Companion Companion = Companion.$$INSTANCE;

        Y getExtra();

        int getN();

        CellRef<HashmapAug<X, Y>> getRoot();

        /* compiled from: HashmapAugE.kt */
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final <X, Y> TlbCodec<AhmeRoot<X, Y>> tlbCodec(int i, TlbCodec<X> x, TlbCodec<Y> y) {
                Intrinsics.checkNotNullParameter(x, "x");
                Intrinsics.checkNotNullParameter(y, "y");
                return new AhmeRootTlbConstructor(i, x, y);
            }
        }

        /* compiled from: HashmapAugE.kt */
        /* loaded from: classes6.dex */
        public static final class DefaultImpls {
            public static <X, Y> TlbPrettyPrinter print(AhmeRoot<X, Y> ahmeRoot, TlbPrettyPrinter printer) {
                Intrinsics.checkNotNullParameter(printer, "printer");
                TlbPrettyPrinter open = printer.open("ame_root");
                open.field("root", ahmeRoot.getRoot());
                open.field("extra", ahmeRoot.getExtra());
                TlbPrettyPrinter.close$default(open, null, 1, null);
                return printer;
            }
        }
    }

    /* compiled from: HashmapAugE.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <X, Y> TlbCodec<HashmapAugE<X, Y>> tlbCodec(int i, TlbCodec<X> x, TlbCodec<Y> y) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(y, "y");
            return new HashmapAugETlbCombinator(i, x, y, null, null, 24, null);
        }
    }
}
