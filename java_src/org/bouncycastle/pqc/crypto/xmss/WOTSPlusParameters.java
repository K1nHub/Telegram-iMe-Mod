package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes4.dex */
final class WOTSPlusParameters {
    private final Digest digest;
    private final int digestSize;
    private final int len;
    private final int len1;
    private final int len2;
    private final XMSSOid oid;
    private final int winternitzParameter;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusParameters(Digest digest) {
        Objects.requireNonNull(digest, "digest == null");
        this.digest = digest;
        int digestSize = XMSSUtil.getDigestSize(digest);
        this.digestSize = digestSize;
        this.winternitzParameter = 16;
        int ceil = (int) Math.ceil((digestSize * 8) / XMSSUtil.log2(16));
        this.len1 = ceil;
        int floor = ((int) Math.floor(XMSSUtil.log2((16 - 1) * ceil) / XMSSUtil.log2(16))) + 1;
        this.len2 = floor;
        int i = ceil + floor;
        this.len = i;
        WOTSPlusOid lookup = WOTSPlusOid.lookup(digest.getAlgorithmName(), digestSize, 16, i);
        this.oid = lookup;
        if (lookup != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + digest.getAlgorithmName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Digest getDigest() {
        return this.digest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getDigestSize() {
        return this.digestSize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getLen() {
        return this.len;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getWinternitzParameter() {
        return this.winternitzParameter;
    }
}
