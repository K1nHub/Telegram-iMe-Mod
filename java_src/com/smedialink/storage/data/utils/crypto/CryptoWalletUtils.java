package com.smedialink.storage.data.utils.crypto;

import com.smedialink.storage.domain.model.crypto.Wallet;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import java.security.SecureRandom;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.web3j.crypto.Bip32ECKeyPair;
import org.web3j.crypto.Credentials;
import org.web3j.crypto.MnemonicUtils;
import org.web3j.crypto.Sign;
import org.web3j.utils.Numeric;
/* compiled from: CryptoWalletUtils.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletUtils {
    public static final CryptoWalletUtils INSTANCE = new CryptoWalletUtils();
    private static final SecureRandom random = new SecureRandom();

    /* compiled from: CryptoWalletUtils.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCEthereumSignMessage.WCSignType.values().length];
            try {
                iArr[WCEthereumSignMessage.WCSignType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WCEthereumSignMessage.WCSignType.PERSONAL_MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WCEthereumSignMessage.WCSignType.TYPED_MESSAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private CryptoWalletUtils() {
    }

    public static /* synthetic */ byte[] generateNewEntropy$default(CryptoWalletUtils cryptoWalletUtils, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 32;
        }
        return cryptoWalletUtils.generateNewEntropy(i);
    }

    public final byte[] generateNewEntropy(int i) {
        byte[] bArr = new byte[i];
        random.nextBytes(bArr);
        return bArr;
    }

    public final Credentials createBip44Wallet(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Credentials create = Credentials.create(generateBip44KeyPair(Bip32ECKeyPair.generateKeyPair(MnemonicUtils.generateSeed(mnemonic, "")), false));
        Intrinsics.checkNotNullExpressionValue(create, "create(bip44Keypair)");
        return create;
    }

    public final Bip32ECKeyPair generateBip44KeyPair(Bip32ECKeyPair bip32ECKeyPair, boolean z) {
        if (z) {
            Bip32ECKeyPair deriveKeyPair = Bip32ECKeyPair.deriveKeyPair(bip32ECKeyPair, new int[]{-2147483604, Integer.MIN_VALUE, Integer.MIN_VALUE, 0, 0});
            Intrinsics.checkNotNullExpressionValue(deriveKeyPair, "{\n            // /m/44'/…r(master, path)\n        }");
            return deriveKeyPair;
        }
        Bip32ECKeyPair deriveKeyPair2 = Bip32ECKeyPair.deriveKeyPair(bip32ECKeyPair, new int[]{-2147483604, -2147483588, Integer.MIN_VALUE, 0, 0});
        Intrinsics.checkNotNullExpressionValue(deriveKeyPair2, "{\n            // m/44'/6…r(master, path)\n        }");
        return deriveKeyPair2;
    }

    public final String decodeHexMessageToString(String message) {
        String decodeToString;
        Intrinsics.checkNotNullParameter(message, "message");
        byte[] hexStringToByteArray = Numeric.hexStringToByteArray(message);
        Intrinsics.checkNotNullExpressionValue(hexStringToByteArray, "hexStringToByteArray(message)");
        decodeToString = StringsKt__StringsJVMKt.decodeToString(hexStringToByteArray);
        return decodeToString;
    }

    public final String signMessage(Wallet.EVM wallet, String message, WCEthereumSignMessage.WCSignType signType) {
        Sign.SignatureData signMessage;
        Intrinsics.checkNotNullParameter(wallet, "wallet");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(signType, "signType");
        byte[] hexStringToByteArray = Numeric.hexStringToByteArray(message);
        int i = WhenMappings.$EnumSwitchMapping$0[signType.ordinal()];
        if (i == 1) {
            signMessage = Sign.signMessage(hexStringToByteArray, wallet.getCredentials().getEcKeyPair(), false);
        } else if (i != 2) {
            if (i == 3) {
                return "";
            }
            throw new NoWhenBranchMatchedException();
        } else {
            signMessage = Sign.signPrefixedMessage(hexStringToByteArray, wallet.getCredentials().getEcKeyPair());
        }
        return Numeric.toHexString(signMessage.getR()) + Numeric.cleanHexPrefix(Numeric.toHexString(signMessage.getS())) + Numeric.cleanHexPrefix(Numeric.toHexString(signMessage.getV()));
    }
}
