package org.ton.hashmap;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmeRoot.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmeRoot<T> implements HashMapE<T> {
    private static final SerialDescriptor $cachedDescriptor;
    private final CellRef<HmEdge<T>> root;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HmeRoot) && Intrinsics.areEqual(this.root, ((HmeRoot) obj).root);
    }

    public int hashCode() {
        return this.root.hashCode();
    }

    public /* synthetic */ HmeRoot(int i, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
        }
        this.root = cellRef;
    }

    public HmeRoot(CellRef<HmEdge<T>> root) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.root = root;
    }

    public final CellRef<HmEdge<T>> getRoot() {
        return this.root;
    }

    @Override // java.lang.Iterable
    public Iterator<Pair<BitString, T>> iterator() {
        return this.root.getValue().iterator();
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmeRoot.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<HmeRoot<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new HmeRoot$$serializer(typeSerial0);
        }

        public final <X> TlbConstructor<HmeRoot<X>> tlbConstructor(int i, TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new RootHashMapETlbConstructor(i, x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("hme_root", null, 1);
        pluginGeneratedSerialDescriptor.addElement("root", false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hme_root");
        open.field("root", this.root);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
