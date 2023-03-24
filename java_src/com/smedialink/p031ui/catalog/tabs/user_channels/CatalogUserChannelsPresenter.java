package com.smedialink.p031ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.catalog.CreateCampaignItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.model.catalog.ChatType;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3301R;
/* compiled from: CatalogUserChannelsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsPresenter extends BasePresenter<CatalogUserChannelsView> {
    public CatalogUserChannelsPresenter(ChatType chatType) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
    }

    public final void onAddChannelClick() {
        ((CatalogUserChannelsView) getViewState()).openAddChannelScreen();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        showItems();
    }

    private final void showItems() {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new CreateCampaignItem(C3301R.C3303drawable.fork_ic_add_account_40, C3301R.string.catalog_user_channels_create));
        ((CatalogUserChannelsView) getViewState()).showItems(mutableListOf);
    }
}
