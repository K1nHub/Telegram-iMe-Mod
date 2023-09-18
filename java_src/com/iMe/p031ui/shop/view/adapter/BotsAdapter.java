package com.iMe.p031ui.shop.view.adapter;

import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.iMe.bots.data.model.BotStatus;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.domain.model.SmartTag;
import com.iMe.p031ui.shop.util.TextViewExtKt;
import com.iMe.utils.common.ViewBindingAdapterHolder;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import me.grantland.widget.AutofitTextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.databinding.ForkShopItemListBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: BotsAdapter.kt */
/* renamed from: com.iMe.ui.shop.view.adapter.BotsAdapter */
/* loaded from: classes4.dex */
public final class BotsAdapter extends RecyclerListView.ViewBindingSelectionAdapter<ForkShopItemListBinding> {
    private List<ShopItem> content = new ArrayList();
    private final int currentAccount;

    /* compiled from: BotsAdapter.kt */
    /* renamed from: com.iMe.ui.shop.view.adapter.BotsAdapter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BotStatus.values().length];
            try {
                iArr[BotStatus.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BotStatus.PAID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BotStatus.UPDATE_AVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BotStatus.DOWNLOADING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BotStatus.ENABLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BotStatus.DISABLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public BotsAdapter(int i) {
        this.currentAccount = i;
    }

    public final void setContent(List<ShopItem> newContent) {
        Intrinsics.checkNotNullParameter(newContent, "newContent");
        this.content.clear();
        this.content.addAll(newContent);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewBindingAdapterHolder<ForkShopItemListBinding> onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new ViewBindingAdapterHolder<>(ForkShopItemListBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewBindingAdapterHolder<ForkShopItemListBinding> holder, int i) {
        int collectionSizeOrDefault;
        String internalString;
        Intrinsics.checkNotNullParameter(holder, "holder");
        final ShopItem shopItem = this.content.get(i);
        ForkShopItemListBinding binding = holder.getBinding();
        ImageView botAvatar = binding.botAvatar;
        Intrinsics.checkNotNullExpressionValue(botAvatar, "botAvatar");
        ImageViewExtKt.loadFrom$default(botAvatar, shopItem.getAvatar(), null, false, 6, null);
        binding.botName.setText(shopItem.getTitle());
        binding.botName.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        binding.botDescription.setText(shopItem.getDescription());
        List<SmartTag> tags = shopItem.getTags();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tags, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SmartTag smartTag : tags) {
            arrayList.add(smartTag.getId());
        }
        if (arrayList.contains("new")) {
            binding.botNewLabel.setVisibility(0);
        } else {
            binding.botNewLabel.setVisibility(8);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m73dp(4.0f));
        BotStatus status = shopItem.getStatus();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[status.ordinal()]) {
            case 1:
                AutofitTextView shopButton = binding.shopButton;
                Intrinsics.checkNotNullExpressionValue(shopButton, "shopButton");
                TextViewExtKt.setTextColor(shopButton, C3473R.C3474color.colorShopButtonTextLight);
                gradientDrawable.setColor(Theme.getColor(Theme.key_chats_actionBackground));
                break;
            case 2:
                AutofitTextView shopButton2 = binding.shopButton;
                Intrinsics.checkNotNullExpressionValue(shopButton2, "shopButton");
                TextViewExtKt.setTextColor(shopButton2, C3473R.C3474color.colorShopButtonTextLight);
                gradientDrawable.setColor(Theme.getColor(Theme.key_chats_actionBackground));
                break;
            case 3:
                AutofitTextView shopButton3 = binding.shopButton;
                Intrinsics.checkNotNullExpressionValue(shopButton3, "shopButton");
                TextViewExtKt.setTextColor(shopButton3, C3473R.C3474color.colorShopButtonTextLight);
                gradientDrawable.setColor(Theme.getColor(Theme.key_chats_actionBackground));
                break;
            case 4:
                AutofitTextView shopButton4 = binding.shopButton;
                Intrinsics.checkNotNullExpressionValue(shopButton4, "shopButton");
                TextViewExtKt.setTextColor(shopButton4, C3473R.C3474color.colorShopButtonTextDisable);
                gradientDrawable.setColor(0);
                break;
            case 5:
                AutofitTextView shopButton5 = binding.shopButton;
                Intrinsics.checkNotNullExpressionValue(shopButton5, "shopButton");
                int i2 = C3473R.C3474color.colorShopButtonTextDisable;
                TextViewExtKt.setTextColor(shopButton5, i2);
                gradientDrawable.setColor(0);
                gradientDrawable.setStroke(AndroidUtilities.m73dp(1.0f), ContextCompat.getColor(binding.shopButton.getContext(), i2));
                break;
            case 6:
                AutofitTextView autofitTextView = binding.shopButton;
                int i3 = Theme.key_chats_actionBackground;
                autofitTextView.setTextColor(Theme.getColor(i3));
                gradientDrawable.setColor(0);
                gradientDrawable.setStroke(AndroidUtilities.m73dp(1.0f), Theme.getColor(i3));
                break;
        }
        binding.shopButton.setBackground(gradientDrawable);
        AutofitTextView autofitTextView2 = binding.shopButton;
        switch (iArr[shopItem.getStatus().ordinal()]) {
            case 1:
                internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_download);
                break;
            case 2:
                internalString = shopItem.getPrice();
                if (internalString == null) {
                    internalString = "Free";
                    break;
                }
                break;
            case 3:
                internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_update);
                break;
            case 4:
                internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_status_downloading);
                break;
            case 5:
                internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_disable);
                break;
            case 6:
                internalString = LocaleController.getInternalString(C3473R.string.neurobots_store_bot_action_enable);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        autofitTextView2.setText(internalString);
        binding.botAvatar.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.view.adapter.BotsAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotsAdapter.onBindViewHolder$lambda$5$lambda$1(BotsAdapter.this, shopItem, view);
            }
        });
        binding.botName.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.view.adapter.BotsAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotsAdapter.onBindViewHolder$lambda$5$lambda$2(BotsAdapter.this, shopItem, view);
            }
        });
        binding.botDescription.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.view.adapter.BotsAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotsAdapter.onBindViewHolder$lambda$5$lambda$3(BotsAdapter.this, shopItem, view);
            }
        });
        binding.shopButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.shop.view.adapter.BotsAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotsAdapter.onBindViewHolder$lambda$5$lambda$4(BotsAdapter.this, shopItem, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$5$lambda$1(BotsAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botItemClicked, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$5$lambda$2(BotsAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botItemClicked, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$5$lambda$3(BotsAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botItemClicked, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$5$lambda$4(BotsAdapter this$0, ShopItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botButtonClicked, item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.content.size();
    }
}
