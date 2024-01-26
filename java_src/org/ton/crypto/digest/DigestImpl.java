package org.ton.crypto.digest;

import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.Digest;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DigestJvm.kt */
/* loaded from: classes6.dex */
public final class DigestImpl implements Digest {
    private final MessageDigest digest;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DigestImpl m5408boximpl(MessageDigest messageDigest) {
        return new DigestImpl(messageDigest);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static MessageDigest m5410constructorimpl(MessageDigest digest) {
        Intrinsics.checkNotNullParameter(digest, "digest");
        return digest;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m5411equalsimpl(MessageDigest messageDigest, Object obj) {
        return (obj instanceof DigestImpl) && Intrinsics.areEqual(messageDigest, ((DigestImpl) obj).m5418unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m5414hashCodeimpl(MessageDigest messageDigest) {
        return messageDigest.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m5416toStringimpl(MessageDigest messageDigest) {
        return "DigestImpl(digest=" + messageDigest + ')';
    }

    public boolean equals(Object obj) {
        return m5411equalsimpl(this.digest, obj);
    }

    public int hashCode() {
        return m5414hashCodeimpl(this.digest);
    }

    public String toString() {
        return m5416toStringimpl(this.digest);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ MessageDigest m5418unboximpl() {
        return this.digest;
    }

    @Override // org.ton.crypto.digest.Digest
    public byte[] build() {
        return Digest.DefaultImpls.build(this);
    }

    @Override // org.ton.crypto.digest.Digest
    public byte[] build(byte[] bArr) {
        return Digest.DefaultImpls.build(this, bArr);
    }

    @Override // org.ton.crypto.digest.Digest
    public void update(byte[] bArr) {
        Digest.DefaultImpls.update(this, bArr);
    }

    private /* synthetic */ DigestImpl(MessageDigest messageDigest) {
        this.digest = messageDigest;
    }

    /* renamed from: getAlgorithmName-impl  reason: not valid java name */
    public static String m5412getAlgorithmNameimpl(MessageDigest messageDigest) {
        String algorithm = messageDigest.getAlgorithm();
        Intrinsics.checkNotNullExpressionValue(algorithm, "digest.algorithm");
        return algorithm;
    }

    @Override // org.ton.crypto.digest.Digest
    public String getAlgorithmName() {
        return m5412getAlgorithmNameimpl(this.digest);
    }

    /* renamed from: getDigestSize-impl  reason: not valid java name */
    public static int m5413getDigestSizeimpl(MessageDigest messageDigest) {
        return messageDigest.getDigestLength();
    }

    @Override // org.ton.crypto.digest.Digest
    public int getDigestSize() {
        return m5413getDigestSizeimpl(this.digest);
    }

    @Override // org.ton.crypto.digest.Digest
    public void update(byte[] input, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        m5417updateimpl(this.digest, input, i, i2);
    }

    /* renamed from: update-impl  reason: not valid java name */
    public static void m5417updateimpl(MessageDigest messageDigest, byte[] input, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        messageDigest.update(input, i, i2);
    }

    @Override // org.ton.crypto.digest.Digest
    public byte[] build(byte[] output, int i) {
        Intrinsics.checkNotNullParameter(output, "output");
        return m5409buildimpl(this.digest, output, i);
    }

    /* renamed from: build-impl  reason: not valid java name */
    public static byte[] m5409buildimpl(MessageDigest messageDigest, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(output, "output");
        messageDigest.digest(output, i, output.length - i);
        return output;
    }

    @Override // org.ton.crypto.digest.Digest
    public void reset() {
        m5415resetimpl(this.digest);
    }

    /* renamed from: reset-impl  reason: not valid java name */
    public static void m5415resetimpl(MessageDigest messageDigest) {
        messageDigest.reset();
    }
}
