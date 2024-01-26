package org.ton.cell;
/* compiled from: CellDescriptor.kt */
/* loaded from: classes6.dex */
public interface CellDescriptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    byte component1();

    byte component2();

    CellType getCellType();

    int getDataLength();

    boolean getHasHashes();

    int getHashCount();

    /* renamed from: getLevelMask-Kat384U  reason: not valid java name */
    int mo5384getLevelMaskKat384U();

    int getReferenceCount();

    boolean isAligned();

    boolean isExotic();

    /* compiled from: CellDescriptor.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* renamed from: computeD1-dYmMkqQ  reason: not valid java name */
        public final byte m5385computeD1dYmMkqQ(int i, boolean z, int i2) {
            return (byte) ((i << 5) | ((z ? 1 : 0) << 3) | (i2 & 7));
        }

        private Companion() {
        }

        public final byte computeD2(int i) {
            return (byte) ((i % 8 != 0 ? 1 : 0) | ((i >>> 2) & (-2)));
        }

        public final CellDescriptor fromBytes(byte b, byte b2) {
            return new CellDescriptorImpl(b, b2);
        }
    }
}
