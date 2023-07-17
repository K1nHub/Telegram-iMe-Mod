package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: FloatingActionButton.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButton$buttonSize$2 */
/* loaded from: classes3.dex */
final class FloatingActionButton$buttonSize$2 extends Lambda implements Function0<Integer> {
    public static final FloatingActionButton$buttonSize$2 INSTANCE = new FloatingActionButton$buttonSize$2();

    FloatingActionButton$buttonSize$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m54dp(56));
    }
}
