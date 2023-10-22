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
import org.ton.tlb.TlbObject;
/* compiled from: CommonMsgInfo.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface CommonMsgInfo extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: CommonMsgInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<CommonMsgInfo> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ CommonMsgInfoTlbCombinator $$delegate_0 = CommonMsgInfoTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public CommonMsgInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CommonMsgInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CommonMsgInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
        }

        public final KSerializer<CommonMsgInfo> serializer() {
            return new SealedClassSerializer("org.ton.block.CommonMsgInfo", Reflection.getOrCreateKotlinClass(CommonMsgInfo.class), new KClass[]{Reflection.getOrCreateKotlinClass(ExtInMsgInfo.class), Reflection.getOrCreateKotlinClass(ExtOutMsgInfo.class), Reflection.getOrCreateKotlinClass(IntMsgInfo.class)}, new KSerializer[]{ExtInMsgInfo$$serializer.INSTANCE, ExtOutMsgInfo$$serializer.INSTANCE, IntMsgInfo$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.CommonMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
