package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NetworkTypeView.kt */
/* renamed from: com.iMe.ui.custom.NetworkTypeView$cornerRadius$2 */
/* loaded from: classes3.dex */
public final class NetworkTypeView$cornerRadius$2 extends Lambda implements Function0<Integer> {
    public static final NetworkTypeView$cornerRadius$2 INSTANCE = new NetworkTypeView$cornerRadius$2();

    NetworkTypeView$cornerRadius$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m55dp(15.0f));
    }
}
