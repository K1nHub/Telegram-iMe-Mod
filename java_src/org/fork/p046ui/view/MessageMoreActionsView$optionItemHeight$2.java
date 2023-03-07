package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: MessageMoreActionsView.kt */
/* renamed from: org.fork.ui.view.MessageMoreActionsView$optionItemHeight$2 */
/* loaded from: classes4.dex */
final class MessageMoreActionsView$optionItemHeight$2 extends Lambda implements Function0<Integer> {
    public static final MessageMoreActionsView$optionItemHeight$2 INSTANCE = new MessageMoreActionsView$optionItemHeight$2();

    MessageMoreActionsView$optionItemHeight$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m50dp(48));
    }
}
