package org.ton.cell;

import java.math.BigInteger;
import java.util.Collection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bigint.BigIntJvmKt;
import org.ton.bitstring.BitString;
import org.ton.bitstring.MutableBitString;
/* compiled from: CellBuilder.kt */
/* loaded from: classes6.dex */
public interface CellBuilder {
    public static final Companion Companion = Companion.$$INSTANCE;

    Cell build();

    Cell endCell();

    MutableBitString getBits();

    void setExotic(boolean z);

    /* renamed from: setLevelMask-fuO3_sE  reason: not valid java name */
    void mo5208setLevelMaskfuO3_sE(LevelMask levelMask);

    CellBuilder storeBit(boolean z);

    CellBuilder storeBits(BitString bitString);

    CellBuilder storeBytes(byte[] bArr);

    CellBuilder storeInt(int i, int i2);

    CellBuilder storeInt(long j, int i);

    CellBuilder storeInt(BigInteger bigInteger, int i);

    CellBuilder storeInt(short s, int i);

    CellBuilder storeRef(Cell cell);

    CellBuilder storeRefs(Collection<? extends Cell> collection);

    CellBuilder storeUInt(int i, int i2);

    CellBuilder storeUInt(long j, int i);

    CellBuilder storeUInt(BigInteger bigInteger, int i);

    /* renamed from: storeUInt16-xj2QHRw  reason: not valid java name */
    CellBuilder mo5209storeUInt16xj2QHRw(short s);

    /* renamed from: storeUInt32-WZ4Q5Ns  reason: not valid java name */
    CellBuilder mo5210storeUInt32WZ4Q5Ns(int i);

    /* renamed from: storeUInt64-VKZWuLQ  reason: not valid java name */
    CellBuilder mo5211storeUInt64VKZWuLQ(long j);

    CellBuilder storeUIntLeq(int i, int i2);

    CellBuilder storeUIntLeq(BigInteger bigInteger, BigInteger bigInteger2);

    CellBuilder storeUIntLes(int i, int i2);

    CellBuilder storeUIntLes(BigInteger bigInteger, BigInteger bigInteger2);

    /* compiled from: CellBuilder.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static Cell endCell(CellBuilder cellBuilder) {
            return cellBuilder.build();
        }

        public static CellBuilder storeUInt(CellBuilder cellBuilder, int i, int i2) {
            return cellBuilder.storeUInt(BigIntJvmKt.toBigInt(i), i2);
        }

        public static CellBuilder storeUInt(CellBuilder cellBuilder, long j, int i) {
            return cellBuilder.storeUInt(BigIntJvmKt.toBigInt(j), i);
        }

        /* renamed from: storeUInt16-xj2QHRw  reason: not valid java name */
        public static CellBuilder m5212storeUInt16xj2QHRw(CellBuilder cellBuilder, short s) {
            return cellBuilder.storeInt(s, 16);
        }

        /* renamed from: storeUInt32-WZ4Q5Ns  reason: not valid java name */
        public static CellBuilder m5213storeUInt32WZ4Q5Ns(CellBuilder cellBuilder, int i) {
            return cellBuilder.storeInt(i, 32);
        }

        /* renamed from: storeUInt64-VKZWuLQ  reason: not valid java name */
        public static CellBuilder m5214storeUInt64VKZWuLQ(CellBuilder cellBuilder, long j) {
            return cellBuilder.storeInt(j, 64);
        }

        public static CellBuilder storeUIntLeq(CellBuilder cellBuilder, BigInteger value, BigInteger max) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(max, "max");
            return cellBuilder.storeUInt(value, BigIntJvmKt.getBitLength(max));
        }

        public static CellBuilder storeUIntLeq(CellBuilder cellBuilder, int i, int i2) {
            return cellBuilder.storeUIntLeq(BigIntJvmKt.toBigInt(i), BigIntJvmKt.toBigInt(i2));
        }

        public static CellBuilder storeUIntLes(CellBuilder cellBuilder, BigInteger value, BigInteger max) {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(max, "max");
            return cellBuilder.storeUInt(value, BigIntJvmKt.getBitLength(BigIntJvmKt.minus(max, BigIntJvmKt.toBigInt(1))));
        }

        public static CellBuilder storeUIntLes(CellBuilder cellBuilder, int i, int i2) {
            return cellBuilder.storeUIntLes(BigIntJvmKt.toBigInt(i), BigIntJvmKt.toBigInt(i2));
        }

        public static CellBuilder storeInt(CellBuilder cellBuilder, short s, int i) {
            return cellBuilder.storeInt((int) s, i);
        }

        public static CellBuilder storeInt(CellBuilder cellBuilder, int i, int i2) {
            return cellBuilder.storeInt(BigIntJvmKt.toBigInt(i), i2);
        }

        public static CellBuilder storeInt(CellBuilder cellBuilder, long j, int i) {
            return cellBuilder.storeInt(BigIntJvmKt.toBigInt(j), i);
        }
    }

    /* compiled from: CellBuilder.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CellBuilder beginCell() {
            return new CellBuilderImpl(null, null, null, false, 15, null);
        }

        public final Cell createCell(Function1<? super CellBuilder, Unit> builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            CellBuilderImpl cellBuilderImpl = new CellBuilderImpl(null, null, null, false, 15, null);
            builder.invoke(cellBuilderImpl);
            return cellBuilderImpl.build();
        }
    }
}
