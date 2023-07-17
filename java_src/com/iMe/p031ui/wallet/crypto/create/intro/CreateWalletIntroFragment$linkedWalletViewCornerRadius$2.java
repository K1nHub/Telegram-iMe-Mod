package com.iMe.p031ui.wallet.crypto.create.intro;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$linkedWalletViewCornerRadius$2 */
/* loaded from: classes4.dex */
final class CreateWalletIntroFragment$linkedWalletViewCornerRadius$2 extends Lambda implements Function0<Float> {
    public static final CreateWalletIntroFragment$linkedWalletViewCornerRadius$2 INSTANCE = new CreateWalletIntroFragment$linkedWalletViewCornerRadius$2();

    CreateWalletIntroFragment$linkedWalletViewCornerRadius$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(AndroidUtilities.m54dp(8));
    }
}
