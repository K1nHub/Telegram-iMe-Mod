package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes6.dex */
public class BERTaggedObjectParser implements ASN1Encodable, InMemoryRepresentable {
    private boolean _constructed;
    private ASN1StreamParser _parser;
    private int _tagNumber;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERTaggedObjectParser(boolean z, int i, ASN1StreamParser aSN1StreamParser) {
        this._constructed = z;
        this._tagNumber = i;
        this._parser = aSN1StreamParser;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return this._parser.readTaggedObject(this._constructed, this._tagNumber);
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage());
        }
    }
}
