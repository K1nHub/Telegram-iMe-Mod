package org.ton.cell;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.bitstring.BitString;
/* compiled from: Cell.kt */
@JsonClassDiscriminator(discriminator = "@type")
/* loaded from: classes6.dex */
public interface Cell {
    public static final Companion Companion = Companion.$$INSTANCE;

    CellSlice beginParse();

    int depth(int i);

    BitString getBits();

    CellDescriptor getDescriptor();

    /* renamed from: getLevelMask-Kat384U  reason: not valid java name */
    int mo5206getLevelMaskKat384U();

    List<Cell> getRefs();

    CellType getType();

    BitString hash(int i);

    Cell virtualize(int i);

    /* compiled from: Cell.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static CellType getType(Cell cell) {
            return cell.getDescriptor().getCellType();
        }

        /* renamed from: getLevelMask-Kat384U  reason: not valid java name */
        public static int m5207getLevelMaskKat384U(Cell cell) {
            return cell.getDescriptor().mo5217getLevelMaskKat384U();
        }

        public static /* synthetic */ BitString hash$default(Cell cell, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = 3;
                }
                return cell.hash(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hash");
        }

        public static CellSlice beginParse(Cell cell) {
            return CellSlice.Companion.beginParse(cell);
        }
    }

    /* compiled from: Cell.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Cell empty() {
            return EmptyCell.INSTANCE;
        }

        public final String toString(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            StringBuilder sb = new StringBuilder();
            toString$default($$INSTANCE, cell, sb, null, 4, null);
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }

        public static /* synthetic */ void toString$default(Companion companion, Cell cell, Appendable appendable, String str, int i, Object obj) {
            if ((i & 4) != 0) {
                str = "";
            }
            companion.toString(cell, appendable, str);
        }

        public final void toString(Cell cell, Appendable appendable, String indent) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            Intrinsics.checkNotNullParameter(appendable, "appendable");
            Intrinsics.checkNotNullParameter(indent, "indent");
            appendable.append(indent);
            if (cell.getType().isExotic()) {
                appendable.append(cell.getType().toString());
                appendable.append(' ');
            }
            appendable.append(cell.getBits().toString());
            for (Cell cell2 : cell.getRefs()) {
                appendable.append('\n');
                Companion companion = $$INSTANCE;
                companion.toString(cell2, appendable, indent + "    ");
            }
        }
    }
}
