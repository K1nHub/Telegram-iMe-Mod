package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
/* compiled from: CardButtonItem.kt */
/* loaded from: classes3.dex */
public final class CardButtonItem extends NoChildNode {
    private final int icon;

    /* renamed from: id */
    private final int f276id;
    private final int titleResId;

    public static /* synthetic */ CardButtonItem copy$default(CardButtonItem cardButtonItem, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = cardButtonItem.f276id;
        }
        if ((i4 & 2) != 0) {
            i2 = cardButtonItem.icon;
        }
        if ((i4 & 4) != 0) {
            i3 = cardButtonItem.titleResId;
        }
        return cardButtonItem.copy(i, i2, i3);
    }

    public final int component1() {
        return this.f276id;
    }

    public final int component2() {
        return this.icon;
    }

    public final int component3() {
        return this.titleResId;
    }

    public final CardButtonItem copy(int i, int i2, int i3) {
        return new CardButtonItem(i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CardButtonItem) {
            CardButtonItem cardButtonItem = (CardButtonItem) obj;
            return this.f276id == cardButtonItem.f276id && this.icon == cardButtonItem.icon && this.titleResId == cardButtonItem.titleResId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f276id * 31) + this.icon) * 31) + this.titleResId;
    }

    public String toString() {
        return "CardButtonItem(id=" + this.f276id + ", icon=" + this.icon + ", titleResId=" + this.titleResId + ')';
    }

    public final int getId() {
        return this.f276id;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public CardButtonItem(int i, int i2, int i3) {
        this.f276id = i;
        this.icon = i2;
        this.titleResId = i3;
    }
}
