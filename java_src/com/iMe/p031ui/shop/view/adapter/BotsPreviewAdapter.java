package com.iMe.p031ui.shop.view.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.utils.common.ViewBindingAdapterHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.databinding.ForkShopItemGridBinding;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: BotsPreviewAdapter.kt */
/* renamed from: com.iMe.ui.shop.view.adapter.BotsPreviewAdapter */
/* loaded from: classes3.dex */
public final class BotsPreviewAdapter extends RecyclerListView.ViewBindingSelectionAdapter<ForkShopItemGridBinding> {
    private List<ShopItem> content = new ArrayList();
    private final int currentAccount;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public BotsPreviewAdapter(int i) {
        this.currentAccount = i;
    }

    public final void setContent(List<ShopItem> newContent) {
        Intrinsics.checkNotNullParameter(newContent, "newContent");
        this.content.clear();
        this.content.addAll(newContent);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewBindingAdapterHolder<ForkShopItemGridBinding> onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new ViewBindingAdapterHolder<>(ForkShopItemGridBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b8  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.iMe.utils.common.ViewBindingAdapterHolder<org.telegram.messenger.databinding.ForkShopItemGridBinding> r7, int r8) {
        /*
            r6 = this;
            java.lang.String r0 = "holder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.List<com.iMe.bots.domain.model.ShopItem> r0 = r6.content
            java.lang.Object r8 = r0.get(r8)
            com.iMe.bots.domain.model.ShopItem r8 = (com.iMe.bots.domain.model.ShopItem) r8
            androidx.viewbinding.ViewBinding r7 = r7.getBinding()
            org.telegram.messenger.databinding.ForkShopItemGridBinding r7 = (org.telegram.messenger.databinding.ForkShopItemGridBinding) r7
            android.widget.ImageView r0 = r7.botAvatar
            java.lang.String r1 = "botAvatar"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = r8.getAvatar()
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            com.iMe.utils.extentions.common.ImageViewExtKt.loadFrom$default(r0, r1, r2, r3, r4, r5)
            android.widget.TextView r0 = r7.botName
            java.lang.String r1 = r8.getTitle()
            r0.setText(r1)
            android.widget.TextView r0 = r7.botName
            int r1 = org.telegram.p043ui.ActionBar.Theme.key_windowBackgroundWhiteBlackText
            int r1 = org.telegram.p043ui.ActionBar.Theme.getColor(r1)
            r0.setTextColor(r1)
            android.widget.ImageView r0 = r7.botInstalledIcon
            int r1 = org.telegram.p043ui.ActionBar.Theme.key_chats_actionBackground
            int r1 = org.telegram.p043ui.ActionBar.Theme.getColor(r1)
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.setColorFilter(r1, r2)
            android.widget.ImageView r0 = r7.botInstalledIcon
            r1 = 8
            r0.setVisibility(r1)
            android.widget.TextView r0 = r7.botNewLabel
            r0.setVisibility(r1)
            java.util.List r0 = r8.getTags()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r3)
            r2.<init>(r3)
            java.util.Iterator r0 = r0.iterator()
        L65:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L79
            java.lang.Object r3 = r0.next()
            com.iMe.bots.domain.model.SmartTag r3 = (com.iMe.bots.domain.model.SmartTag) r3
            java.lang.String r3 = r3.getId()
            r2.add(r3)
            goto L65
        L79:
            java.lang.String r0 = "new"
            boolean r0 = r2.contains(r0)
            r2 = 0
            if (r0 == 0) goto L88
            android.widget.TextView r0 = r7.botNewLabel
            r0.setVisibility(r2)
            goto L8d
        L88:
            android.widget.TextView r0 = r7.botNewLabel
            r0.setVisibility(r1)
        L8d:
            java.lang.String r0 = r8.getPrice()
            if (r0 == 0) goto L9c
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto L9a
            goto L9c
        L9a:
            r0 = r2
            goto L9d
        L9c:
            r0 = 1
        L9d:
            if (r0 == 0) goto La7
            android.widget.TextView r0 = r7.botStatus
            java.lang.String r3 = "Free"
            r0.setText(r3)
            goto Lb0
        La7:
            android.widget.TextView r0 = r7.botStatus
            java.lang.String r3 = r8.getPrice()
            r0.setText(r3)
        Lb0:
            com.iMe.bots.data.model.BotStatus r0 = r8.getStatus()
            com.iMe.bots.data.model.BotStatus r3 = com.iMe.bots.data.model.BotStatus.PAID
            if (r0 == r3) goto Lc2
            android.widget.ImageView r0 = r7.botInstalledIcon
            r0.setVisibility(r2)
            android.widget.TextView r0 = r7.botNewLabel
            r0.setVisibility(r1)
        Lc2:
            android.widget.ImageView r0 = r7.botAvatar
            com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda1 r1 = new com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda1
            r1.<init>()
            r0.setOnClickListener(r1)
            android.widget.TextView r7 = r7.botName
            com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda0 r0 = new com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda0
            r0.<init>()
            r7.setOnClickListener(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.shop.view.adapter.BotsPreviewAdapter.onBindViewHolder(com.iMe.utils.common.ViewBindingAdapterHolder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$3$lambda$1(BotsPreviewAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.botItemClicked, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$3$lambda$2(BotsPreviewAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.botItemClicked, item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.content.size();
    }
}
