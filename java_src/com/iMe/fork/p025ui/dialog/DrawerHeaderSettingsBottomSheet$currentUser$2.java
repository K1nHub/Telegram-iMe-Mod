package com.iMe.fork.p025ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$currentUser$2 */
/* loaded from: classes3.dex */
final class DrawerHeaderSettingsBottomSheet$currentUser$2 extends Lambda implements Function0<TLRPC$User> {
    public static final DrawerHeaderSettingsBottomSheet$currentUser$2 INSTANCE = new DrawerHeaderSettingsBottomSheet$currentUser$2();

    DrawerHeaderSettingsBottomSheet$currentUser$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final TLRPC$User invoke() {
        return UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
    }
}
