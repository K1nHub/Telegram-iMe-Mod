package com.iMe.p032ui.shop.view.adapter;

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
import org.telegram.p048ui.Components.RecyclerListView;
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

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c4  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.iMe.utils.common.ViewBindingAdapterHolder<org.telegram.messenger.databinding.ForkShopItemGridBinding> r8, int r9) {
        /*
            r7 = this;
            java.lang.String r0 = "holder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.List<com.iMe.bots.domain.model.ShopItem> r0 = r7.content
            java.lang.Object r9 = r0.get(r9)
            com.iMe.bots.domain.model.ShopItem r9 = (com.iMe.bots.domain.model.ShopItem) r9
            androidx.viewbinding.ViewBinding r8 = r8.getBinding()
            org.telegram.messenger.databinding.ForkShopItemGridBinding r8 = (org.telegram.messenger.databinding.ForkShopItemGridBinding) r8
            android.widget.ImageView r0 = r8.botAvatar
            java.lang.String r1 = "botAvatar"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = r9.getAvatar()
            android.widget.ImageView r2 = r8.botAvatar
            android.content.Context r2 = r2.getContext()
            java.lang.String r3 = "botAvatar.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r3 = 0
            r4 = 0
            r5 = 12
            r6 = 0
            com.iMe.p032ui.smartpanel.extension.ImageViewExtKt.loadFrom$default(r0, r1, r2, r3, r4, r5, r6)
            android.widget.TextView r0 = r8.botName
            java.lang.String r1 = r9.getTitle()
            r0.setText(r1)
            android.widget.TextView r0 = r8.botName
            java.lang.String r1 = "windowBackgroundWhiteBlackText"
            int r1 = org.telegram.p048ui.ActionBar.Theme.getColor(r1)
            r0.setTextColor(r1)
            android.widget.ImageView r0 = r8.botInstalledIcon
            java.lang.String r1 = "chats_actionBackground"
            int r1 = org.telegram.p048ui.ActionBar.Theme.getColor(r1)
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.setColorFilter(r1, r2)
            android.widget.ImageView r0 = r8.botInstalledIcon
            r1 = 8
            r0.setVisibility(r1)
            android.widget.TextView r0 = r8.botNewLabel
            r0.setVisibility(r1)
            java.util.List r0 = r9.getTags()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r3)
            r2.<init>(r3)
            java.util.Iterator r0 = r0.iterator()
        L71:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L85
            java.lang.Object r3 = r0.next()
            com.iMe.bots.domain.model.SmartTag r3 = (com.iMe.bots.domain.model.SmartTag) r3
            java.lang.String r3 = r3.getId()
            r2.add(r3)
            goto L71
        L85:
            java.lang.String r0 = "new"
            boolean r0 = r2.contains(r0)
            r2 = 0
            if (r0 == 0) goto L94
            android.widget.TextView r0 = r8.botNewLabel
            r0.setVisibility(r2)
            goto L99
        L94:
            android.widget.TextView r0 = r8.botNewLabel
            r0.setVisibility(r1)
        L99:
            java.lang.String r0 = r9.getPrice()
            if (r0 == 0) goto La8
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto La6
            goto La8
        La6:
            r0 = r2
            goto La9
        La8:
            r0 = 1
        La9:
            if (r0 == 0) goto Lb3
            android.widget.TextView r0 = r8.botStatus
            java.lang.String r3 = "Free"
            r0.setText(r3)
            goto Lbc
        Lb3:
            android.widget.TextView r0 = r8.botStatus
            java.lang.String r3 = r9.getPrice()
            r0.setText(r3)
        Lbc:
            com.iMe.bots.data.model.BotStatus r0 = r9.getStatus()
            com.iMe.bots.data.model.BotStatus r3 = com.iMe.bots.data.model.BotStatus.PAID
            if (r0 == r3) goto Lce
            android.widget.ImageView r0 = r8.botInstalledIcon
            r0.setVisibility(r2)
            android.widget.TextView r0 = r8.botNewLabel
            r0.setVisibility(r1)
        Lce:
            android.widget.ImageView r0 = r8.botAvatar
            com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda1 r1 = new com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda1
            r1.<init>()
            r0.setOnClickListener(r1)
            android.widget.TextView r8 = r8.botName
            com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda0 r0 = new com.iMe.ui.shop.view.adapter.BotsPreviewAdapter$$ExternalSyntheticLambda0
            r0.<init>()
            r8.setOnClickListener(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p032ui.shop.view.adapter.BotsPreviewAdapter.onBindViewHolder(com.iMe.utils.common.ViewBindingAdapterHolder, int):void");
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
