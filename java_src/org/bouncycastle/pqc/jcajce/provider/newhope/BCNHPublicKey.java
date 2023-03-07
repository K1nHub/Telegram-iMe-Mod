package org.bouncycastle.pqc.jcajce.provider.newhope;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.newhope.NHPublicKeyParameters;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class BCNHPublicKey implements Key, PublicKey {
    private final NHPublicKeyParameters params;

    public BCNHPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.params = new NHPublicKeyParameters(subjectPublicKeyInfo.getPublicKeyData().getBytes());
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCNHPublicKey)) {
            return false;
        }
        return Arrays.areEqual(this.params.getPubData(), ((BCNHPublicKey) obj).params.getPubData());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.newHope), this.params.getPubData()).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return Arrays.hashCode(this.params.getPubData());
    }
}
