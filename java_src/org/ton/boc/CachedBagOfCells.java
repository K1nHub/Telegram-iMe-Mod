package org.ton.boc;

import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.StringsKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.ton.boc.CachedBagOfCells;
import org.ton.cell.Cell;
/* compiled from: CachedBagOfCells.kt */
/* loaded from: classes6.dex */
public final class CachedBagOfCells implements BagOfCells, Iterable<Cell>, KMappedMarker {
    private int cellCount;
    private HashMap<Cell, Integer> cellHashmap;
    private ArrayList<CellInfo> cellList;
    private ArrayList<CellInfo> cellListTmp;
    private int revisitIndex;
    private ArrayList<Integer> rootIndexes;
    private final List<Cell> roots;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CachedBagOfCells.kt */
    /* loaded from: classes6.dex */
    public enum Revisit {
        PREVISIT,
        VISIT,
        ALLOCATE
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CachedBagOfCells(List<? extends Cell> roots) {
        Intrinsics.checkNotNullParameter(roots, "roots");
        this.roots = roots;
        this.cellHashmap = new HashMap<>();
        this.cellList = new ArrayList<>();
        this.rootIndexes = new ArrayList<>(getRoots().size());
        this.cellListTmp = new ArrayList<>();
        importCells();
    }

    @Override // org.ton.boc.BagOfCells
    public List<Cell> getRoots() {
        return this.roots;
    }

