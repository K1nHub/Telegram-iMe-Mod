package com.iMe.model.wallet.crypto.buy;

import com.iMe.model.common.NoChildNode;
/* compiled from: CryptoBuyFooterItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBuyFooterItem extends NoChildNode {
    private final int description;
    private final int title;

    public static /* synthetic */ CryptoBuyFooterItem copy$default(CryptoBuyFooterItem cryptoBuyFooterItem, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = cryptoBuyFooterItem.title;
        }
        if ((i3 & 2) != 0) {
            i2 = cryptoBuyFooterItem.description;
        }
        return cryptoBuyFooterItem.copy(i, i2);
    }

    public final int component1() {
        return this.title;
    }

    public final int component2() {
        return this.description;
    }

    public final CryptoBuyFooterItem copy(int i, int i2) {
        return new CryptoBuyFooterItem(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBuyFooterItem) {
            CryptoBuyFooterItem cryptoBuyFooterItem = (CryptoBuyFooterItem) obj;
            return this.title == cryptoBuyFooterItem.title && this.description == cryptoBuyFooterItem.description;
        }
        return false;
    }

    public int hashCode() {
        return (this.title * 31) + this.description;
    }

    public String toString() {
        return "CryptoBuyFooterItem(title=" + this.title + ", description=" + this.description + ')';
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getDescription() {
        return this.description;
    }

    public CryptoBuyFooterItem(int i, int i2) {
        this.title = i;
        this.description = i2;
    }
}
