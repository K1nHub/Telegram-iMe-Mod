package org.bouncycastle.asn1;

import java.util.Vector;
/* loaded from: classes4.dex */
public class ASN1EncodableVector {

    /* renamed from: v */
    private final Vector f1237v = new Vector();

    public void add(ASN1Encodable aSN1Encodable) {
        this.f1237v.addElement(aSN1Encodable);
    }

    public ASN1Encodable get(int i) {
        return (ASN1Encodable) this.f1237v.elementAt(i);
    }

    public int size() {
        return this.f1237v.size();
    }
}
