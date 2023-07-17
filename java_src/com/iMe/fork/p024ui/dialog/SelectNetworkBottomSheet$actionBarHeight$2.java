package com.iMe.fork.p024ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
/* compiled from: SelectNetworkBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectNetworkBottomSheet$actionBarHeight$2 */
/* loaded from: classes3.dex */
final class SelectNetworkBottomSheet$actionBarHeight$2 extends Lambda implements Function0<Integer> {
    public static final SelectNetworkBottomSheet$actionBarHeight$2 INSTANCE = new SelectNetworkBottomSheet$actionBarHeight$2();

    SelectNetworkBottomSheet$actionBarHeight$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(C3484ActionBar.getCurrentActionBarHeight());
    }
}
