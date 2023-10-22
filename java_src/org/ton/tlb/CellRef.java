package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
/* compiled from: CellRef.kt */
/* loaded from: classes6.dex */
public interface CellRef<T> extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    T getValue();

    BitString hash();

    BitString hash(TlbCodec<T> tlbCodec);

    Cell toCell(TlbCodec<T> tlbCodec);

    /* compiled from: CellRef.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Cell toCell$default(CellRef cellRef, TlbCodec tlbCodec, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    tlbCodec = null;
                }
                return cellRef.toCell(tlbCodec);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCell");
        }

        public static <T> BitString hash(CellRef<? extends T> cellRef) {
            return cellRef.hash(null);
        }

        public static <T> BitString hash(CellRef<? extends T> cellRef, TlbCodec<T> tlbCodec) {
            return Cell.DefaultImpls.hash$default(toCell$default(cellRef, null, 1, null), 0, 1, null);
        }

        public static <T> TlbPrettyPrinter print(CellRef<? extends T> cellRef, TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            T value = cellRef.getValue();
            if (value instanceof TlbObject) {
                return ((TlbObject) value).print(printer);
            }
            printer.type(value);
            return printer;
        }
    }

    /* compiled from: CellRef.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <T> CellRef<T> valueOf(Cell cell, TlbCodec<T> codec) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            Intrinsics.checkNotNullParameter(codec, "codec");
            return new CellRefImpl(cell, codec);
        }

        public final <T> CellRef<T> valueOf(T t, TlbCodec<T> tlbCodec) {
            return new CellRefValue(t, tlbCodec);
        }

        public final <T> TlbCodec<CellRef<T>> tlbCodec(TlbCodec<T> codec) {
            Intrinsics.checkNotNullParameter(codec, "codec");
            return new CellRefTlbConstructor(codec);
        }
    }
}
