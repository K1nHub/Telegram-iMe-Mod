package org.bouncycastle.pqc.jcajce.provider.xmss;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
/* loaded from: classes4.dex */
class DigestUtil {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Digest getDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.id_sha256)) {
            return new SHA256Digest();
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.id_sha512)) {
            return new SHA512Digest();
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.id_shake128)) {
            return new SHAKEDigest(128);
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.id_shake256)) {
            return new SHAKEDigest(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + aSN1ObjectIdentifier);
    }
}
