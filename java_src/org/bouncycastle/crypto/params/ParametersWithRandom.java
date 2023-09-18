package org.bouncycastle.crypto.params;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes6.dex */
public class ParametersWithRandom implements CipherParameters {
    private CipherParameters parameters;
    private SecureRandom random;

    public CipherParameters getParameters() {
        return this.parameters;
    }

    public SecureRandom getRandom() {
        return this.random;
    }
}
