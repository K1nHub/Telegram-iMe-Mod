package org.ton.crypto.digest;

import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DigestJvm.kt */
/* loaded from: classes6.dex */
public final class DigestJvmKt {
    public static final Digest Digest(String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Intrinsics.checkNotNullExpressionValue(messageDigest, "getInstance(algorithm)");
        return DigestImpl.m5223boximpl(DigestImpl.m5225constructorimpl(messageDigest));
    }

    public static final byte[] sha256(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
        Intrinsics.checkNotNullExpressionValue(digest, "getInstance(\"SHA-256\").digest(bytes)");
        return digest;
    }
}
