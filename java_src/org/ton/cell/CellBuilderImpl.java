package org.ton.cell;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bigint.BigIntJvmKt;
import org.ton.bitstring.BitString;
import org.ton.bitstring.ByteBackedMutableBitString;
import org.ton.bitstring.MutableBitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellDescriptor;
import org.ton.cell.exception.CellOverflowException;
import org.ton.crypto.digest.sha2.SHA256Digest;
/* compiled from: CellBuilder.kt */
/* loaded from: classes6.dex */
final class CellBuilderImpl implements CellBuilder {
    private MutableBitString bits;
    private boolean isExotic;
    private LevelMask levelMask;
    private List<Cell> refs;

    /* compiled from: CellBuilder.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CellType.values().length];
            try {
                iArr[CellType.PRUNED_BRANCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CellType.LIBRARY_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CellType.ORDINARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CellType.MERKLE_PROOF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CellType.MERKLE_UPDATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ CellBuilderImpl(MutableBitString mutableBitString, List list, LevelMask levelMask, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableBitString, list, levelMask, z);
    }

    private CellBuilderImpl(MutableBitString bits, List<Cell> refs, LevelMask levelMask, boolean z) {
        Intrinsics.checkNotNullParameter(bits, "bits");
        Intrinsics.checkNotNullParameter(refs, "refs");
        this.bits = bits;
        this.refs = refs;
        this.levelMask = levelMask;
        this.isExotic = z;
    }

    @Override // org.ton.cell.CellBuilder
    public Cell endCell() {
        return CellBuilder.DefaultImpls.endCell(this);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeInt(int i, int i2) {
        return CellBuilder.DefaultImpls.storeInt((CellBuilder) this, i, i2);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeInt(long j, int i) {
        return CellBuilder.DefaultImpls.storeInt(this, j, i);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeInt(short s, int i) {
        return CellBuilder.DefaultImpls.storeInt((CellBuilder) this, s, i);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUInt(int i, int i2) {
        return CellBuilder.DefaultImpls.storeUInt((CellBuilder) this, i, i2);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUInt(long j, int i) {
        return CellBuilder.DefaultImpls.storeUInt(this, j, i);
    }

    @Override // org.ton.cell.CellBuilder
    /* renamed from: storeUInt16-xj2QHRw */
    public CellBuilder mo5376storeUInt16xj2QHRw(short s) {
        return CellBuilder.DefaultImpls.m5379storeUInt16xj2QHRw(this, s);
    }

    @Override // org.ton.cell.CellBuilder
    /* renamed from: storeUInt32-WZ4Q5Ns */
    public CellBuilder mo5377storeUInt32WZ4Q5Ns(int i) {
        return CellBuilder.DefaultImpls.m5380storeUInt32WZ4Q5Ns(this, i);
    }

