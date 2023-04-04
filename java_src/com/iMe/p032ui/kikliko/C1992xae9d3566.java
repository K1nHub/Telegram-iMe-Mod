package com.iMe.p032ui.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.kikliko.EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1992xae9d3566 extends Lambda implements Function1<Result<? extends SearchResponse>, Unit> {
    final /* synthetic */ String $keyword$inlined;
    final /* synthetic */ String $page$inlined;
    final /* synthetic */ EmojiViewPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1992xae9d3566(EmojiViewPresenter emojiViewPresenter, String str, String str2) {
        super(1);
        this.this$0 = emojiViewPresenter;
        this.$keyword$inlined = str;
        this.$page$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
        m1326invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1326invoke(Result<? extends SearchResponse> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SearchResponse> result = it;
        if (result instanceof Result.Success) {
            ((EmojiViewView) this.this$0.getViewState()).onKiklikoSearchResultsLoaded(this.$keyword$inlined, this.$page$inlined, false, (SearchResponse) ((Result.Success) result).getData());
        }
    }
}
