package org.fork.p046ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.CheckBoxSquare;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PromoSubscribeAlert.kt */
/* renamed from: org.fork.ui.dialog.PromoSubscribeAlert$notShowAgainCheckBox$2 */
/* loaded from: classes4.dex */
public final class PromoSubscribeAlert$notShowAgainCheckBox$2 extends Lambda implements Function0<CheckBoxSquare> {
    final /* synthetic */ PromoSubscribeAlert this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoSubscribeAlert$notShowAgainCheckBox$2(PromoSubscribeAlert promoSubscribeAlert) {
        super(0);
        this.this$0 = promoSubscribeAlert;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CheckBoxSquare invoke() {
        CheckBoxSquare initNotShowAgainCheckBox;
        initNotShowAgainCheckBox = this.this$0.initNotShowAgainCheckBox();
        return initNotShowAgainCheckBox;
    }
}
