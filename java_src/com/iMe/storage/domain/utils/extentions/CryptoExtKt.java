package com.iMe.storage.domain.utils.extentions;

import android.util.Base64;
import com.google.protobuf.ByteString;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import com.trustwallet.walletconnect.extensions.StringKt;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import timber.log.Timber;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
import wallet.core.jni.PrivateKey;
/* compiled from: CryptoExt.kt */
/* loaded from: classes3.dex */
public final class CryptoExtKt {
    public static final String generateUuid() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    public static final String getUnarmoredPublicKey(Wallet.TON ton) {
        List<Byte> drop;
        List take;
        byte[] byteArray;
        Intrinsics.checkNotNullParameter(ton, "<this>");
        String str = ton.getInputKey().key.publicKey;
        Intrinsics.checkNotNullExpressionValue(str, "inputKey.key.publicKey");
        drop = ArraysKt___ArraysKt.drop(decodeBase64Url(str), 2);
        take = CollectionsKt___CollectionsKt.take(drop, 32);
        byteArray = CollectionsKt___CollectionsKt.toByteArray(take);
        return ByteArrayKt.toHex(byteArray);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toHexString(bArr, z);
    }

    public static final String toHexString(byte[] bArr, boolean z) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("0x");
        }
        for (byte b : bArr) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf((byte) (b & (-1)))}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            sb.append(format);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "stringBuilder.toString()");
        return sb2;
    }

    public static final byte[] decodeBase64Url(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] decode = Base64.decode(str, 8);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(this, Base64.URL_SAFE)");
        return decode;
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return hexToByteArray(str, z);
    }

    public static final byte[] hexToByteArray(String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (z) {
            str = StringsKt__StringsKt.removePrefix(str, "0x");
        }
        return StringKt.hexStringToByteArray(str);
    }

    public static final ByteString toByteString(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        ByteString copyFrom = ByteString.copyFrom(bArr);
        Intrinsics.checkNotNullExpressionValue(copyFrom, "copyFrom(this)");
        return copyFrom;
    }

    public static final ByteString toByteString(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        byte[] byteArray = bigInteger.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray()");
        return toByteString(byteArray);
    }

    public static final ByteString hexToByteString(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ByteString copyFrom = ByteString.copyFrom(hexToByteArray$default(str, false, 1, null));
        Intrinsics.checkNotNullExpressionValue(copyFrom, "copyFrom(hexToByteArray())");
        return copyFrom;
    }

    public static final BigInteger hexToBigIntegerOrNull(String str) {
        String removePrefix;
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            removePrefix = StringsKt__StringsKt.removePrefix(str, "0x");
            return new BigInteger(removePrefix, 16);
        } catch (Exception e) {
            Timber.m4e(e);
            return null;
        }
    }

    public static final byte[] getPrivateKeyBytes(HDWallet hDWallet, CoinType coinType) {
        Intrinsics.checkNotNullParameter(hDWallet, "<this>");
        Intrinsics.checkNotNullParameter(coinType, "coinType");
        byte[] data = getPrivateKey(hDWallet, coinType).data();
        Intrinsics.checkNotNullExpressionValue(data, "getPrivateKey(coinType).data()");
        return data;
    }

    public static final PrivateKey getPrivateKey(HDWallet hDWallet, CoinType coinType) {
        Intrinsics.checkNotNullParameter(hDWallet, "<this>");
        Intrinsics.checkNotNullParameter(coinType, "coinType");
        PrivateKey getPrivateKey = hDWallet.getKeyForCoin(coinType);
        Intrinsics.checkNotNullExpressionValue(getPrivateKey, "getPrivateKey");
        return getPrivateKey;
    }
}
