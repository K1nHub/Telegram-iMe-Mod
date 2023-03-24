package com.smedialink.storage.domain.utils.extentions;

import android.util.Base64;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.model.crypto.Wallet;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.utils.Numeric;
/* compiled from: CryptoExt.kt */
/* loaded from: classes3.dex */
public final class CryptoExtKt {
    public static final String generateUuid() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    public static final List<String> mnemonicAsList(Wallet wallet2) {
        Intrinsics.checkNotNullParameter(wallet2, "<this>");
        return StringExtKt.splitBySpace(wallet2.getMnemonic());
    }

    public static final String getUnarmoredPublicKey(Wallet.TON ton) {
        Intrinsics.checkNotNullParameter(ton, "<this>");
        String getUnarmoredPublicKey = Numeric.toHexString(Base64.decode(ton.getInputKey().key.publicKey, 0), 2, 32, false);
        Intrinsics.checkNotNullExpressionValue(getUnarmoredPublicKey, "getUnarmoredPublicKey");
        return getUnarmoredPublicKey;
    }
}
