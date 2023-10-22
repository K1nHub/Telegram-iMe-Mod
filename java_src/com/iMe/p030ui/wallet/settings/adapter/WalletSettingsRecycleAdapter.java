package com.iMe.p030ui.wallet.settings.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: WalletSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.adapter.WalletSettingsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletSettingsRecycleAdapter extends BaseQuickAdapter<WalletSettingsItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3630R.layout.fork_recycle_item_wallet_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x006c, code lost:
        if (r8 == null) goto L11;
     */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void convert(com.chad.library.adapter.base.viewholder.BaseViewHolder r7, com.iMe.model.wallet.crypto.settings.WalletSettingsItem r8) {
        /*
            r6 = this;
            java.lang.String r0 = "holder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            int r0 = org.telegram.messenger.C3630R.C3633id.linear_root
            r1 = 0
            com.chad.library.adapter.base.viewholder.BaseViewHolder r2 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setRippleForeground(r7, r0, r1)
            int r3 = org.telegram.p042ui.ActionBar.Theme.key_windowBackgroundWhite
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedBackgroundColor(r2, r0, r3)
            int r2 = org.telegram.messenger.C3630R.C3633id.text_setting_description
            int r3 = org.telegram.p042ui.ActionBar.Theme.key_windowBackgroundWhiteGrayText2
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedTextColor(r0, r2, r3)
            int r3 = org.telegram.messenger.C3630R.C3633id.text_setting_title
            int r4 = org.telegram.p042ui.ActionBar.Theme.key_windowBackgroundWhiteBlackText
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedTextColor(r0, r3, r4)
            int r4 = org.telegram.messenger.C3630R.C3633id.image_icon
            int r5 = org.telegram.p042ui.ActionBar.Theme.key_windowBackgroundWhiteGrayIcon
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedImageColor(r0, r4, r5)
            int r5 = r8.getIcon()
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = r0.setImageResource(r4, r5)
            java.lang.Integer r4 = r8.getDescription()
            r5 = 1
            if (r4 == 0) goto L3f
            r1 = r5
        L3f:
            com.chad.library.adapter.base.viewholder.BaseViewHolder r0 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r0, r2, r1)
            int r1 = org.telegram.messenger.C3630R.C3633id.view_divider
            boolean r7 = com.iMe.utils.extentions.common.RecycleViewExtKt.isLastItem(r7, r6)
            r7 = r7 ^ r5
            com.chad.library.adapter.base.viewholder.BaseViewHolder r7 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r0, r1, r7)
            com.iMe.storage.domain.utils.system.ResourceManager r0 = r6.resourceManager
            int r1 = r8.getTitle()
            java.lang.String r0 = r0.getString(r1)
            com.chad.library.adapter.base.viewholder.BaseViewHolder r7 = r7.setText(r3, r0)
            java.lang.Integer r8 = r8.getDescription()
            if (r8 == 0) goto L6e
            int r8 = r8.intValue()
            com.iMe.storage.domain.utils.system.ResourceManager r0 = r6.resourceManager
            java.lang.String r8 = r0.getString(r8)
            if (r8 != 0) goto L70
        L6e:
            java.lang.String r8 = ""
        L70:
            r7.setText(r2, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.settings.adapter.WalletSettingsRecycleAdapter.convert(com.chad.library.adapter.base.viewholder.BaseViewHolder, com.iMe.model.wallet.crypto.settings.WalletSettingsItem):void");
    }
}
