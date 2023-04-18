package com.iMe.p031ui.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import java.util.List;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: EmojiViewView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.kikliko.EmojiViewView */
/* loaded from: classes3.dex */
public interface EmojiViewView extends MvpView {
    void onKiklikoSearchResultsLoaded(String str, String str2, boolean z, SearchResponse searchResponse);

    void onKiklikoTagsLoaded(List<TagResponse> list);
}
