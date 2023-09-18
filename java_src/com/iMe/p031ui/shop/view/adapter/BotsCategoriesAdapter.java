package com.iMe.p031ui.shop.view.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.p031ui.shop.view.custom.BotCategoryTitleView;
import com.iMe.p031ui.shop.view.custom.BotsListView;
import com.iMe.p031ui.shop.view.model.DisplayingBots;
import com.iMe.p031ui.shop.view.model.DisplayingBotsCategory;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: BotsCategoriesAdapter.kt */
/* renamed from: com.iMe.ui.shop.view.adapter.BotsCategoriesAdapter */
/* loaded from: classes4.dex */
public final class BotsCategoriesAdapter extends RecyclerListView.SelectionAdapter {
    private List<Object> content = new ArrayList();
    private final int currentAccount;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public BotsCategoriesAdapter(int i) {
        this.currentAccount = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        View botsListView;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i == 0) {
            Context context = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "parent.context");
            botsListView = new BotCategoryTitleView(context);
        } else {
            Context context2 = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "parent.context");
            botsListView = new BotsListView(context2, this.currentAccount);
        }
        return new RecyclerListView.Holder(botsListView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (getItemViewType(i) == 0) {
            Object obj = this.content.get(i);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.iMe.ui.shop.view.model.DisplayingBotsCategory");
            DisplayingBotsCategory displayingBotsCategory = (DisplayingBotsCategory) obj;
            View view = holder.itemView;
            BotCategoryTitleView botCategoryTitleView = view instanceof BotCategoryTitleView ? (BotCategoryTitleView) view : null;
            if (botCategoryTitleView != null) {
                botCategoryTitleView.setText(displayingBotsCategory.getTitle());
                return;
            }
            return;
        }
        Object obj2 = this.content.get(i);
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.iMe.ui.shop.view.model.DisplayingBots");
        DisplayingBots displayingBots = (DisplayingBots) obj2;
        View view2 = holder.itemView;
        BotsListView botsListView = view2 instanceof BotsListView ? (BotsListView) view2 : null;
        if (botsListView != null) {
            botsListView.setContent(displayingBots.getItems());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.content.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return !(this.content.get(i) instanceof DisplayingBotsCategory) ? 1 : 0;
    }

    public final void setContent(List<Object> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.content.clear();
        this.content.addAll(items);
        notifyDataSetChanged();
    }
}
