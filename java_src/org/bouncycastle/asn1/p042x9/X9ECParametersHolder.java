package org.bouncycastle.asn1.p042x9;
/* renamed from: org.bouncycastle.asn1.x9.X9ECParametersHolder */
/* loaded from: classes4.dex */
public abstract class X9ECParametersHolder {
    private X9ECParameters params;

    protected abstract X9ECParameters createParameters();

    public synchronized X9ECParameters getParameters() {
        if (this.params == null) {
            this.params = createParameters();
        }
        return this.params;
    }
}
