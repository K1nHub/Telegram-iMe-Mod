package org.bouncycastle.asn1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class BERFactory {
    static final BERSequence EMPTY_SEQUENCE = new BERSequence();

    static {
        new BERSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BERSequence createSequence(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SEQUENCE : new BERSequence(aSN1EncodableVector);
    }
}
