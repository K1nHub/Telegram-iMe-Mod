package com.smedialink.p031ui.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.kikliko.EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1912x8b56867d extends Lambda implements Function1<Result<? extends List<? extends TagResponse>>, Unit> {
    final /* synthetic */ EmojiViewPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1912x8b56867d(EmojiViewPresenter emojiViewPresenter) {
        super(1);
        this.this$0 = emojiViewPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TagResponse>> result) {
        m1224invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1224invoke(Result<? extends List<? extends TagResponse>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends TagResponse>> result = it;
        if (result instanceof Result.Success) {
            ((EmojiViewView) this.this$0.getViewState()).onKiklikoTagsLoaded((List) ((Result.Success) result).getData());
        }
    }
}
