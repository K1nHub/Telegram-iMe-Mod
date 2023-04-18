package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: MessageMoreActionsView.kt */
/* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$gapItemHeight$2 */
/* loaded from: classes3.dex */
final class MessageMoreActionsView$gapItemHeight$2 extends Lambda implements Function0<Integer> {
    public static final MessageMoreActionsView$gapItemHeight$2 INSTANCE = new MessageMoreActionsView$gapItemHeight$2();

    MessageMoreActionsView$gapItemHeight$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m50dp(8));
    }
}
