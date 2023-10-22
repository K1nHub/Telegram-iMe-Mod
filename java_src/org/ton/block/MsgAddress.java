package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: MsgAddress.kt */
@Serializable
/* loaded from: classes6.dex */
public interface MsgAddress extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: MsgAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<MsgAddress> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ MsgAddressTlbCombinator $$delegate_0 = MsgAddressTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public MsgAddress loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgAddress loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgAddress value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<MsgAddress> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<MsgAddress> serializer() {
            return new SealedClassSerializer("org.ton.block.MsgAddress", Reflection.getOrCreateKotlinClass(MsgAddress.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrExtern.class), Reflection.getOrCreateKotlinClass(AddrNone.class), Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{AddrExtern$$serializer.INSTANCE, new ObjectSerializer("addr_none", AddrNone.INSTANCE, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
            }}), AddrStd$$serializer.INSTANCE, AddrVar$$serializer.INSTANCE}, new Annotation[0]);
        }
    }
}
