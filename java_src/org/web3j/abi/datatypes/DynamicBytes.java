package org.web3j.abi.datatypes;
/* loaded from: classes6.dex */
public class DynamicBytes extends BytesType {
    static {
        new DynamicBytes(new byte[0]);
    }

    public DynamicBytes(byte[] bArr) {
        super(bArr, "bytes");
    }
}
