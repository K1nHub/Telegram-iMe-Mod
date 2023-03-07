package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.OTSHashAddress;
/* loaded from: classes4.dex */
final class WOTSPlus {
    private final KeyedHashFunctions khf;
    private final WOTSPlusParameters params;
    private byte[] publicSeed;
    private byte[] secretKeySeed;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlus(WOTSPlusParameters wOTSPlusParameters) {
        Objects.requireNonNull(wOTSPlusParameters, "params == null");
        this.params = wOTSPlusParameters;
        int digestSize = wOTSPlusParameters.getDigestSize();
        this.khf = new KeyedHashFunctions(wOTSPlusParameters.getDigest(), digestSize);
        this.secretKeySeed = new byte[digestSize];
        this.publicSeed = new byte[digestSize];
    }

    private byte[] chain(byte[] bArr, int i, int i2, OTSHashAddress oTSHashAddress) {
        int digestSize = this.params.getDigestSize();
        Objects.requireNonNull(bArr, "startHash == null");
        if (bArr.length != digestSize) {
            throw new IllegalArgumentException("startHash needs to be " + digestSize + "bytes");
        }
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        Objects.requireNonNull(oTSHashAddress.toByteArray(), "otsHashAddress byte array == null");
        int i3 = i + i2;
        if (i3 <= this.params.getWinternitzParameter() - 1) {
            if (i2 == 0) {
                return bArr;
            }
            byte[] chain = chain(bArr, i, i2 - 1, oTSHashAddress);
            OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(i3 - 1).withKeyAndMask(0).build();
            byte[] PRF = this.khf.PRF(this.publicSeed, oTSHashAddress2.toByteArray());
            byte[] PRF2 = this.khf.PRF(this.publicSeed, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress2.getLayerAddress()).withTreeAddress(oTSHashAddress2.getTreeAddress()).withOTSAddress(oTSHashAddress2.getOTSAddress()).withChainAddress(oTSHashAddress2.getChainAddress()).withHashAddress(oTSHashAddress2.getHashAddress()).withKeyAndMask(1).build()).toByteArray());
            byte[] bArr2 = new byte[digestSize];
            for (int i4 = 0; i4 < digestSize; i4++) {
                bArr2[i4] = (byte) (chain[i4] ^ PRF2[i4]);
            }
            return this.khf.m63F(PRF, bArr2);
        }
        throw new IllegalArgumentException("max chain length must not be greater than w");
    }

    private byte[] expandSecretKeySeed(int i) {
        if (i < 0 || i >= this.params.getLen()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.khf.PRF(this.secretKeySeed, XMSSUtil.toBytesBigEndian(i, 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public KeyedHashFunctions getKhf() {
        return this.khf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusParameters getParams() {
        return this.params;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusPublicKeyParameters getPublicKey(OTSHashAddress oTSHashAddress) {
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        byte[][] bArr = new byte[this.params.getLen()];
        for (int i = 0; i < this.params.getLen(); i++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            bArr[i] = chain(expandSecretKeySeed(i), 0, this.params.getWinternitzParameter() - 1, oTSHashAddress);
        }
        return new WOTSPlusPublicKeyParameters(this.params, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getPublicSeed() {
        return XMSSUtil.cloneArray(this.publicSeed);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getWOTSPlusSecretKey(byte[] bArr, OTSHashAddress oTSHashAddress) {
        return this.khf.PRF(bArr, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).build()).toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void importKeys(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "secretKeySeed == null");
        if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        Objects.requireNonNull(bArr2, "publicSeed == null");
        if (bArr2.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.secretKeySeed = bArr;
        this.publicSeed = bArr2;
    }
}
