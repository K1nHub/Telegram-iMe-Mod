package org.ton.block;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.block.BinTree;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: BinTreeLeaf.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BinTreeLeaf<X> implements BinTree<X> {
    private static final SerialDescriptor $cachedDescriptor;
    public static final Companion Companion = new Companion(null);
    private final X leaf;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinTreeLeaf) && Intrinsics.areEqual(this.leaf, ((BinTreeLeaf) obj).leaf);
    }

    public int hashCode() {
        X x = this.leaf;
        if (x == null) {
            return 0;
        }
        return x.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ BinTreeLeaf(int i, Object obj, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
        }
        this.leaf = obj;
    }

    public BinTreeLeaf(X x) {
        this.leaf = x;
    }

    @Override // java.lang.Iterable
    public Iterator<X> iterator() {
        return BinTree.DefaultImpls.iterator(this);
    }

    public final X getLeaf() {
        return this.leaf;
    }

    @Override // org.ton.block.BinTree
    public Sequence<X> nodes() {
        Sequence<X> sequenceOf;
        sequenceOf = SequencesKt__SequencesKt.sequenceOf(this.leaf);
        return sequenceOf;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BinTreeLeaf.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<BinTreeLeaf<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new BinTreeLeaf$$serializer(typeSerial0);
        }

        public final <X> org.ton.tlb.TlbConstructor<BinTreeLeaf<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new BinTreeTlbConstructor(x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("bt_leaf", null, 1);
        pluginGeneratedSerialDescriptor.addElement("leaf", false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("bt_leaf");
        open.field("leaf", this.leaf);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
