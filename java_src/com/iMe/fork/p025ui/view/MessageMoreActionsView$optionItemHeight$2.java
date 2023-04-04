package com.iMe.fork.p025ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: MessageMoreActionsView.kt */
/* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$optionItemHeight$2 */
/* loaded from: classes3.dex */
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
