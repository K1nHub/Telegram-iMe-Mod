package org.ton.cell;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.ton.bigint.BigIntJvmKt;
import org.ton.bitstring.BitString;
import org.ton.bitstring.exception.BitStringUnderflowException;
import org.ton.cell.CellSlice;
import org.ton.cell.exception.CellUnderflowException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellSlice.kt */
/* loaded from: classes6.dex */
public class CellSliceImpl implements CellSlice {
    private final BitString bits;
    private int bitsPosition;
    private final List<Cell> refs;
    private int refsPosition;

    /* JADX WARN: Multi-variable type inference failed */
    public CellSliceImpl(BitString bits, List<? extends Cell> refs, int i, int i2) {
        Intrinsics.checkNotNullParameter(bits, "bits");
        Intrinsics.checkNotNullParameter(refs, "refs");
        this.bits = bits;
        this.refs = refs;
        this.bitsPosition = i;
        this.refsPosition = i2;
    }

    public /* synthetic */ CellSliceImpl(BitString bitString, List list, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitString, list, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    @Override // org.ton.cell.CellSlice
    /* renamed from: loadUInt16-Mh2AYeg */
    public short mo5219loadUInt16Mh2AYeg() {
        return CellSlice.DefaultImpls.m5222loadUInt16Mh2AYeg(this);
    }

    @Override // org.ton.cell.CellSlice
    /* renamed from: loadUInt32-pVg5ArA */
    public int mo5220loadUInt32pVg5ArA() {
        return CellSlice.DefaultImpls.m5223loadUInt32pVg5ArA(this);
    }

    @Override // org.ton.cell.CellSlice
    /* renamed from: loadUInt64-s-VKNKU */
    public long mo5221loadUInt64sVKNKU() {
        return CellSlice.DefaultImpls.m5224loadUInt64sVKNKU(this);
    }

    @Override // org.ton.cell.CellSlice
    public BigInteger loadUIntLeq(int i) {
        return CellSlice.DefaultImpls.loadUIntLeq(this, i);
    }

    @Override // org.ton.cell.CellSlice
    public BigInteger loadUIntLes(int i) {
        return CellSlice.DefaultImpls.loadUIntLes(this, i);
    }

    public long preloadTinyInt(int i) {
        return CellSlice.DefaultImpls.preloadTinyInt(this, i);
    }

    @Override // org.ton.cell.CellSlice
    public BitString getBits() {
        return this.bits;
    }

    @Override // org.ton.cell.CellSlice
    public List<Cell> getRefs() {
        return this.refs;
    }

    @Override // org.ton.cell.CellSlice
    public int getBitsPosition() {
        return this.bitsPosition;
    }

    public void setBitsPosition(int i) {
        this.bitsPosition = i;
    }

    @Override // org.ton.cell.CellSlice
    public int getRefsPosition() {
        return this.refsPosition;
    }

    public void setRefsPosition(int i) {
        this.refsPosition = i;
    }

    @Override // org.ton.cell.CellSlice
    public Cell loadRef() {
        checkRefsOverflow();
        Cell preloadRef = preloadRef();
        setRefsPosition(getRefsPosition() + 1);
        return preloadRef;
    }

    @Override // org.ton.cell.CellSlice
    public List<Cell> loadRefs(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(loadRef());
        }
        return arrayList;
    }

    public Cell preloadRef() {
        return getRefs().get(getRefsPosition());
    }

    @Override // org.ton.cell.CellSlice
    public boolean loadBit() {
        boolean preloadBit = preloadBit();
        setBitsPosition(getBitsPosition() + 1);
        return preloadBit;
    }

    public boolean preloadBit() {
        try {
            return getBits().get(getBitsPosition());
        } catch (BitStringUnderflowException e) {
            throw new CellUnderflowException(e);
        }
    }

    @Override // org.ton.cell.CellSlice
    public CellSlice skipBits(int i) {
        setBitsPosition(getBitsPosition() + i);
        return this;
    }

    @Override // org.ton.cell.CellSlice
    public BitString loadBits(int i) {
        BitString preloadBits = preloadBits(i);
        setBitsPosition(getBitsPosition() + i);
        return preloadBits;
    }

    @Override // org.ton.cell.CellSlice
    public BitString preloadBits(int i) {
        checkBitsOverflow(i);
        return getBits().slice(new IntRange(getBitsPosition(), i));
    }

    @Override // org.ton.cell.CellSlice
    public BigInteger loadInt(int i) {
        BigInteger preloadInt = preloadInt(i);
        setBitsPosition(getBitsPosition() + i);
        return preloadInt;
    }

    @Override // org.ton.cell.CellSlice
    public long loadTinyInt(int i) {
        long preloadTinyInt = preloadTinyInt(i);
        setBitsPosition(getBitsPosition() + i);
        return preloadTinyInt;
    }

    @Override // org.ton.cell.CellSlice
    public BigInteger preloadInt(int i) {
        BigInteger preloadUInt = preloadUInt(i);
        BigInteger shl = BigIntJvmKt.shl(BigIntJvmKt.toBigInt(1), i - 1);
        return preloadUInt.compareTo(shl) >= 0 ? BigIntJvmKt.minus(preloadUInt, BigIntJvmKt.times(shl, BigIntJvmKt.toBigInt(2))) : preloadUInt;
    }

    @Override // org.ton.cell.CellSlice
    public BigInteger loadUInt(int i) {
        BigInteger preloadUInt = preloadUInt(i);
        setBitsPosition(getBitsPosition() + i);
        return preloadUInt;
    }

    public BigInteger preloadUInt(int i) {
        if (i == 0) {
            return BigIntJvmKt.toBigInt(0);
        }
        BitString<Boolean> preloadBits = preloadBits(i);
        StringBuilder sb = new StringBuilder(i);
        for (Boolean bool : preloadBits) {
            if (bool.booleanValue()) {
                sb.append('1');
            } else {
                sb.append('0');
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return new BigInteger(sb2, 2);
    }

    protected final void checkBitsOverflow(int i) {
        int size = getBits().getSize() - getBitsPosition();
        if (i <= size) {
            return;
        }
        throw new IllegalArgumentException(("Bits overflow. Can't load " + i + " bits. " + size + " bits left.").toString());
    }

    protected final void checkRefsOverflow() {
        int refsPosition = 4 - getRefsPosition();
        if (1 <= refsPosition) {
            return;
        }
        throw new IllegalArgumentException(("Refs overflow. Can't load ref. " + refsPosition + " refs left.").toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("x");
        sb.append(getBits().toString());
        if (!getRefs().isEmpty()) {
            sb.append(",");
            sb.append(getRefs().size());
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
