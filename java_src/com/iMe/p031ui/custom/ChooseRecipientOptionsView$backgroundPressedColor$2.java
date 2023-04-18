package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChooseRecipientOptionsView.kt */
/* renamed from: com.iMe.ui.custom.ChooseRecipientOptionsView$backgroundPressedColor$2 */
/* loaded from: classes3.dex */
public final class ChooseRecipientOptionsView$backgroundPressedColor$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ ChooseRecipientOptionsView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseRecipientOptionsView$backgroundPressedColor$2(ChooseRecipientOptionsView chooseRecipientOptionsView) {
        super(0);
        this.this$0 = chooseRecipientOptionsView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        int colorWithDefaultAlpha;
        colorWithDefaultAlpha = this.this$0.getColorWithDefaultAlpha("chats_actionPressedBackground");
        return Integer.valueOf(colorWithDefaultAlpha);
    }
}
