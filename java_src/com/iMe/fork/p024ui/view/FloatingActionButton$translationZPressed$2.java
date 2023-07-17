package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: FloatingActionButton.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButton$translationZPressed$2 */
/* loaded from: classes3.dex */
final class FloatingActionButton$translationZPressed$2 extends Lambda implements Function0<Float> {
    public static final FloatingActionButton$translationZPressed$2 INSTANCE = new FloatingActionButton$translationZPressed$2();

    FloatingActionButton$translationZPressed$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(AndroidUtilities.m54dp(2));
    }
}
