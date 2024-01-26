package org.ton.hashmap;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmnFork.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmnFork<T> implements HashMapNode<T> {
    private static final SerialDescriptor $cachedDescriptor;
    private final CellRef<HmEdge<T>> left;
    private final CellRef<HmEdge<T>> right;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HmnFork) {
            HmnFork hmnFork = (HmnFork) obj;
            return Intrinsics.areEqual(this.left, hmnFork.left) && Intrinsics.areEqual(this.right, hmnFork.right);
        }
        return false;
    }

    public int hashCode() {
        return (this.left.hashCode() * 31) + this.right.hashCode();
    }

    public /* synthetic */ HmnFork(int i, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, $cachedDescriptor);
        }
        this.left = cellRef;
        this.right = cellRef2;
    }

    public HmnFork(CellRef<HmEdge<T>> left, CellRef<HmEdge<T>> right) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(right, "right");
        this.left = left;
        this.right = right;
    }

    public static final /* synthetic */ void write$Self(HmnFork hmnFork, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], hmnFork.left);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], hmnFork.right);
    }

    public final CellRef<HmEdge<T>> getLeft() {
        return this.left;
    }

    public final CellRef<HmEdge<T>> getRight() {
        return this.right;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmnFork.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<HmnFork<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new HmnFork$$serializer(typeSerial0);
        }

        public final <X> TlbCodec<HmnFork<X>> tlbCodec(int i, TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new HashMapNodeForkTlbConstructor(i, x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("hmn_fork", null, 2);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.LEFT, false);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.RIGHT, false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hmn_fork");
        open.field(TtmlNode.LEFT, this.left);
        open.field(TtmlNode.RIGHT, this.right);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
