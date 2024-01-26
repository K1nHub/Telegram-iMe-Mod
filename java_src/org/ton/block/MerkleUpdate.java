package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UShort;
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
import kotlinx.serialization.internal.UShortSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: MerkleUpdate.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MerkleUpdate<X> implements TlbObject {
    private static final SerialDescriptor $cachedDescriptor;

    /* renamed from: new  reason: not valid java name */
    private final CellRef<X> f2193new;
    private final short newDepth;
    private final BitString newHash;
    private final CellRef<X> old;
    private final short oldDepth;
    private final BitString oldHash;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public /* synthetic */ MerkleUpdate(int i, BitString bitString, BitString bitString2, UShort uShort, UShort uShort2, CellRef cellRef, CellRef cellRef2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bitString, bitString2, uShort, uShort2, cellRef, cellRef2, serializationConstructorMarker);
    }

    public /* synthetic */ MerkleUpdate(BitString bitString, BitString bitString2, short s, short s2, CellRef cellRef, CellRef cellRef2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitString, bitString2, s, s2, cellRef, cellRef2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MerkleUpdate) {
            MerkleUpdate merkleUpdate = (MerkleUpdate) obj;
            return Intrinsics.areEqual(this.oldHash, merkleUpdate.oldHash) && Intrinsics.areEqual(this.newHash, merkleUpdate.newHash) && this.oldDepth == merkleUpdate.oldDepth && this.newDepth == merkleUpdate.newDepth && Intrinsics.areEqual(this.old, merkleUpdate.old) && Intrinsics.areEqual(this.f2193new, merkleUpdate.f2193new);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.oldHash.hashCode() * 31) + this.newHash.hashCode()) * 31) + UShort.m2021hashCodeimpl(this.oldDepth)) * 31) + UShort.m2021hashCodeimpl(this.newDepth)) * 31) + this.old.hashCode()) * 31) + this.f2193new.hashCode();
    }

    public String toString() {
        return "MerkleUpdate(oldHash=" + this.oldHash + ", newHash=" + this.newHash + ", oldDepth=" + ((Object) UShort.m2022toStringimpl(this.oldDepth)) + ", newDepth=" + ((Object) UShort.m2022toStringimpl(this.newDepth)) + ", old=" + this.old + ", new=" + this.f2193new + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MerkleUpdate(int i, BitString bitString, BitString bitString2, UShort uShort, UShort uShort2, CellRef<? extends X> cellRef, CellRef<? extends X> cellRef2, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, $cachedDescriptor);
        }
        this.oldHash = bitString;
        this.newHash = bitString2;
        this.oldDepth = uShort.m2023unboximpl();
        this.newDepth = uShort2.m2023unboximpl();
        this.old = cellRef;
        this.f2193new = cellRef2;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(bitString2.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MerkleUpdate(BitString oldHash, BitString newHash, short s, short s2, CellRef<? extends X> old, CellRef<? extends X> cellRef) {
        Intrinsics.checkNotNullParameter(oldHash, "oldHash");
        Intrinsics.checkNotNullParameter(newHash, "newHash");
        Intrinsics.checkNotNullParameter(old, "old");
        Intrinsics.checkNotNullParameter(cellRef, "new");
        this.oldHash = oldHash;
        this.newHash = newHash;
        this.oldDepth = s;
        this.newDepth = s2;
        this.old = old;
        this.f2193new = cellRef;
        if (!(oldHash.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(newHash.getSize() == 256)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static final /* synthetic */ void write$Self(MerkleUpdate merkleUpdate, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, fiftHexBitStringSerializer, merkleUpdate.oldHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, fiftHexBitStringSerializer, merkleUpdate.newHash);
        UShortSerializer uShortSerializer = UShortSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uShortSerializer, UShort.m2018boximpl(merkleUpdate.oldDepth));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uShortSerializer, UShort.m2018boximpl(merkleUpdate.newDepth));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], merkleUpdate.old);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], merkleUpdate.f2193new);
    }

    public final BitString getOldHash() {
        return this.oldHash;
    }

    public final BitString getNewHash() {
        return this.newHash;
    }

    /* renamed from: getOldDepth-Mh2AYeg  reason: not valid java name */
    public final short m5292getOldDepthMh2AYeg() {
        return this.oldDepth;
    }

    /* renamed from: getNewDepth-Mh2AYeg  reason: not valid java name */
    public final short m5291getNewDepthMh2AYeg() {
        return this.newDepth;
    }

    public final CellRef<X> getOld() {
        return this.old;
    }

    public final CellRef<X> getNew() {
        return this.f2193new;
    }

    /* compiled from: MerkleUpdate.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<MerkleUpdate<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new MerkleUpdate$$serializer(typeSerial0);
        }

        public final <X> TlbCodec<MerkleUpdate<X>> tlbCodec(TlbCodec<X> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return TlbConstructorKt.asTlbCombinator(new MerkleUpdateTlbConstructor(x), Reflection.getOrCreateKotlinClass(MerkleUpdate.class));
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("!merkle_update", null, 6);
        pluginGeneratedSerialDescriptor.addElement("old_hash", false);
        pluginGeneratedSerialDescriptor.addElement("new_hash", false);
        pluginGeneratedSerialDescriptor.addElement("old_depth", false);
        pluginGeneratedSerialDescriptor.addElement("new_depth", false);
        pluginGeneratedSerialDescriptor.addElement("old", false);
        pluginGeneratedSerialDescriptor.addElement("new", false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("!merkle_update");
        open.field("old_hash", this.oldHash);
        open.field("new_hash", this.newHash);
        open.field("old_depth", UShort.m2018boximpl(this.oldDepth));
        open.field("new_depth", UShort.m2018boximpl(this.newDepth));
        open.field("old", CellRef.DefaultImpls.toCell$default(this.old, null, 1, null));
        open.field("new", CellRef.DefaultImpls.toCell$default(this.f2193new, null, 1, null));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
