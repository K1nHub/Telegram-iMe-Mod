package com.iMe.p030ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CreateCampaignItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.model.catalog.ChatType;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
/* compiled from: CatalogUserChannelsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter */
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
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new CreateCampaignItem(C3630R.C3632drawable.fork_ic_add_account_40, C3630R.string.catalog_user_channels_create));
        ((CatalogUserChannelsView) getViewState()).showItems(mutableListOf);
    }
}
