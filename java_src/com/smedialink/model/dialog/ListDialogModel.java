package com.smedialink.model.dialog;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ListDialogModel.kt */
/* loaded from: classes3.dex */
public final class ListDialogModel {
    private final List<String> items;
    private final String message;
    private final String negativeButtonText;
    private final String positiveButtonText;
    private final String subtitle;
    private final String title;

    public ListDialogModel() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ ListDialogModel copy$default(ListDialogModel listDialogModel, String str, String str2, String str3, List list, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = listDialogModel.title;
        }
        if ((i & 2) != 0) {
            str2 = listDialogModel.subtitle;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = listDialogModel.message;
        }
        String str7 = str3;
        List<String> list2 = list;
        if ((i & 8) != 0) {
            list2 = listDialogModel.items;
        }
        List list3 = list2;
        if ((i & 16) != 0) {
            str4 = listDialogModel.negativeButtonText;
        }
        String str8 = str4;
        if ((i & 32) != 0) {
            str5 = listDialogModel.positiveButtonText;
        }
        return listDialogModel.copy(str, str6, str7, list3, str8, str5);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.subtitle;
    }

    public final String component3() {
        return this.message;
    }

    public final List<String> component4() {
        return this.items;
    }

    public final String component5() {
        return this.negativeButtonText;
    }

    public final String component6() {
        return this.positiveButtonText;
    }

    public final ListDialogModel copy(String str, String str2, String str3, List<String> items, String str4, String str5) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new ListDialogModel(str, str2, str3, items, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ListDialogModel) {
            ListDialogModel listDialogModel = (ListDialogModel) obj;
            return Intrinsics.areEqual(this.title, listDialogModel.title) && Intrinsics.areEqual(this.subtitle, listDialogModel.subtitle) && Intrinsics.areEqual(this.message, listDialogModel.message) && Intrinsics.areEqual(this.items, listDialogModel.items) && Intrinsics.areEqual(this.negativeButtonText, listDialogModel.negativeButtonText) && Intrinsics.areEqual(this.positiveButtonText, listDialogModel.positiveButtonText);
        }
        return false;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subtitle;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.message;
        int hashCode3 = (((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.items.hashCode()) * 31;
        String str4 = this.negativeButtonText;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.positiveButtonText;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "ListDialogModel(title=" + this.title + ", subtitle=" + this.subtitle + ", message=" + this.message + ", items=" + this.items + ", negativeButtonText=" + this.negativeButtonText + ", positiveButtonText=" + this.positiveButtonText + ')';
    }

    public ListDialogModel(String str, String str2, String str3, List<String> items, String str4, String str5) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.title = str;
        this.subtitle = str2;
        this.message = str3;
        this.items = items;
        this.negativeButtonText = str4;
        this.positiveButtonText = str5;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getMessage() {
        return this.message;
    }

    public /* synthetic */ ListDialogModel(String str, String str2, String str3, List list, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5);
    }

    public final List<String> getItems() {
        return this.items;
    }

    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }

    public final String getPositiveButtonText() {
        return this.positiveButtonText;
    }
}
