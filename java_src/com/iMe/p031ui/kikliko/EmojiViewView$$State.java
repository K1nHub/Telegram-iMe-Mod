package com.iMe.p031ui.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
/* renamed from: com.iMe.ui.kikliko.EmojiViewView$$State */
/* loaded from: classes3.dex */
public class EmojiViewView$$State extends MvpViewState<EmojiViewView> implements EmojiViewView {
    @Override // com.iMe.p031ui.kikliko.EmojiViewView
    public void onKiklikoTagsLoaded(List<TagResponse> list) {
        OnKiklikoTagsLoadedCommand onKiklikoTagsLoadedCommand = new OnKiklikoTagsLoadedCommand(this, list);
        this.viewCommands.beforeApply(onKiklikoTagsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onKiklikoTagsLoaded(list);
        }
        this.viewCommands.afterApply(onKiklikoTagsLoadedCommand);
    }

    @Override // com.iMe.p031ui.kikliko.EmojiViewView
    public void onKiklikoSearchResultsLoaded(String str, String str2, boolean z, SearchResponse searchResponse) {
        OnKiklikoSearchResultsLoadedCommand onKiklikoSearchResultsLoadedCommand = new OnKiklikoSearchResultsLoadedCommand(this, str, str2, z, searchResponse);
        this.viewCommands.beforeApply(onKiklikoSearchResultsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onKiklikoSearchResultsLoaded(str, str2, z, searchResponse);
        }
        this.viewCommands.afterApply(onKiklikoSearchResultsLoadedCommand);
    }

    /* compiled from: EmojiViewView$$State.java */
    /* renamed from: com.iMe.ui.kikliko.EmojiViewView$$State$OnKiklikoTagsLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnKiklikoTagsLoadedCommand extends ViewCommand<EmojiViewView> {
        public final List<TagResponse> tags;

        OnKiklikoTagsLoadedCommand(EmojiViewView$$State emojiViewView$$State, List<TagResponse> list) {
            super("onKiklikoTagsLoaded", AddToEndSingleStrategy.class);
            this.tags = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EmojiViewView emojiViewView) {
            emojiViewView.onKiklikoTagsLoaded(this.tags);
        }
    }

    /* compiled from: EmojiViewView$$State.java */
    /* renamed from: com.iMe.ui.kikliko.EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnKiklikoSearchResultsLoadedCommand extends ViewCommand<EmojiViewView> {
        public final boolean byTag;
        public final String page;

        /* renamed from: q */
        public final String f448q;
        public final SearchResponse response;

        OnKiklikoSearchResultsLoadedCommand(EmojiViewView$$State emojiViewView$$State, String str, String str2, boolean z, SearchResponse searchResponse) {
            super("onKiklikoSearchResultsLoaded", AddToEndSingleStrategy.class);
            this.f448q = str;
            this.page = str2;
            this.byTag = z;
            this.response = searchResponse;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EmojiViewView emojiViewView) {
            emojiViewView.onKiklikoSearchResultsLoaded(this.f448q, this.page, this.byTag, this.response);
        }
    }
}
