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
/* compiled from: TransactionDescr.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface TransactionDescr extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: TransactionDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<TransactionDescr> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ TransactionDescrTlbCombinator $$delegate_0 = TransactionDescrTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public TransactionDescr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransactionDescr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransactionDescr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<TransactionDescr> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<TransactionDescr> serializer() {
            return new SealedClassSerializer("org.ton.block.TransactionDescr", Reflection.getOrCreateKotlinClass(TransactionDescr.class), new KClass[]{Reflection.getOrCreateKotlinClass(TransMergeInstall.class), Reflection.getOrCreateKotlinClass(TransMergePrepare.class), Reflection.getOrCreateKotlinClass(TransOrd.class), Reflection.getOrCreateKotlinClass(TransSplitInstall.class), Reflection.getOrCreateKotlinClass(TransSplitPrepare.class), Reflection.getOrCreateKotlinClass(TransStorage.class), Reflection.getOrCreateKotlinClass(TransTickTock.class)}, new KSerializer[]{TransMergeInstall$$serializer.INSTANCE, TransMergePrepare$$serializer.INSTANCE, TransOrd$$serializer.INSTANCE, TransSplitInstall$$serializer.INSTANCE, TransSplitPrepare$$serializer.INSTANCE, TransStorage$$serializer.INSTANCE, TransTickTock$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TransactionDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
