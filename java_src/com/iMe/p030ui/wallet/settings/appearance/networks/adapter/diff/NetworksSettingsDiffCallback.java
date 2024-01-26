package com.iMe.p030ui.wallet.settings.appearance.networks.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.iMe.model.wallet.settings.NetworkSettingsItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworksSettingsDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.adapter.diff.NetworksSettingsDiffCallback */
/* loaded from: classes4.dex */
public final class NetworksSettingsDiffCallback extends DiffUtil.ItemCallback<NetworkSettingsItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(NetworkSettingsItem oldItem, NetworkSettingsItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem.getNetworkItem().getNetworkId(), newItem.getNetworkItem().getNetworkId());
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(NetworkSettingsItem oldItem, NetworkSettingsItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.isEnabled() == newItem.isEnabled();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(NetworkSettingsItem oldItem, NetworkSettingsItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if (oldItem.isEnabled() != newItem.isEnabled()) {
            return newItem;
        }
        return null;
    }
}
