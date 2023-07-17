package com.iMe.p031ui.shop.view.custom;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.p031ui.shop.view.adapter.BotsPreviewAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: BotsListView.kt */
/* renamed from: com.iMe.ui.shop.view.custom.BotsListView */
/* loaded from: classes3.dex */
public final class BotsListView extends LinearLayout {
    private final BotsPreviewAdapter adapter;
    private final LinearLayoutManager layoutManager;
    private final RecyclerListView list;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsListView(Context context, int i) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.list = recyclerListView;
        BotsPreviewAdapter botsPreviewAdapter = new BotsPreviewAdapter(i);
        this.adapter = botsPreviewAdapter;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.layoutManager = linearLayoutManager;
        setOrientation(1);
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setAdapter(botsPreviewAdapter);
        recyclerListView.setNestedScrollingEnabled(false);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setPadding(AndroidUtilities.m55dp(6.0f), 0, AndroidUtilities.m55dp(6.0f), 0);
        addView(recyclerListView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 17, 0, 12, 0, 0));
        View view = new View(context);
        view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        addView(view, LayoutHelper.createLinear(-1, 1, BitmapDescriptorFactory.HUE_RED, 80, 16, 13, 8, 12));
    }

    public final void setContent(List<ShopItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.adapter.setContent(items);
        this.list.scrollToPosition(0);
    }
}
