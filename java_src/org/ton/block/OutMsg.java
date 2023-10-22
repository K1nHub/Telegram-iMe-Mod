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
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: OutMsg.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface OutMsg extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: OutMsg.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<OutMsg> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ OutMsgTlbCombinator $$delegate_0 = OutMsgTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public OutMsg loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public OutMsg loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, OutMsg value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<OutMsg> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<OutMsg> serializer() {
            return new SealedClassSerializer("org.ton.block.OutMsg", Reflection.getOrCreateKotlinClass(OutMsg.class), new KClass[]{Reflection.getOrCreateKotlinClass(MsgExportDeq.class), Reflection.getOrCreateKotlinClass(MsgExportDeqImm.class), Reflection.getOrCreateKotlinClass(MsgExportDeqShort.class), Reflection.getOrCreateKotlinClass(MsgExportExt.class), Reflection.getOrCreateKotlinClass(MsgExportImm.class), Reflection.getOrCreateKotlinClass(MsgExportNew.class), Reflection.getOrCreateKotlinClass(MsgExportTr.class), Reflection.getOrCreateKotlinClass(MsgExportTrReq.class)}, new KSerializer[]{MsgExportDeq$$serializer.INSTANCE, MsgExportDeqImm$$serializer.INSTANCE, MsgExportDeqShort$$serializer.INSTANCE, MsgExportExt$$serializer.INSTANCE, MsgExportImm$$serializer.INSTANCE, MsgExportNew$$serializer.INSTANCE, MsgExportTr$$serializer.INSTANCE, MsgExportTrReq$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.OutMsg$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }
}
