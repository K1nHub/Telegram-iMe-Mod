package com.smedialink.p031ui.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.kikliko.EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1924x46f36637 extends Lambda implements Function1<Result<? extends SearchResponse>, Unit> {
    final /* synthetic */ String $page$inlined;
    final /* synthetic */ EmojiViewPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1924x46f36637(EmojiViewPresenter emojiViewPresenter, String str) {
        super(1);
        this.this$0 = emojiViewPresenter;
        this.$page$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
        m1239invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1239invoke(Result<? extends SearchResponse> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SearchResponse> result = it;
        if (result instanceof Result.Success) {
            ((EmojiViewView) this.this$0.getViewState()).onKiklikoSearchResultsLoaded("", this.$page$inlined, false, (SearchResponse) ((Result.Success) result).getData());
        }
    }
}
