package com.iMe.model.dialog;

import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RadioCellsListDialogModel.kt */
/* loaded from: classes3.dex */
public final class RadioCellsListDialogModel {
    private final List<Pair<String, Boolean>> items;
    private final String negativeButtonText;
    private final String subtitle;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RadioCellsListDialogModel copy$default(RadioCellsListDialogModel radioCellsListDialogModel, String str, String str2, List list, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = radioCellsListDialogModel.title;
        }
        if ((i & 2) != 0) {
            str2 = radioCellsListDialogModel.subtitle;
        }
        if ((i & 4) != 0) {
            list = radioCellsListDialogModel.items;
        }
        if ((i & 8) != 0) {
            str3 = radioCellsListDialogModel.negativeButtonText;
        }
        return radioCellsListDialogModel.copy(str, str2, list, str3);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.subtitle;
    }

    public final List<Pair<String, Boolean>> component3() {
        return this.items;
    }

    public final String component4() {
        return this.negativeButtonText;
    }

    public final RadioCellsListDialogModel copy(String str, String str2, List<Pair<String, Boolean>> items, String str3) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new RadioCellsListDialogModel(str, str2, items, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RadioCellsListDialogModel) {
            RadioCellsListDialogModel radioCellsListDialogModel = (RadioCellsListDialogModel) obj;
            return Intrinsics.areEqual(this.title, radioCellsListDialogModel.title) && Intrinsics.areEqual(this.subtitle, radioCellsListDialogModel.subtitle) && Intrinsics.areEqual(this.items, radioCellsListDialogModel.items) && Intrinsics.areEqual(this.negativeButtonText, radioCellsListDialogModel.negativeButtonText);
        }
        return false;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subtitle;
        int hashCode2 = (((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.items.hashCode()) * 31;
        String str3 = this.negativeButtonText;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "RadioCellsListDialogModel(title=" + this.title + ", subtitle=" + this.subtitle + ", items=" + this.items + ", negativeButtonText=" + this.negativeButtonText + ')';
    }

    public RadioCellsListDialogModel(String str, String str2, List<Pair<String, Boolean>> items, String str3) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.title = str;
        this.subtitle = str2;
        this.items = items;
        this.negativeButtonText = str3;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public /* synthetic */ RadioCellsListDialogModel(String str, String str2, List list, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? CollectionsKt.emptyList() : list, str3);
    }

    public final List<Pair<String, Boolean>> getItems() {
        return this.items;
    }

    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }
}