    @Override // org.ton.cell.CellBuilder
    /* renamed from: storeUInt64-VKZWuLQ */
    public CellBuilder mo5378storeUInt64VKZWuLQ(long j) {
        return CellBuilder.DefaultImpls.m5381storeUInt64VKZWuLQ(this, j);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUIntLeq(int i, int i2) {
        return CellBuilder.DefaultImpls.storeUIntLeq(this, i, i2);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUIntLeq(BigInteger bigInteger, BigInteger bigInteger2) {
        return CellBuilder.DefaultImpls.storeUIntLeq(this, bigInteger, bigInteger2);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUIntLes(int i, int i2) {
        return CellBuilder.DefaultImpls.storeUIntLes(this, i, i2);
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUIntLes(BigInteger bigInteger, BigInteger bigInteger2) {
        return CellBuilder.DefaultImpls.storeUIntLes(this, bigInteger, bigInteger2);
    }

    public /* synthetic */ CellBuilderImpl(MutableBitString mutableBitString, List list, LevelMask levelMask, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ByteBackedMutableBitString.Companion.of$default(ByteBackedMutableBitString.Companion, 0, 1, null) : mutableBitString, (i & 2) != 0 ? new ArrayList() : list, (i & 4) != 0 ? null : levelMask, (i & 8) != 0 ? false : z, null);
    }

    @Override // org.ton.cell.CellBuilder
    public MutableBitString getBits() {
        return this.bits;
    }

    public void setBits(MutableBitString mutableBitString) {
        Intrinsics.checkNotNullParameter(mutableBitString, "<set-?>");
        this.bits = mutableBitString;
    }

    public List<Cell> getRefs() {
        return this.refs;
    }

    /* renamed from: getLevelMask-5JiA7ZA  reason: not valid java name */
    public LevelMask m5383getLevelMask5JiA7ZA() {
        return this.levelMask;
    }

    @Override // org.ton.cell.CellBuilder
    /* renamed from: setLevelMask-fuO3_sE */
    public void mo5375setLevelMaskfuO3_sE(LevelMask levelMask) {
        this.levelMask = levelMask;
    }

    public boolean isExotic() {
        return this.isExotic;
    }

    @Override // org.ton.cell.CellBuilder
    public void setExotic(boolean z) {
        this.isExotic = z;
    }

    private final int getRemainder() {
        return 1023 - getBitsPosition();
    }

    public int getBitsPosition() {
        return getBits().getSize();
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeBit(boolean z) {
        checkBitsOverflow(1);
        getBits().plus(z);
        return this;
    }

    public CellBuilder storeBits(boolean... bits) {
        Intrinsics.checkNotNullParameter(bits, "bits");
        checkBitsOverflow(bits.length);
        setBits(getBits().plus(bits));
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeBits(BitString bits) {
        Intrinsics.checkNotNullParameter(bits, "bits");
        checkBitsOverflow(bits.getSize());
        getBits().plus(bits);
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeBytes(byte[] byteArray) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        checkBitsOverflow(byteArray.length * 8);
        getBits().plus(byteArray);
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeRef(Cell ref) {
        Intrinsics.checkNotNullParameter(ref, "ref");
        checkRefsOverflow(1);
        getRefs().add(ref);
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeRefs(Collection<? extends Cell> refs) {
        Intrinsics.checkNotNullParameter(refs, "refs");
        checkRefsOverflow(refs.size());
        getRefs().addAll(refs);
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeUInt(BigInteger value, int i) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!(BigIntJvmKt.getBitLength(value) <= i)) {
            throw new IllegalStateException(("Integer `" + value + "` does not fit into " + i + " bits").toString());
        }
        if (!(BigIntJvmKt.getSign(value) >= 0)) {
            throw new IllegalStateException(("Integer `" + value + "` must be unsigned").toString());
        }
        storeNumber(value, i);
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public CellBuilder storeInt(BigInteger value, int i) {
        Intrinsics.checkNotNullParameter(value, "value");
        boolean z = true;
        BigInteger shl = BigIntJvmKt.shl(BigIntJvmKt.toBigInt(1), i - 1);
        if (!((value.compareTo(BigIntJvmKt.unaryMinus(shl)) < 0 || value.compareTo(shl) >= 0) ? false : false)) {
            throw new IllegalArgumentException("Can't store an Int, because its value allocates more space than provided.".toString());
        }
        storeNumber(value, i);
        return this;
    }

    private final CellBuilder storeNumber(BigInteger bigInteger, int i) {
        boolean[] reversedArray;
        boolean[] zArr = new boolean[i];
        for (int i2 = 0; i2 < i; i2++) {
            boolean z = true;
            if (BigIntJvmKt.and(BigIntJvmKt.shr(bigInteger, i2), BigIntJvmKt.toBigInt(1)).intValue() != 1) {
                z = false;
            }
            zArr[i2] = z;
        }
        reversedArray = ArraysKt___ArraysKt.reversedArray(zArr);
        storeBits(Arrays.copyOf(reversedArray, reversedArray.length));
        return this;
    }

    @Override // org.ton.cell.CellBuilder
    public Cell build() {
        int m5396constructorimpl$default = LevelMask.m5396constructorimpl$default(0, 1, null);
        for (Cell cell : getRefs()) {
            m5396constructorimpl$default = LevelMask.m5403orCd1l96I(m5396constructorimpl$default, cell.mo5373getLevelMaskKat384U());
        }
        LevelMask m5383getLevelMask5JiA7ZA = m5383getLevelMask5JiA7ZA();
        int m5406unboximpl = m5383getLevelMask5JiA7ZA != null ? m5383getLevelMask5JiA7ZA.m5406unboximpl() : m5396constructorimpl$default;
        CellDescriptor.Companion companion = CellDescriptor.Companion;
        CellDescriptor fromBytes = companion.fromBytes(companion.m5385computeD1dYmMkqQ(m5406unboximpl, isExotic(), getRefs().size()), companion.computeD2(getBitsPosition()));
        List<Pair<byte[], Integer>> m5382computeHashes4AIc1cU = m5382computeHashes4AIc1cU(fromBytes, m5396constructorimpl$default);
        int i = WhenMappings.$EnumSwitchMapping$0[fromBytes.getCellType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                throw new NotImplementedError(null, 1, null);
            }
            EmptyCell emptyCell = EmptyCell.INSTANCE;
            return Intrinsics.areEqual(fromBytes, emptyCell.getDescriptor()) ? emptyCell : new DataCell(fromBytes, getBits(), getRefs(), m5382computeHashes4AIc1cU);
        }
        if (!(m5382computeHashes4AIc1cU.size() == 1)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        Pair<byte[], Integer> pair = m5382computeHashes4AIc1cU.get(0);
        byte[] component1 = pair.component1();
        return new PrunedBranchCell(BitString.Companion.m43of(component1, component1.length * 8), pair.component2().intValue(), fromBytes, getBits());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* renamed from: computeHashes-4AIc1cU  reason: not valid java name */
    private final List<Pair<byte[], Integer>> m5382computeHashes4AIc1cU(CellDescriptor cellDescriptor, int i) {
        byte b;
        int m5407levelspGXSBY;
        int i2 = i;
        int m5400getLevelimpl = LevelMask.m5400getLevelimpl(cellDescriptor.mo5384getLevelMaskKat384U()) + 1;
        byte[] byteArray = getBits().toByteArray(true);
        int i3 = WhenMappings.$EnumSwitchMapping$0[cellDescriptor.getCellType().ordinal()];
        if (i3 == 1) {
            byte b2 = byteArray[0];
            CellType cellType = CellType.PRUNED_BRANCH;
            if ((b2 == cellType.getValue()) == false) {
                throw new IllegalStateException(("Cell type mismatch, expected: " + cellType + ' ' + cellType.getValue() + ", actual: " + ((int) byteArray[0])).toString());
            }
            int m5400getLevelimpl2 = (LevelMask.m5400getLevelimpl(cellDescriptor.mo5384getLevelMaskKat384U()) * 272) + 16;
            if ((getBitsPosition() == m5400getLevelimpl2) == false) {
                throw new IllegalStateException(("Invalid bit length, expected: " + m5400getLevelimpl2 + ", actual: " + getBitsPosition()).toString());
            } else if (!getRefs().isEmpty()) {
                throw new IllegalStateException("Pruned branch contains non empty references".toString());
            } else {
                if ((cellDescriptor.mo5384getLevelMaskKat384U() == byteArray[1]) == false) {
                    throw new IllegalStateException(("Invalid level mask in pruned branch, expected: " + cellDescriptor.mo5384getLevelMaskKat384U() + ", actual: " + ((int) b)).toString());
                }
                i2 = cellDescriptor.mo5384getLevelMaskKat384U();
                m5400getLevelimpl = 1;
            }
        } else if (i3 == 2) {
            byte b3 = byteArray[0];
            CellType cellType2 = CellType.LIBRARY_REFERENCE;
            if ((b3 == cellType2.getValue()) == false) {
                throw new IllegalStateException(("Cell type mismatch, expected: " + cellType2 + ' ' + cellType2.getValue() + ", actual: " + ((int) byteArray[0])).toString());
            }
            if ((getBitsPosition() == 264) == false) {
                throw new IllegalStateException(("Invalid bit length, expected: 264, actual: " + getBitsPosition()).toString());
            } else if (!getRefs().isEmpty()) {
                throw new IllegalStateException(("Invalid library reference count, expected: 0, actual: " + getRefs().size()).toString());
            } else {
                i2 = LevelMask.m5396constructorimpl$default(0, 1, null);
            }
        } else if (i3 != 3) {
            if (i3 == 4) {
                byte b4 = byteArray[0];
                CellType cellType3 = CellType.MERKLE_PROOF;
                if ((b4 == cellType3.getValue()) == false) {
                    throw new IllegalStateException(("Cell type mismatch, expected: " + cellType3 + ' ' + cellType3.getValue() + ", actual: " + ((int) byteArray[0])).toString());
                }
                if ((getBitsPosition() == 280) == false) {
                    throw new IllegalStateException(("Invalid bit length, expected: 280, actual: " + getBitsPosition()).toString());
                }
                if ((getRefs().size() == 1) == false) {
                    throw new IllegalStateException(("Invalid merkle proof reference count, expected: 1, actual: " + getRefs().size()).toString());
                }
                i2 = LevelMask.m5405virtualizespGXSBY(i2, 1);
            } else if (i3 == 5) {
                byte b5 = byteArray[0];
                CellType cellType4 = CellType.MERKLE_UPDATE;
                if ((b5 == cellType4.getValue()) == false) {
                    throw new IllegalStateException(("Cell type mismatch, expected: " + cellType4 + ' ' + cellType4.getValue() + ", actual: " + ((int) byteArray[0])).toString());
                }
                if ((getBitsPosition() == 552) == false) {
                    System.out.println(getBits());
                    throw new IllegalStateException(("Invalid bit length, expected: 552, actual: " + getBitsPosition()).toString());
                }
                if ((getRefs().size() == 2) == false) {
                    throw new IllegalStateException(("Invalid merkle update reference count, expected: 2, actual: " + getRefs().size()).toString());
                }
                i2 = LevelMask.m5405virtualizespGXSBY(i2, 1);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        if (!LevelMask.m5398equalsimpl0(cellDescriptor.mo5384getLevelMaskKat384U(), i2)) {
            throw new IllegalStateException(("Invalid level mask, expected: " + m5383getLevelMask5JiA7ZA() + ", actual: " + ((Object) LevelMask.m5404toStringimpl(i2))).toString());
        }
        boolean isMerkle = cellDescriptor.getCellType().isMerkle();
        ArrayList arrayList = new ArrayList(m5400getLevelimpl);
        byte component1 = cellDescriptor.component1();
        byte component2 = cellDescriptor.component2();
        for (int i4 = 0; i4 < m5400getLevelimpl; i4++) {
            SHA256Digest sHA256Digest = new SHA256Digest();
            if (cellDescriptor.getCellType() == CellType.PRUNED_BRANCH) {
                m5407levelspGXSBY = cellDescriptor.mo5384getLevelMaskKat384U();
            } else {
                m5407levelspGXSBY = LevelMask.Companion.m5407levelspGXSBY(i4);
            }
            component1 = (byte) (((byte) (component1 & 15)) | ((byte) (m5407levelspGXSBY << 5)));
            sHA256Digest.update(component1);
            sHA256Digest.update(component2);
            if (i4 == 0) {
                sHA256Digest.update(byteArray);
            } else {
                sHA256Digest.update((byte[]) ((Pair) arrayList.get(i4 - 1)).getFirst());
            }
            int i5 = 0;
            for (Cell cell : getRefs()) {
                int depth = cell.depth(i4 + (isMerkle ? 1 : 0));
                i5 = Math.max(i5, depth + 1);
                sHA256Digest.update((byte) (depth >>> 8));
                sHA256Digest.update((byte) depth);
            }
            for (Cell cell2 : getRefs()) {
                sHA256Digest.update(BitString.DefaultImpls.toByteArray$default(cell2.hash(i4 + (isMerkle ? 1 : 0)), false, 1, null));
            }
            arrayList.add(TuplesKt.m149to(sHA256Digest.build(), Integer.valueOf(i5)));
        }
        return arrayList;
    }

    public String toString() {
        return endCell().toString();
    }

    private final void checkBitsOverflow(int i) {
        if (i <= getRemainder()) {
            return;
        }
        throw new CellOverflowException("Bits overflow. Can't add " + i + " bits. " + getRemainder() + " bits left. - " + getBits().getSize());
    }

    private final void checkRefsOverflow(int i) {
        if (i <= 4 - getRefs().size()) {
            return;
        }
        throw new CellOverflowException("Refs overflow. Can't add " + i + " refs. " + (4 - getRefs().size()) + " refs left.");
    }

    /* compiled from: CellBuilder.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
