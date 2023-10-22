package org.ton.block;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maybe.kt */
/* loaded from: classes6.dex */
public final class JustConstructor<X> extends org.ton.tlb.TlbConstructor<Just<X>> {

    /* renamed from: ID */
    private static final BitString f2029ID;
    private final TlbCodec<X> typeCodec;

    static {
        new Companion(null);
        f2029ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{true}, 1));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (Just) ((Just) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JustConstructor(TlbCodec<X> typeCodec) {
        super("just$1 {X:Type} value:X = Maybe X;", f2029ID);
        Intrinsics.checkNotNullParameter(typeCodec, "typeCodec");
        this.typeCodec = typeCodec;
    }

    public void storeTlb(CellBuilder cellBuilder, Just<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.typeCodec.storeTlb(cellBuilder, value.getValue());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Just<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Just<>(this.typeCodec.loadTlb(cellSlice));
    }

    /* compiled from: Maybe.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
