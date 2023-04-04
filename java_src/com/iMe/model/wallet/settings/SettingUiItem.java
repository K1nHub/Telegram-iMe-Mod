package com.iMe.model.wallet.settings;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SettingUiItem.kt */
/* loaded from: classes3.dex */
public final class SettingUiItem {
    private final SettingMenuItem item;

    public static /* synthetic */ SettingUiItem copy$default(SettingUiItem settingUiItem, SettingMenuItem settingMenuItem, int i, Object obj) {
        if ((i & 1) != 0) {
            settingMenuItem = settingUiItem.item;
        }
        return settingUiItem.copy(settingMenuItem);
    }

    public final SettingMenuItem component1() {
        return this.item;
    }

    public final SettingUiItem copy(SettingMenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return new SettingUiItem(item);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SettingUiItem) && this.item == ((SettingUiItem) obj).item;
    }

    public int hashCode() {
        return this.item.hashCode();
    }

    public String toString() {
        return "SettingUiItem(item=" + this.item + ')';
    }

    public SettingUiItem(SettingMenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
    }

    public final SettingMenuItem getItem() {
        return this.item;
    }

    public final String getDescription(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return this.item.getDescription() != null ? resourceManager.getString(this.item.getDescription().intValue()) : "";
    }
}
