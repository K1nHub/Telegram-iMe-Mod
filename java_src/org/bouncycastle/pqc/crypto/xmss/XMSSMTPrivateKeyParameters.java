package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public final class XMSSMTPrivateKeyParameters extends AsymmetricKeyParameter {
    private final BDSStateMap bdsState;
    private final long index;
    private final XMSSMTParameters params;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;

    /* loaded from: classes4.dex */
    public static class Builder {
        private final XMSSMTParameters params;
        private long index = 0;
        private byte[] secretKeySeed = null;
        private byte[] secretKeyPRF = null;
        private byte[] publicSeed = null;
        private byte[] root = null;
        private BDSStateMap bdsState = null;
        private byte[] privateKey = null;
        private XMSSParameters xmss = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.params = xMSSMTParameters;
        }

        public XMSSMTPrivateKeyParameters build() {
            return new XMSSMTPrivateKeyParameters(this);
        }

        public Builder withBDSState(BDSStateMap bDSStateMap) {
            this.bdsState = bDSStateMap;
            return this;
        }

        public Builder withIndex(long j) {
            this.index = j;
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

    private XMSSMTPrivateKeyParameters(Builder builder) {
        super(true);
        XMSSMTParameters xMSSMTParameters = builder.params;
        this.params = xMSSMTParameters;
        Objects.requireNonNull(xMSSMTParameters, "params == null");
        int digestSize = xMSSMTParameters.getDigestSize();
        byte[] bArr = builder.privateKey;
        if (bArr != null) {
            Objects.requireNonNull(builder.xmss, "xmss == null");
            int height = xMSSMTParameters.getHeight();
            int i = (height + 7) / 8;
            long bytesToXBigEndian = XMSSUtil.bytesToXBigEndian(bArr, 0, i);
            this.index = bytesToXBigEndian;
            if (!XMSSUtil.isIndexValid(height, bytesToXBigEndian)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            int i2 = i + 0;
            this.secretKeySeed = XMSSUtil.extractBytesAtOffset(bArr, i2, digestSize);
            int i3 = i2 + digestSize;
            this.secretKeyPRF = XMSSUtil.extractBytesAtOffset(bArr, i3, digestSize);
            int i4 = i3 + digestSize;
            this.publicSeed = XMSSUtil.extractBytesAtOffset(bArr, i4, digestSize);
            int i5 = i4 + digestSize;
            this.root = XMSSUtil.extractBytesAtOffset(bArr, i5, digestSize);
            int i6 = i5 + digestSize;
            try {
                BDSStateMap bDSStateMap = (BDSStateMap) XMSSUtil.deserialize(XMSSUtil.extractBytesAtOffset(bArr, i6, bArr.length - i6), BDSStateMap.class);
                bDSStateMap.setXMSS(builder.xmss);
                this.bdsState = bDSStateMap;
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        this.index = builder.index;
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
        BDSStateMap bDSStateMap2 = builder.bdsState;
        if (bDSStateMap2 == null) {
            if (!XMSSUtil.isIndexValid(xMSSMTParameters.getHeight(), builder.index) || bArr4 == null || bArr2 == null) {
                this.bdsState = new BDSStateMap();
                return;
            }
            bDSStateMap2 = new BDSStateMap(xMSSMTParameters, builder.index, bArr4, bArr2);
        }
        this.bdsState = bDSStateMap2;
    }

    public XMSSMTParameters getParameters() {
        return this.params;
    }

    public byte[] toByteArray() {
        int digestSize = this.params.getDigestSize();
        int height = (this.params.getHeight() + 7) / 8;
        byte[] bArr = new byte[height + digestSize + digestSize + digestSize + digestSize];
        XMSSUtil.copyBytesAtOffset(bArr, XMSSUtil.toBytesBigEndian(this.index, height), 0);
        int i = height + 0;
        XMSSUtil.copyBytesAtOffset(bArr, this.secretKeySeed, i);
        int i2 = i + digestSize;
        XMSSUtil.copyBytesAtOffset(bArr, this.secretKeyPRF, i2);
        int i3 = i2 + digestSize;
        XMSSUtil.copyBytesAtOffset(bArr, this.publicSeed, i3);
        XMSSUtil.copyBytesAtOffset(bArr, this.root, i3 + digestSize);
        try {
            return Arrays.concatenate(bArr, XMSSUtil.serialize(this.bdsState));
        } catch (IOException e) {
            throw new IllegalStateException("error serializing bds state: " + e.getMessage(), e);
        }
    }
}
