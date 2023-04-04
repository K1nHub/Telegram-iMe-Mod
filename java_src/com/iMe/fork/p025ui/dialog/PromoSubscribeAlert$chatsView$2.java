package com.iMe.fork.p025ui.dialog;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PromoSubscribeAlert.kt */
/* renamed from: com.iMe.fork.ui.dialog.PromoSubscribeAlert$chatsView$2 */
/* loaded from: classes3.dex */
public final class PromoSubscribeAlert$chatsView$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ PromoSubscribeAlert this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoSubscribeAlert$chatsView$2(PromoSubscribeAlert promoSubscribeAlert) {
        super(0);
        this.this$0 = promoSubscribeAlert;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initChatsView;
        initChatsView = this.this$0.initChatsView();
        return initChatsView;
    }
}
