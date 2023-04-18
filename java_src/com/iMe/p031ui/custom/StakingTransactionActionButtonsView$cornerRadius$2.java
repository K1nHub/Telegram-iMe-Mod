package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: StakingTransactionActionButtonsView.kt */
/* renamed from: com.iMe.ui.custom.StakingTransactionActionButtonsView$cornerRadius$2 */
/* loaded from: classes3.dex */
final class StakingTransactionActionButtonsView$cornerRadius$2 extends Lambda implements Function0<Integer> {
    public static final StakingTransactionActionButtonsView$cornerRadius$2 INSTANCE = new StakingTransactionActionButtonsView$cornerRadius$2();

    StakingTransactionActionButtonsView$cornerRadius$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m51dp(4.0f));
    }
}
