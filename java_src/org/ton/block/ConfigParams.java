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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HmEdge;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ConfigParams.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ConfigParams implements TlbObject {
    private final CellRef<HmEdge<Cell>> config;
    private final BitString configAddr;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConfigParams) {
            ConfigParams configParams = (ConfigParams) obj;
            return Intrinsics.areEqual(this.configAddr, configParams.configAddr) && Intrinsics.areEqual(this.config, configParams.config);
        }
        return false;
    }

    public int hashCode() {
        return (this.configAddr.hashCode() * 31) + this.config.hashCode();
    }

    public /* synthetic */ ConfigParams(int i, BitString bitString, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ConfigParams$$serializer.INSTANCE.getDescriptor());
        }
        this.configAddr = bitString;
        this.config = cellRef;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public ConfigParams(BitString configAddr, CellRef<HmEdge<Cell>> config) {
        Intrinsics.checkNotNullParameter(configAddr, "configAddr");
        Intrinsics.checkNotNullParameter(config, "config");
        this.configAddr = configAddr;
        this.config = config;
        if (!(configAddr.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static final /* synthetic */ void write$Self(ConfigParams configParams, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, configParams.configAddr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], configParams.config);
    }

    public final BitString getConfigAddr() {
        return this.configAddr;
    }

    public final CellRef<HmEdge<Cell>> getConfig() {
        return this.config;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ConfigParams.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ConfigParams> {
        private final /* synthetic */ ConfigParamsTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ConfigParams loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ConfigParams loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ConfigParams value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ConfigParams> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ConfigParamsTlbConstructor.INSTANCE;
        }

        public final KSerializer<ConfigParams> serializer() {
            return ConfigParams$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("config_addr", this.configAddr);
        open.field("config", this.config);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
