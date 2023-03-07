package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class SPHINCSPublicKeyParameters extends AsymmetricKeyParameter {
    private final byte[] keyData;

    public SPHINCSPublicKeyParameters(byte[] bArr) {
        super(false);
        this.keyData = Arrays.clone(bArr);
    }

    public byte[] getKeyData() {
        return Arrays.clone(this.keyData);
    }
}
