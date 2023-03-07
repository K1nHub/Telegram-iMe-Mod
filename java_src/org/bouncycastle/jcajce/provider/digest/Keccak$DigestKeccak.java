package org.bouncycastle.jcajce.provider.digest;

import org.bouncycastle.crypto.digests.KeccakDigest;
/* loaded from: classes4.dex */
public class Keccak$DigestKeccak extends BCMessageDigest implements Cloneable {
    public Keccak$DigestKeccak(int i) {
        super(new KeccakDigest(i));
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public Object clone() throws CloneNotSupportedException {
        BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
        bCMessageDigest.digest = new KeccakDigest((KeccakDigest) this.digest);
        return bCMessageDigest;
    }
}