    @Override // org.ton.boc.BagOfCells
    public byte[] toByteArray() {
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            BagOfCellsUtilsKt.writeBagOfCells(bytePacketBuilder, this, (r13 & 2) != 0 ? false : false, (r13 & 4) != 0 ? false : false, (r13 & 8) != 0 ? false : false, (r13 & 16) != 0 ? 0 : 0);
            return StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null);
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Cell> iterator() {
        Sequence asSequence;
        Sequence map;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.cellList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<CellInfo, Cell>() { // from class: org.ton.boc.CachedBagOfCells$iterator$1
            @Override // kotlin.jvm.functions.Function1
            public final Cell invoke(CachedBagOfCells.CellInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getCell();
            }
        });
        return map.iterator();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : getRoots()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Cell.Companion.toString$default(Cell.Companion, (Cell) obj, sb, null, 4, null);
            i = i2;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BagOfCells) && Intrinsics.areEqual(getRoots(), ((BagOfCells) obj).getRoots());
    }

    public int hashCode() {
        return getRoots().hashCode();
    }

    private final void clearCells() {
        this.cellCount = 0;
        this.cellHashmap.clear();
        this.cellList.clear();
        this.rootIndexes.clear();
    }

    private final void importCells() {
        clearCells();
        Iterator<T> it = getRoots().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            this.rootIndexes.add(Integer.valueOf(importCell((Cell) it.next(), 0)));
        }
        reorderCells();
        if (!(this.cellCount != 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    private final int importCell(Cell cell, int i) {
        if (!(i <= 1024)) {
            throw new IllegalStateException("error while importing a cell into a bag of cells: cell depth too large".toString());
        }
        Integer num = this.cellHashmap.get(cell);
        if (num != null) {
            this.cellList.get(num.intValue()).setShouldCache(true);
            return num.intValue();
        }
        ArrayList arrayList = new ArrayList(cell.getRefs().size());
        int i2 = 1;
        for (Cell cell2 : cell.getRefs()) {
            int importCell = importCell(cell2, i + 1);
            i2 += this.cellList.get(importCell).getWeight();
            arrayList.add(Integer.valueOf(importCell));
        }
        int size = this.cellList.size();
        int i3 = this.cellCount;
        if (!(size == i3)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.cellHashmap.put(cell, Integer.valueOf(i3));
        this.cellList.add(new CellInfo(cell, arrayList, Math.min(255, i2), 0, false, 24, null));
        int i4 = this.cellCount;
        this.cellCount = i4 + 1;
        return i4;
    }

    private final void reorderCells() {
        int lastIndex;
        int collectionSizeOrDefault;
        List asReversedMutable;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.cellList);
        while (true) {
            if (-1 >= lastIndex) {
                break;
            }
            CellInfo cellInfo = this.cellList.get(lastIndex);
            Intrinsics.checkNotNullExpressionValue(cellInfo, "cellList[i]");
            CellInfo cellInfo2 = cellInfo;
            int size = cellInfo2.getReferencesIndexes().size();
            int i = 63;
            int i2 = 0;
            int i3 = 0;
            for (Object obj : cellInfo2.getReferencesIndexes()) {
                int i4 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                CellInfo cellInfo3 = this.cellList.get(((Number) obj).intValue());
                Intrinsics.checkNotNullExpressionValue(cellInfo3, "cellList[referenceIndex]");
                CellInfo cellInfo4 = cellInfo3;
                if (cellInfo4.getWeight() <= (i2 + 63) / cellInfo2.getReferencesIndexes().size()) {
                    i -= cellInfo4.getWeight();
                    size--;
                    i3 |= 1 << i2;
                }
                i2 = i4;
            }
            if (size > 0) {
                for (Object obj2 : cellInfo2.getReferencesIndexes()) {
                    int i5 = r2 + 1;
                    if (r2 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    int intValue = ((Number) obj2).intValue();
                    if (((1 << r2) & i3) == 0) {
                        CellInfo cellInfo5 = this.cellList.get(intValue);
                        Intrinsics.checkNotNullExpressionValue(cellInfo5, "cellList[referenceIndex]");
                        CellInfo cellInfo6 = cellInfo5;
                        int i6 = i + 1;
                        int i7 = i / size;
                        if (cellInfo6.getWeight() > i7) {
                            cellInfo6.setWeight(i7);
                        }
                        i = i6;
                    }
                    r2 = i5;
                }
            }
            lastIndex--;
        }
        for (CellInfo cellInfo7 : this.cellList) {
            int i8 = 1;
            for (Number number : cellInfo7.getReferencesIndexes()) {
                i8 += this.cellList.get(number.intValue()).getWeight();
            }
            if (!(i8 <= 64)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (i8 <= cellInfo7.getWeight()) {
                cellInfo7.setWeight(i8);
            } else {
                cellInfo7.setWeight(0);
            }
        }
        if (this.cellCount > 0) {
            this.revisitIndex = 0;
            this.cellListTmp.clear();
            this.cellListTmp.ensureCapacity(this.cellCount);
            for (Number number2 : this.rootIndexes) {
                int intValue2 = number2.intValue();
                revisit(intValue2, Revisit.PREVISIT);
                revisit(intValue2, Revisit.VISIT);
            }
            for (Number number3 : this.rootIndexes) {
                revisit(number3.intValue(), Revisit.ALLOCATE);
            }
            ArrayList<Integer> arrayList = this.rootIndexes;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (Number number4 : arrayList) {
                arrayList2.add(Integer.valueOf(this.cellList.get(number4.intValue()).getNewIndex()));
            }
            this.rootIndexes = new ArrayList<>(arrayList2);
            if (!(this.revisitIndex == this.cellCount)) {
                throw new IllegalStateException(("revisitIndex: " + this.revisitIndex + ", cellCount: " + this.cellCount).toString());
            }
            if ((this.cellList.size() == this.cellListTmp.size() ? 1 : 0) != 0) {
                asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(this.cellListTmp);
                this.cellList = new ArrayList<>(asReversedMutable);
                this.cellListTmp.clear();
                return;
            }
            throw new IllegalStateException(("cellList.size: " + this.cellList.size() + ", cellListTmp.size: " + this.cellListTmp.size()).toString());
        }
    }

    private final int revisit(int i, Revisit revisit) {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        boolean z = false;
        if (i >= 0 && i < this.cellCount) {
            z = true;
        }
        if (!z) {
            throw new IllegalStateException("Check failed.".toString());
        }
        CellInfo cellInfo = this.cellList.get(i);
        Intrinsics.checkNotNullExpressionValue(cellInfo, "cellList[cellIndex]");
        CellInfo cellInfo2 = cellInfo;
        if (cellInfo2.getNewIndex() >= 0) {
            return cellInfo2.getNewIndex();
        }
        Revisit revisit2 = Revisit.PREVISIT;
        if (revisit == revisit2) {
            if (cellInfo2.getNewIndex() == -1) {
                for (lastIndex3 = CollectionsKt__CollectionsKt.getLastIndex(cellInfo2.getReferencesIndexes()); -1 < lastIndex3; lastIndex3--) {
                    Integer num = cellInfo2.getReferencesIndexes().get(lastIndex3);
                    Intrinsics.checkNotNullExpressionValue(num, "cellInfo.referencesIndexes[j]");
                    revisit(num.intValue(), cellInfo2.getWeight() == 0 ? Revisit.VISIT : Revisit.PREVISIT);
                }
                cellInfo2.setNewIndex(-2);
            }
            return cellInfo2.getNewIndex();
        } else if (revisit == Revisit.ALLOCATE) {
            int i2 = this.revisitIndex;
            this.revisitIndex = i2 + 1;
            cellInfo2.setNewIndex(i2);
            this.cellListTmp.add(cellInfo2);
            return i2;
        } else if (cellInfo2.getNewIndex() == -3) {
            return cellInfo2.getNewIndex();
        } else {
            if (cellInfo2.getWeight() == 0) {
                revisit(i, revisit2);
            }
            for (lastIndex = CollectionsKt__CollectionsKt.getLastIndex(cellInfo2.getReferencesIndexes()); -1 < lastIndex; lastIndex--) {
                Integer num2 = cellInfo2.getReferencesIndexes().get(lastIndex);
                Intrinsics.checkNotNullExpressionValue(num2, "cellInfo.referencesIndexes[j]");
                revisit(num2.intValue(), Revisit.VISIT);
            }
            for (lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(cellInfo2.getReferencesIndexes()); -1 < lastIndex2; lastIndex2--) {
                ArrayList<Integer> referencesIndexes = cellInfo2.getReferencesIndexes();
                Integer num3 = cellInfo2.getReferencesIndexes().get(lastIndex2);
                Intrinsics.checkNotNullExpressionValue(num3, "cellInfo.referencesIndexes[j]");
                referencesIndexes.set(lastIndex2, Integer.valueOf(revisit(num3.intValue(), Revisit.ALLOCATE)));
            }
            cellInfo2.setNewIndex(-3);
            return cellInfo2.getNewIndex();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CachedBagOfCells.kt */
    /* loaded from: classes6.dex */
    public static final class CellInfo {
        private final Cell cell;
        private int newIndex;
        private ArrayList<Integer> referencesIndexes;
        private boolean shouldCache;
        private int weight;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CellInfo) {
                CellInfo cellInfo = (CellInfo) obj;
                return Intrinsics.areEqual(this.cell, cellInfo.cell) && Intrinsics.areEqual(this.referencesIndexes, cellInfo.referencesIndexes) && this.weight == cellInfo.weight && this.newIndex == cellInfo.newIndex && this.shouldCache == cellInfo.shouldCache;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((((this.cell.hashCode() * 31) + this.referencesIndexes.hashCode()) * 31) + this.weight) * 31) + this.newIndex) * 31;
            boolean z = this.shouldCache;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public String toString() {
            return "CellInfo(cell=" + this.cell + ", referencesIndexes=" + this.referencesIndexes + ", weight=" + this.weight + ", newIndex=" + this.newIndex + ", shouldCache=" + this.shouldCache + ')';
        }

        public CellInfo(Cell cell, ArrayList<Integer> referencesIndexes, int i, int i2, boolean z) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            Intrinsics.checkNotNullParameter(referencesIndexes, "referencesIndexes");
            this.cell = cell;
            this.referencesIndexes = referencesIndexes;
            this.weight = i;
            this.newIndex = i2;
            this.shouldCache = z;
        }

        public /* synthetic */ CellInfo(Cell cell, ArrayList arrayList, int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(cell, arrayList, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? -1 : i2, (i3 & 16) != 0 ? false : z);
        }

        public final Cell getCell() {
            return this.cell;
        }

        public final ArrayList<Integer> getReferencesIndexes() {
            return this.referencesIndexes;
        }

        public final int getWeight() {
            return this.weight;
        }

        public final void setWeight(int i) {
            this.weight = i;
        }

        public final int getNewIndex() {
            return this.newIndex;
        }

        public final void setNewIndex(int i) {
            this.newIndex = i;
        }

        public final void setShouldCache(boolean z) {
            this.shouldCache = z;
        }
    }

    /* compiled from: CachedBagOfCells.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
