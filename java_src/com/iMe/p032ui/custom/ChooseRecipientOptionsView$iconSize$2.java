package com.iMe.p032ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: ChooseRecipientOptionsView.kt */
/* renamed from: com.iMe.ui.custom.ChooseRecipientOptionsView$iconSize$2 */
/* loaded from: classes3.dex */
final class ChooseRecipientOptionsView$iconSize$2 extends Lambda implements Function0<Integer> {
    public static final ChooseRecipientOptionsView$iconSize$2 INSTANCE = new ChooseRecipientOptionsView$iconSize$2();

    ChooseRecipientOptionsView$iconSize$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m50dp(16));
    }
}
