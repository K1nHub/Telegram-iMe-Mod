package org.ton.block;

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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: SimpleLib.kt */
@Serializable
/* loaded from: classes6.dex */
public final class SimpleLib implements TlbObject {

    /* renamed from: public  reason: not valid java name */
    private final boolean f2194public;
    private final Cell root;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Cell.class), new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.SimpleLib$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }})};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleLib) {
            SimpleLib simpleLib = (SimpleLib) obj;
            return this.f2194public == simpleLib.f2194public && Intrinsics.areEqual(this.root, simpleLib.root);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.f2194public;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.root.hashCode();
    }

    public String toString() {
        return "SimpleLib(public=" + this.f2194public + ", root=" + this.root + ')';
    }

    public /* synthetic */ SimpleLib(int i, boolean z, Cell cell, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, SimpleLib$$serializer.INSTANCE.getDescriptor());
        }
        this.f2194public = z;
        this.root = cell;
    }

    public SimpleLib(boolean z, Cell root) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.f2194public = z;
        this.root = root;
    }

    public static final /* synthetic */ void write$Self(SimpleLib simpleLib, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, simpleLib.f2194public);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], simpleLib.root);
    }

    public final boolean getPublic() {
        return this.f2194public;
    }

    public final Cell getRoot() {
        return this.root;
    }

    /* compiled from: SimpleLib.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<SimpleLib> {
        private final /* synthetic */ SimpleLibTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public SimpleLib loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public SimpleLib loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, SimpleLib value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = SimpleLibTlbConstructor.INSTANCE;
        }

        public final KSerializer<SimpleLib> serializer() {
            return SimpleLib$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("simple_lib");
        open.field("public", Boolean.valueOf(this.f2194public));
        open.field("root", this.root);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
