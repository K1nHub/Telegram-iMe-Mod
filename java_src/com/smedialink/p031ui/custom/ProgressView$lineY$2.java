package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: ProgressView.kt */
/* renamed from: com.smedialink.ui.custom.ProgressView$lineY$2 */
/* loaded from: classes3.dex */
final class ProgressView$lineY$2 extends Lambda implements Function0<Float> {
    public static final ProgressView$lineY$2 INSTANCE = new ProgressView$lineY$2();

    ProgressView$lineY$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(AndroidUtilities.m50dp(15));
    }
}
