package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.xmss.OTSHashAddress;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public final class XMSSPrivateKeyParameters extends AsymmetricKeyParameter {
    private final BDS bdsState;
    private final XMSSParameters params;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;

    /* loaded from: classes4.dex */
    public static class Builder {
        private final XMSSParameters params;
        private int index = 0;
        private byte[] secretKeySeed = null;
        private byte[] secretKeyPRF = null;
        private byte[] publicSeed = null;
        private byte[] root = null;
        private BDS bdsState = null;
        private byte[] privateKey = null;
        private XMSSParameters xmss = null;

        public Builder(XMSSParameters xMSSParameters) {
            this.params = xMSSParameters;
        }

        public XMSSPrivateKeyParameters build() {
            return new XMSSPrivateKeyParameters(this);
        }

        public Builder withBDSState(BDS bds) {
            this.bdsState = bds;
            return this;
        }

        public Builder withIndex(int i) {
            this.index = i;
            return this;
        }

        public Builder withPublicSeed(byte[] bArr) {
            this.publicSeed = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withRoot(byte[] bArr) {
            this.root = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withSecretKeyPRF(byte[] bArr) {
            this.secretKeyPRF = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withSecretKeySeed(byte[] bArr) {
            this.secretKeySeed = XMSSUtil.cloneArray(bArr);
            return this;
        }
    }

    private XMSSPrivateKeyParameters(Builder builder) {
        super(true);
        XMSSParameters xMSSParameters = builder.params;
        this.params = xMSSParameters;
        Objects.requireNonNull(xMSSParameters, "params == null");
        int digestSize = xMSSParameters.getDigestSize();
        byte[] bArr = builder.privateKey;
        if (bArr != null) {
            Objects.requireNonNull(builder.xmss, "xmss == null");
            int height = xMSSParameters.getHeight();
            int bigEndianToInt = Pack.bigEndianToInt(bArr, 0);
            if (!XMSSUtil.isIndexValid(height, bigEndianToInt)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.secretKeySeed = XMSSUtil.extractBytesAtOffset(bArr, 4, digestSize);
            int i = 4 + digestSize;
            this.secretKeyPRF = XMSSUtil.extractBytesAtOffset(bArr, i, digestSize);
            int i2 = i + digestSize;
            this.publicSeed = XMSSUtil.extractBytesAtOffset(bArr, i2, digestSize);
            int i3 = i2 + digestSize;
            this.root = XMSSUtil.extractBytesAtOffset(bArr, i3, digestSize);
            int i4 = i3 + digestSize;
            try {
                BDS bds = (BDS) XMSSUtil.deserialize(XMSSUtil.extractBytesAtOffset(bArr, i4, bArr.length - i4), BDS.class);
                bds.setXMSS(builder.xmss);
                bds.validate();
                if (bds.getIndex() != bigEndianToInt) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.bdsState = bds;
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        byte[] bArr2 = builder.secretKeySeed;
        if (bArr2 == null) {
            this.secretKeySeed = new byte[digestSize];
        } else if (bArr2.length != digestSize) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
        } else {
            this.secretKeySeed = bArr2;
        }
        byte[] bArr3 = builder.secretKeyPRF;
        if (bArr3 == null) {
            this.secretKeyPRF = new byte[digestSize];
        } else if (bArr3.length != digestSize) {
            throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
        } else {
            this.secretKeyPRF = bArr3;
        }
        byte[] bArr4 = builder.publicSeed;
        if (bArr4 == null) {
            this.publicSeed = new byte[digestSize];
        } else if (bArr4.length != digestSize) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
        } else {
            this.publicSeed = bArr4;
        }
        byte[] bArr5 = builder.root;
        if (bArr5 == null) {
            this.root = new byte[digestSize];
        } else if (bArr5.length != digestSize) {
            throw new IllegalArgumentException("size of root needs to be equal size of digest");
        } else {
            this.root = bArr5;
        }
        BDS bds2 = builder.bdsState;
        if (bds2 != null) {
            this.bdsState = bds2;
        } else {
            this.bdsState = (builder.index >= (1 << xMSSParameters.getHeight()) + (-2) || bArr4 == null || bArr2 == null) ? new BDS(xMSSParameters, builder.index) : new BDS(xMSSParameters, bArr4, bArr2, (OTSHashAddress) new OTSHashAddress.Builder().build(), builder.index);
        }
    }

    public XMSSParameters getParameters() {
        return this.params;
    }

    public byte[] toByteArray() {
        int digestSize = this.params.getDigestSize();
        byte[] bArr = new byte[digestSize + 4 + digestSize + digestSize + digestSize];
        Pack.intToBigEndian(this.bdsState.getIndex(), bArr, 0);
        XMSSUtil.copyBytesAtOffset(bArr, this.secretKeySeed, 4);
        int i = 4 + digestSize;
        XMSSUtil.copyBytesAtOffset(bArr, this.secretKeyPRF, i);
        int i2 = i + digestSize;
        XMSSUtil.copyBytesAtOffset(bArr, this.publicSeed, i2);
        XMSSUtil.copyBytesAtOffset(bArr, this.root, i2 + digestSize);
        try {
            return Arrays.concatenate(bArr, XMSSUtil.serialize(this.bdsState));
        } catch (IOException e) {
            throw new RuntimeException("error serializing bds state: " + e.getMessage());
        }
    }
}
