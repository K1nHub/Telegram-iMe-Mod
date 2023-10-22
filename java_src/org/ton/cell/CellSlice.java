package org.ton.cell;

import java.math.BigInteger;
import java.util.List;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.bitstring.ByteBackedBitString;
/* compiled from: CellSlice.kt */
/* loaded from: classes6.dex */
public interface CellSlice {
    public static final Companion Companion = Companion.$$INSTANCE;

    BitString getBits();

    int getBitsPosition();

    List<Cell> getRefs();

    int getRefsPosition();

    boolean loadBit();

    BitString loadBits(int i);

    BigInteger loadInt(int i);

    Cell loadRef();

    List<Cell> loadRefs(int i);

    long loadTinyInt(int i);

    BigInteger loadUInt(int i);

    /* renamed from: loadUInt16-Mh2AYeg  reason: not valid java name */
    short mo5065loadUInt16Mh2AYeg();

    /* renamed from: loadUInt32-pVg5ArA  reason: not valid java name */
    int mo5066loadUInt32pVg5ArA();

    /* renamed from: loadUInt64-s-VKNKU  reason: not valid java name */
    long mo5067loadUInt64sVKNKU();

    BigInteger loadUIntLeq(int i);

    BigInteger loadUIntLes(int i);

    BitString preloadBits(int i);

    BigInteger preloadInt(int i);

    CellSlice skipBits(int i);

    /* compiled from: CellSlice.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        /* renamed from: loadUInt16-Mh2AYeg  reason: not valid java name */
        public static short m5068loadUInt16Mh2AYeg(CellSlice cellSlice) {
            return UShort.m2011constructorimpl((short) cellSlice.loadTinyInt(16));
        }

        /* renamed from: loadUInt32-pVg5ArA  reason: not valid java name */
        public static int m5069loadUInt32pVg5ArA(CellSlice cellSlice) {
            return UInt.m1967constructorimpl((int) cellSlice.loadTinyInt(32));
        }

        /* renamed from: loadUInt64-s-VKNKU  reason: not valid java name */
        public static long m5070loadUInt64sVKNKU(CellSlice cellSlice) {
            return ULong.m1989constructorimpl(cellSlice.loadTinyInt(64));
        }

        public static long preloadTinyInt(CellSlice cellSlice, int i) {
            return cellSlice.preloadInt(i).longValue();
        }

        public static BigInteger loadUIntLeq(CellSlice cellSlice, int i) {
            return cellSlice.loadUInt(32 - Integer.numberOfLeadingZeros(i));
        }

        public static BigInteger loadUIntLes(CellSlice cellSlice, int i) {
            return cellSlice.loadUIntLeq(i - 1);
        }
    }

    /* compiled from: CellSlice.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CellSlice beginParse(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return m31of(cell.getBits(), cell.getRefs());
        }

        /* renamed from: of */
        public final CellSlice m31of(BitString bits, List<? extends Cell> refs) {
            Intrinsics.checkNotNullParameter(bits, "bits");
            Intrinsics.checkNotNullParameter(refs, "refs");
            if (bits instanceof ByteBackedBitString) {
                return new CellSliceByteBackedBitString((ByteBackedBitString) bits, refs);
            }
            return new CellSliceImpl(bits, refs, 0, 0, 12, null);
        }
    }
}
