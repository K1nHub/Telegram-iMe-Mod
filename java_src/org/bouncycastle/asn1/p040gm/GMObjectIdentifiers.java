package org.bouncycastle.asn1.p040gm;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
/* renamed from: org.bouncycastle.asn1.gm.GMObjectIdentifiers */
/* loaded from: classes4.dex */
public interface GMObjectIdentifiers {
    public static final ASN1ObjectIdentifier sm2encrypt;
    public static final ASN1ObjectIdentifier sm2p256v1;
    public static final ASN1ObjectIdentifier sm3;
    public static final ASN1ObjectIdentifier sm_scheme;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.2.156.10197.1");
        sm_scheme = aSN1ObjectIdentifier;
        aSN1ObjectIdentifier.branch("101.1");
        aSN1ObjectIdentifier.branch("101.2");
        aSN1ObjectIdentifier.branch("101.3");
        aSN1ObjectIdentifier.branch("101.4");
        aSN1ObjectIdentifier.branch("102.1");
        aSN1ObjectIdentifier.branch("102.2");
        aSN1ObjectIdentifier.branch("102.3");
        aSN1ObjectIdentifier.branch("102.4");
        aSN1ObjectIdentifier.branch("102.5");
        aSN1ObjectIdentifier.branch("102.6");
        aSN1ObjectIdentifier.branch("103.1");
        aSN1ObjectIdentifier.branch("103.2");
        aSN1ObjectIdentifier.branch("103.3");
        aSN1ObjectIdentifier.branch("103.4");
        aSN1ObjectIdentifier.branch("103.5");
        aSN1ObjectIdentifier.branch("103.6");
        aSN1ObjectIdentifier.branch("104.1");
        aSN1ObjectIdentifier.branch("104.2");
        aSN1ObjectIdentifier.branch("104.3");
        aSN1ObjectIdentifier.branch("104.4");
        aSN1ObjectIdentifier.branch("104.5");
        aSN1ObjectIdentifier.branch("104.6");
        aSN1ObjectIdentifier.branch("104.7");
        aSN1ObjectIdentifier.branch("104.8");
        aSN1ObjectIdentifier.branch("104.9");
        aSN1ObjectIdentifier.branch("104.10");
        aSN1ObjectIdentifier.branch("104.11");
        aSN1ObjectIdentifier.branch("104.12");
        aSN1ObjectIdentifier.branch("104.100");
        aSN1ObjectIdentifier.branch("201");
        sm2p256v1 = aSN1ObjectIdentifier.branch("301");
        aSN1ObjectIdentifier.branch("301.1");
        aSN1ObjectIdentifier.branch("301.2");
        ASN1ObjectIdentifier branch = aSN1ObjectIdentifier.branch("301.3");
        sm2encrypt = branch;
        aSN1ObjectIdentifier.branch("301.101");
        branch.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        branch.branch("2");
        branch.branch("2.1");
        branch.branch("2.2");
        branch.branch("2.3");
        branch.branch("2.4");
        branch.branch("2.5");
        branch.branch("2.6");
        branch.branch("2.7");
        branch.branch("2.8");
        branch.branch("2.9");
        branch.branch("2.10");
        branch.branch("2.11");
        aSN1ObjectIdentifier.branch("302");
        aSN1ObjectIdentifier.branch("302.1");
        aSN1ObjectIdentifier.branch("302.2");
        aSN1ObjectIdentifier.branch("302.3");
        ASN1ObjectIdentifier branch2 = aSN1ObjectIdentifier.branch("401");
        sm3 = branch2;
        branch2.branch("2");
        aSN1ObjectIdentifier.branch("501");
        aSN1ObjectIdentifier.branch("502");
        aSN1ObjectIdentifier.branch("503");
        aSN1ObjectIdentifier.branch("504");
        aSN1ObjectIdentifier.branch("505");
        aSN1ObjectIdentifier.branch("506");
        aSN1ObjectIdentifier.branch("507");
        aSN1ObjectIdentifier.branch("520");
        aSN1ObjectIdentifier.branch("521");
        aSN1ObjectIdentifier.branch("522");
    }
}
