package org.ton.cell;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellDescriptor.kt */
/* loaded from: classes6.dex */
public final class CellDescriptorImpl implements CellDescriptor {

    /* renamed from: d1 */
    private final byte f2055d1;

    /* renamed from: d2 */
    private final byte f2056d2;

    @Override // org.ton.cell.CellDescriptor
    public final byte component1() {
        return this.f2055d1;
    }

    @Override // org.ton.cell.CellDescriptor
    public final byte component2() {
        return this.f2056d2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CellDescriptorImpl) {
            CellDescriptorImpl cellDescriptorImpl = (CellDescriptorImpl) obj;
            return this.f2055d1 == cellDescriptorImpl.f2055d1 && this.f2056d2 == cellDescriptorImpl.f2056d2;
        }
        return false;
    }

    public int hashCode() {
        return (this.f2055d1 * 31) + this.f2056d2;
    }

    public CellDescriptorImpl(byte b, byte b2) {
        this.f2055d1 = b;
        this.f2056d2 = b2;
    }

    public byte getD1() {
        return this.f2055d1;
    }

    public byte getD2() {
        return this.f2056d2;
    }

    @Override // org.ton.cell.CellDescriptor
    /* renamed from: getLevelMask-Kat384U */
    public int mo5217getLevelMaskKat384U() {
        return LevelMask.m5228constructorimpl(getD1() >>> 5);
    }

    @Override // org.ton.cell.CellDescriptor
    public boolean isExotic() {
        return (getD1() & 8) != 0;
    }

    @Override // org.ton.cell.CellDescriptor
    public boolean getHasHashes() {
        return (getD1() & 16) != 0;
    }

    @Override // org.ton.cell.CellDescriptor
    public int getReferenceCount() {
        return getD1() & 7;
    }

    @Override // org.ton.cell.CellDescriptor
    public boolean isAligned() {
        return (getD2() & 1) == 0;
    }

    @Override // org.ton.cell.CellDescriptor
    public int getDataLength() {
        int d2 = getD2() & 255;
        return (d2 & 1) + (d2 >>> 1);
    }

    @Override // org.ton.cell.CellDescriptor
    public CellType getCellType() {
        byte d1 = getD1();
        if ((d1 & 8) == 0) {
            return CellType.ORDINARY;
        }
        int i = d1 & 7;
        if (i != 0) {
            if (i == 1) {
                return CellType.MERKLE_PROOF;
            }
            return CellType.MERKLE_UPDATE;
        } else if ((d1 & 224) == 0) {
            return CellType.LIBRARY_REFERENCE;
        } else {
            return CellType.PRUNED_BRANCH;
        }
    }

    @Override // org.ton.cell.CellDescriptor
    public int getHashCount() {
        int m5233getLevelimpl = LevelMask.m5233getLevelimpl(mo5217getLevelMaskKat384U());
        if (isExotic() && getReferenceCount() == 0 && m5233getLevelimpl > 0) {
            return 1;
        }
        return 1 + m5233getLevelimpl;
    }

    public String toString() {
        int checkRadix;
        int checkRadix2;
        String padStart;
        int checkRadix3;
        int checkRadix4;
        String padStart2;
        StringBuilder sb = new StringBuilder();
        sb.append("CellDescriptor(d1=");
        byte d1 = getD1();
        checkRadix = CharsKt__CharJVMKt.checkRadix(2);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
        String num = Integer.toString(d1, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        padStart = StringsKt__StringsKt.padStart(num, 8, '0');
        sb.append(padStart);
        sb.append(", d2=");
        byte d2 = getD2();
        checkRadix3 = CharsKt__CharJVMKt.checkRadix(2);
        checkRadix4 = CharsKt__CharJVMKt.checkRadix(checkRadix3);
        String num2 = Integer.toString(d2, checkRadix4);
        Intrinsics.checkNotNullExpressionValue(num2, "toString(this, checkRadix(radix))");
        padStart2 = StringsKt__StringsKt.padStart(num2, 8, '0');
        sb.append(padStart2);
        sb.append(')');
        return sb.toString();
    }
}
