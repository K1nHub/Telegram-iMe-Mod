package org.ton.crypto.kdf;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: PBEParametersGenerator.kt */
/* loaded from: classes6.dex */
public abstract class PBEParametersGenerator {
    private int iterationCount;
    private byte[] password;
    private byte[] salt;

    public PBEParametersGenerator(byte[] password, byte[] salt, int i) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(salt, "salt");
        this.password = password;
        this.salt = salt;
        this.iterationCount = i;
    }

    public final byte[] getPassword() {
        return this.password;
    }

    public final byte[] getSalt() {
        return this.salt;
    }

    public final int getIterationCount() {
        return this.iterationCount;
    }

    public final PBEParametersGenerator init(byte[] password, byte[] salt, int i) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(salt, "salt");
        this.password = password;
        this.salt = salt;
        this.iterationCount = i;
        return this;
    }
}
