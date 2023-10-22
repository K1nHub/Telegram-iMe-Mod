package org.ton.mnemonic;

import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineName;
import org.ton.crypto.kdf.PKCSS2ParametersGenerator;
import org.ton.crypto.mac.hmac.HMac;
/* compiled from: Mnemonic.kt */
/* loaded from: classes6.dex */
public final class MnemonicKt {
    private static final byte[] DEFAULT_BASIC_SALT_BYTES;
    private static final byte[] DEFAULT_PASSWORD_SALT_BYTES;
    private static final byte[] DEFAULT_SALT_BYTES;
    private static final byte[] EMPTY_BYTES;
    private static final CoroutineName MnemonicGeneratorCoroutineName = new CoroutineName("mnemonic-generator");

    static {
        byte[] encodeToByteArray;
        byte[] encodeToByteArray2;
        byte[] encodeToByteArray3;
        encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray("TON seed version");
        DEFAULT_BASIC_SALT_BYTES = encodeToByteArray;
        encodeToByteArray2 = StringsKt__StringsJVMKt.encodeToByteArray("TON fast seed version");
        DEFAULT_PASSWORD_SALT_BYTES = encodeToByteArray2;
        encodeToByteArray3 = StringsKt__StringsJVMKt.encodeToByteArray("TON default seed");
        DEFAULT_SALT_BYTES = encodeToByteArray3;
        EMPTY_BYTES = new byte[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void entropy(HMac hMac, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        hMac.init(bArr);
        hMac.plusAssign(bArr2);
        hMac.build(bArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean basicValidation(PKCSS2ParametersGenerator pKCSS2ParametersGenerator, byte[] bArr) {
        byte first;
        pKCSS2ParametersGenerator.init(bArr, DEFAULT_BASIC_SALT_BYTES, 390);
        first = ArraysKt___ArraysKt.first(pKCSS2ParametersGenerator.generateDerivedParameters(512));
        return first == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean passwordValidation(PKCSS2ParametersGenerator pKCSS2ParametersGenerator, byte[] bArr) {
        byte first;
        pKCSS2ParametersGenerator.init(bArr, DEFAULT_PASSWORD_SALT_BYTES, 1);
        first = ArraysKt___ArraysKt.first(pKCSS2ParametersGenerator.generateDerivedParameters(512));
        return first == 1;
    }
}
