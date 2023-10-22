package org.ton.block;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.block.BinTree;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: BinTreeFork.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BinTreeFork<X> implements BinTree<X> {
    private static final SerialDescriptor $cachedDescriptor;
    private final CellRef<BinTree<X>> left;
    private final CellRef<BinTree<X>> right;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinTreeFork) {
            BinTreeFork binTreeFork = (BinTreeFork) obj;
            return Intrinsics.areEqual(this.left, binTreeFork.left) && Intrinsics.areEqual(this.right, binTreeFork.right);
        }
        return false;
    }

    public int hashCode() {
        return (this.left.hashCode() * 31) + this.right.hashCode();
    }

    public /* synthetic */ BinTreeFork(int i, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, $cachedDescriptor);
        }
        this.left = cellRef;
        this.right = cellRef2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BinTreeFork(CellRef<? extends BinTree<X>> left, CellRef<? extends BinTree<X>> right) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(right, "right");
        this.left = left;
        this.right = right;
    }

    public static final /* synthetic */ void write$Self(BinTreeFork binTreeFork, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], binTreeFork.left);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], binTreeFork.right);
    }

    @Override // java.lang.Iterable
    public Iterator<X> iterator() {
        return BinTree.DefaultImpls.iterator(this);
    }

    public final CellRef<BinTree<X>> getLeft() {
        return this.left;
    }

    public final CellRef<BinTree<X>> getRight() {
        return this.right;
    }

    @Override // org.ton.block.BinTree
    public Sequence<X> nodes() {
        Sequence<X> sequence;
        sequence = SequencesKt__SequenceBuilderKt.sequence(new BinTreeFork$nodes$1(this, null));
        return sequence;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BinTreeFork.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<BinTreeFork<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new BinTreeFork$$serializer(typeSerial0);
        }

        public final <X> org.ton.tlb.TlbConstructor<BinTreeFork<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new BinTreeForkTlbConstructor(x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("bt_fork", null, 2);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.LEFT, false);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.RIGHT, false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("bt_fork");
        open.field(TtmlNode.LEFT, this.left);
        open.field(TtmlNode.RIGHT, this.right);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
