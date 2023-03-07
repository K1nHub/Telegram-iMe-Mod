package org.fork.p046ui.dialog;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PromoSubscribeAlert.kt */
/* renamed from: org.fork.ui.dialog.PromoSubscribeAlert$titleTextView$2 */
/* loaded from: classes4.dex */
public final class PromoSubscribeAlert$titleTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ PromoSubscribeAlert this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoSubscribeAlert$titleTextView$2(PromoSubscribeAlert promoSubscribeAlert) {
        super(0);
        this.this$0 = promoSubscribeAlert;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView initTitleTextView;
        initTitleTextView = this.this$0.initTitleTextView();
        return initTitleTextView;
    }
}
