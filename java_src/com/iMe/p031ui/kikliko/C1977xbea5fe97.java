package com.iMe.p031ui.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.kikliko.EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1977xbea5fe97 extends Lambda implements Function1<Result<? extends SearchResponse>, Unit> {
    final /* synthetic */ String $page$inlined;
    final /* synthetic */ String $tag$inlined;
    final /* synthetic */ EmojiViewPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1977xbea5fe97(EmojiViewPresenter emojiViewPresenter, String str, String str2) {
        super(1);
        this.this$0 = emojiViewPresenter;
        this.$tag$inlined = str;
        this.$page$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
        m1311invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1311invoke(Result<? extends SearchResponse> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SearchResponse> result = it;
        if (result instanceof Result.Success) {
            ((EmojiViewView) this.this$0.getViewState()).onKiklikoSearchResultsLoaded(this.$tag$inlined, this.$page$inlined, true, (SearchResponse) ((Result.Success) result).getData());
        }
    }
}
