package org.bouncycastle.pqc.crypto.xmss;

import java.io.Serializable;
/* loaded from: classes4.dex */
public final class XMSSNode implements Serializable {
    private final int height;
    private final byte[] value;

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode(int i, byte[] bArr) {
        this.height = i;
        this.value = bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode clone() {
        return new XMSSNode(getHeight(), getValue());
    }

    public int getHeight() {
        return this.height;
    }

    public byte[] getValue() {
        return XMSSUtil.cloneArray(this.value);
    }
}
