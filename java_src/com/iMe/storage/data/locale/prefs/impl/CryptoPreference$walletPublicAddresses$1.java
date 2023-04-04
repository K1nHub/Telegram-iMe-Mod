package com.iMe.storage.data.locale.prefs.impl;

import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoPreference.kt */
/* loaded from: classes3.dex */
public final class CryptoPreference$walletPublicAddresses$1 extends Lambda implements Function0<String> {
    final /* synthetic */ CryptoPreference this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoPreference$walletPublicAddresses$1(CryptoPreference cryptoPreference) {
        super(0);
        this.this$0 = cryptoPreference;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return CryptoPreferenceHelper.CC.withGuid$default(this.this$0, "wallet_public_address", null, 2, null);
    }
}
