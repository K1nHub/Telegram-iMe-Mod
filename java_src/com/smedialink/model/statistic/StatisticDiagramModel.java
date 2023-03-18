package com.smedialink.model.statistic;

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
        private final String color;
        private final String name;
        private final double value;

        public static /* synthetic */ DiagramItem copy$default(DiagramItem diagramItem, String str, String str2, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                str = diagramItem.name;
            }
            if ((i & 2) != 0) {
                str2 = diagramItem.color;
            }
            if ((i & 4) != 0) {
                d = diagramItem.value;
            }
            return diagramItem.copy(str, str2, d);
        }

        public final String component1() {
            return this.name;
        }

        public final String component2() {
            return this.color;
        }

        public final double component3() {
            return this.value;
        }

        public final DiagramItem copy(String name, String color, double d) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(color, "color");
            return new DiagramItem(name, color, d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DiagramItem) {
                DiagramItem diagramItem = (DiagramItem) obj;
                return Intrinsics.areEqual(this.name, diagramItem.name) && Intrinsics.areEqual(this.color, diagramItem.color) && Double.compare(this.value, diagramItem.value) == 0;
            }
            return false;
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.color.hashCode()) * 31) + Double.doubleToLongBits(this.value);
        }

        public String toString() {
            return "DiagramItem(name=" + this.name + ", color=" + this.color + ", value=" + this.value + ')';
        }

        public DiagramItem(String name, String color, double d) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(color, "color");
            this.name = name;
            this.color = color;
            this.value = d;
        }

        public final String getName() {
            return this.name;
        }

        public final String getColor() {
            return this.color;
        }

        public final double getValue() {
            return this.value;
        }
    }
}
