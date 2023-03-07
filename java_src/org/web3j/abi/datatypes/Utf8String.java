package org.web3j.abi.datatypes;
/* loaded from: classes6.dex */
public class Utf8String implements Type<String> {
    private String value;

    @Override // org.web3j.abi.datatypes.Type
    public int bytes32PaddedLength() {
        return 64;
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return "string";
    }

    static {
        new Utf8String("");
    }

    public Utf8String(String str) {
        this.value = str;
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Utf8String.class != obj.getClass()) {
            return false;
        }
        String str = this.value;
        String str2 = ((Utf8String) obj).value;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.value;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return this.value;
    }
}
