package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class SPHINCSPrivateKeyParameters extends AsymmetricKeyParameter {
    private final byte[] keyData;

    public SPHINCSPrivateKeyParameters(byte[] bArr) {
        super(true);
        this.keyData = Arrays.clone(bArr);
    }

    public byte[] getKeyData() {
        return Arrays.clone(this.keyData);
    }
}
