package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* compiled from: MsgAddressInt.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface MsgAddressInt extends MsgAddress {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: MsgAddressInt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<MsgAddressInt> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ MsgAddressIntTlbCombinator $$delegate_0 = MsgAddressIntTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public MsgAddressInt loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgAddressInt loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgAddressInt value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
        }

        public final KSerializer<MsgAddressInt> serializer() {
            return new SealedClassSerializer("org.ton.block.MsgAddressInt", Reflection.getOrCreateKotlinClass(MsgAddressInt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{AddrStd$$serializer.INSTANCE, AddrVar$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgAddressInt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
            }});
        }

        public final TlbCombinator<MsgAddressInt> tlbCodec() {
            return MsgAddressIntTlbCombinator.INSTANCE;
        }

        public static /* synthetic */ String toString$default(Companion companion, MsgAddressInt msgAddressInt, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
            boolean z5 = (i & 2) != 0 ? true : z;
            boolean z6 = (i & 4) != 0 ? true : z2;
            if ((i & 8) != 0) {
                z3 = false;
            }
            return companion.toString(msgAddressInt, z5, z6, z3, (i & 16) != 0 ? true : z4);
        }

        public final String toString(MsgAddressInt address, boolean z, boolean z2, boolean z3, boolean z4) {
            Intrinsics.checkNotNullParameter(address, "address");
            checkAddressStd(address);
            return AddrStd.Companion.toString((AddrStd) address, z, z2, z3, z4);
        }

        private final void checkAddressStd(MsgAddressInt msgAddressInt) {
            if (msgAddressInt instanceof AddrStd) {
                return;
            }
            throw new IllegalArgumentException(("expected class: " + Reflection.getOrCreateKotlinClass(AddrStd.class) + " actual: " + Reflection.getOrCreateKotlinClass(msgAddressInt.getClass())).toString());
        }
    }
}
