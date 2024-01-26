package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.Unit;
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
import kotlinx.serialization.internal.UnitSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HmEdge;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: LibDescr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LibDescr {
    private final Cell lib;
    private final HmEdge<Unit> publishers;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Cell.class), new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.LibDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), HmEdge.Companion.serializer(UnitSerializer.INSTANCE)};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LibDescr) {
            LibDescr libDescr = (LibDescr) obj;
            return Intrinsics.areEqual(this.lib, libDescr.lib) && Intrinsics.areEqual(this.publishers, libDescr.publishers);
        }
        return false;
    }

    public int hashCode() {
        return (this.lib.hashCode() * 31) + this.publishers.hashCode();
    }

    public String toString() {
        return "LibDescr(lib=" + this.lib + ", publishers=" + this.publishers + ')';
    }

    public /* synthetic */ LibDescr(int i, Cell cell, HmEdge hmEdge, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, LibDescr$$serializer.INSTANCE.getDescriptor());
        }
        this.lib = cell;
        this.publishers = hmEdge;
    }

    public LibDescr(Cell lib, HmEdge<Unit> publishers) {
        Intrinsics.checkNotNullParameter(lib, "lib");
        Intrinsics.checkNotNullParameter(publishers, "publishers");
        this.lib = lib;
        this.publishers = publishers;
    }

    public static final /* synthetic */ void write$Self(LibDescr libDescr, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], libDescr.lib);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], libDescr.publishers);
    }

    public final Cell getLib() {
        return this.lib;
    }

    public final HmEdge<Unit> getPublishers() {
        return this.publishers;
    }

    /* compiled from: LibDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<LibDescr> {
        private final /* synthetic */ LibDescrTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public LibDescr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public LibDescr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, LibDescr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<LibDescr> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = LibDescrTlbConstructor.INSTANCE;
        }

        public final KSerializer<LibDescr> serializer() {
            return LibDescr$$serializer.INSTANCE;
        }
    }
}
