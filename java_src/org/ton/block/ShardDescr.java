package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: ShardDescr.kt */
@Serializable
/* loaded from: classes6.dex */
public interface ShardDescr extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ShardDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<ShardDescr> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ ShardDescrTlbCombinator $$delegate_0 = ShardDescrTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public ShardDescr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardDescr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<ShardDescr> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<ShardDescr> serializer() {
            return new SealedClassSerializer("org.ton.block.ShardDescr", Reflection.getOrCreateKotlinClass(ShardDescr.class), new KClass[]{Reflection.getOrCreateKotlinClass(ShardDescrNew.class), Reflection.getOrCreateKotlinClass(ShardDescrOld.class)}, new KSerializer[]{ShardDescrNew$$serializer.INSTANCE, ShardDescrOld$$serializer.INSTANCE}, new Annotation[0]);
        }
    }
}
