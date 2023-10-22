package com.iMe.model.statistic;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StatisticDiagramModel.kt */
/* loaded from: classes3.dex */
public final class StatisticDiagramModel {
    private final String diagramName;
    private final List<DiagramItem> values;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StatisticDiagramModel copy$default(StatisticDiagramModel statisticDiagramModel, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = statisticDiagramModel.diagramName;
        }
        if ((i & 2) != 0) {
            list = statisticDiagramModel.values;
        }
        return statisticDiagramModel.copy(str, list);
    }

    public final String component1() {
        return this.diagramName;
    }

    public final List<DiagramItem> component2() {
        return this.values;
    }

    public final StatisticDiagramModel copy(String diagramName, List<DiagramItem> values) {
        Intrinsics.checkNotNullParameter(diagramName, "diagramName");
        Intrinsics.checkNotNullParameter(values, "values");
        return new StatisticDiagramModel(diagramName, values);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatisticDiagramModel) {
            StatisticDiagramModel statisticDiagramModel = (StatisticDiagramModel) obj;
            return Intrinsics.areEqual(this.diagramName, statisticDiagramModel.diagramName) && Intrinsics.areEqual(this.values, statisticDiagramModel.values);
        }
        return false;
    }

    public int hashCode() {
        return (this.diagramName.hashCode() * 31) + this.values.hashCode();
    }

    public String toString() {
        return "StatisticDiagramModel(diagramName=" + this.diagramName + ", values=" + this.values + ')';
    }

    public StatisticDiagramModel(String diagramName, List<DiagramItem> values) {
        Intrinsics.checkNotNullParameter(diagramName, "diagramName");
        Intrinsics.checkNotNullParameter(values, "values");
        this.diagramName = diagramName;
        this.values = values;
    }

    public final String getDiagramName() {
        return this.diagramName;
    }

    public final List<DiagramItem> getValues() {
        return this.values;
    }

    /* compiled from: StatisticDiagramModel.kt */
    /* loaded from: classes3.dex */
    public static final class DiagramItem {
        private final int colorKey;
        private final String name;
        private final double value;

        public static /* synthetic */ DiagramItem copy$default(DiagramItem diagramItem, String str, int i, double d, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = diagramItem.name;
            }
            if ((i2 & 2) != 0) {
                i = diagramItem.colorKey;
            }
            if ((i2 & 4) != 0) {
                d = diagramItem.value;
            }
            return diagramItem.copy(str, i, d);
        }

        public final String component1() {
            return this.name;
        }

        public final int component2() {
            return this.colorKey;
        }

        public final double component3() {
            return this.value;
        }

        public final DiagramItem copy(String name, int i, double d) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new DiagramItem(name, i, d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DiagramItem) {
                DiagramItem diagramItem = (DiagramItem) obj;
                return Intrinsics.areEqual(this.name, diagramItem.name) && this.colorKey == diagramItem.colorKey && Double.compare(this.value, diagramItem.value) == 0;
            }
            return false;
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.colorKey) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.value);
        }

        public String toString() {
            return "DiagramItem(name=" + this.name + ", colorKey=" + this.colorKey + ", value=" + this.value + ')';
        }

        public DiagramItem(String name, int i, double d) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.colorKey = i;
            this.value = d;
        }

        public final String getName() {
            return this.name;
        }

        public final int getColorKey() {
            return this.colorKey;
        }

        public final double getValue() {
            return this.value;
        }
    }
}
