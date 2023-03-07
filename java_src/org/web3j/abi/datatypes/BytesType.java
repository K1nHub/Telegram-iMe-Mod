package org.web3j.abi.datatypes;

import java.util.Arrays;
/* loaded from: classes6.dex */
public abstract class BytesType implements Type<byte[]> {
    private String type;
    private byte[] value;

    public BytesType(byte[] bArr, String str) {
        this.value = bArr;
        this.type = str;
    }

    @Override // org.web3j.abi.datatypes.Type
    public int bytes32PaddedLength() {
        return this.value.length * 32;
    }

    @Override // org.web3j.abi.datatypes.Type
    public byte[] getValue() {
        return this.value;
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BytesType bytesType = (BytesType) obj;
        if (Arrays.equals(this.value, bytesType.value)) {
            return this.type.equals(bytesType.type);
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.value) * 31) + this.type.hashCode();
    }
}
