package com.iMe.p031ui.chat;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessageObject;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.chat.ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2025xf214bff7 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ String $botCaption$inlined;
    final /* synthetic */ String $caption$inlined;
    final /* synthetic */ Object $data$inlined;
    final /* synthetic */ MessageObject $replyMessage$inlined;
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2025xf214bff7(ChatPresenter chatPresenter, Object obj, String str, String str2, MessageObject messageObject) {
        super(1);
        this.this$0 = chatPresenter;
        this.$data$inlined = obj;
        this.$caption$inlined = str;
        this.$botCaption$inlined = str2;
        this.$replyMessage$inlined = messageObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        m1333invoke(bool);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1333invoke(Boolean it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        it.booleanValue();
        ChatPresenter chatPresenter = this.this$0;
        Object obj = this.$data$inlined;
        String str = this.$caption$inlined;
        if (str == null) {
            str = "";
        }
        chatPresenter.sendReactionMessage(obj, str, this.$botCaption$inlined, this.$replyMessage$inlined);
    }
}
