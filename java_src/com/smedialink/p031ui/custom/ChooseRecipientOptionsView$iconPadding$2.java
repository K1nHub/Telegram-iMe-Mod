package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
/* compiled from: ChooseRecipientOptionsView.kt */
/* renamed from: com.smedialink.ui.custom.ChooseRecipientOptionsView$iconPadding$2 */
/* loaded from: classes3.dex */
final class ChooseRecipientOptionsView$iconPadding$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ ChooseRecipientOptionsView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseRecipientOptionsView$iconPadding$2(ChooseRecipientOptionsView chooseRecipientOptionsView) {
        super(0);
        this.this$0 = chooseRecipientOptionsView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getResources().getDimensionPixelOffset(C3286R.dimen.margin_half_small));
    }
}
