package com.iMe.model.wallet;
/* compiled from: ItemOptionsModel.kt */
/* loaded from: classes3.dex */
public final class ItemOptionsModel {
    private final int iconResId;

    /* renamed from: id */
    private final int f296id;
    private final int textResId;

    public static /* synthetic */ ItemOptionsModel copy$default(ItemOptionsModel itemOptionsModel, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = itemOptionsModel.f296id;
        }
        if ((i4 & 2) != 0) {
            i2 = itemOptionsModel.iconResId;
        }
        if ((i4 & 4) != 0) {
            i3 = itemOptionsModel.textResId;
        }
        return itemOptionsModel.copy(i, i2, i3);
    }

    public final int component1() {
        return this.f296id;
    }

    public final int component2() {
        return this.iconResId;
    }

    public final int component3() {
        return this.textResId;
    }

    public final ItemOptionsModel copy(int i, int i2, int i3) {
        return new ItemOptionsModel(i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ItemOptionsModel) {
            ItemOptionsModel itemOptionsModel = (ItemOptionsModel) obj;
            return this.f296id == itemOptionsModel.f296id && this.iconResId == itemOptionsModel.iconResId && this.textResId == itemOptionsModel.textResId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f296id * 31) + this.iconResId) * 31) + this.textResId;
    }

    public String toString() {
        return "ItemOptionsModel(id=" + this.f296id + ", iconResId=" + this.iconResId + ", textResId=" + this.textResId + ')';
    }

    public ItemOptionsModel(int i, int i2, int i3) {
        this.f296id = i;
        this.iconResId = i2;
        this.textResId = i3;
    }

    public final int getId() {
        return this.f296id;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTextResId() {
        return this.textResId;
    }
}
