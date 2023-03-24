package org.bouncycastle.asn1.p039bc;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
/* renamed from: org.bouncycastle.asn1.bc.BCObjectIdentifiers */
/* loaded from: classes4.dex */
public interface BCObjectIdentifiers {

    /* renamed from: bc */
    public static final ASN1ObjectIdentifier f1234bc;
    public static final ASN1ObjectIdentifier bc_exch;
    public static final ASN1ObjectIdentifier bc_pbe;
    public static final ASN1ObjectIdentifier bc_pbe_sha1;
    public static final ASN1ObjectIdentifier bc_pbe_sha1_pkcs12;
    public static final ASN1ObjectIdentifier bc_pbe_sha256;
    public static final ASN1ObjectIdentifier bc_pbe_sha256_pkcs12;
    public static final ASN1ObjectIdentifier bc_sig;
    public static final ASN1ObjectIdentifier newHope;
    public static final ASN1ObjectIdentifier sphincs256;
    public static final ASN1ObjectIdentifier sphincs256_with_BLAKE512;
    public static final ASN1ObjectIdentifier sphincs256_with_SHA3_512;
    public static final ASN1ObjectIdentifier sphincs256_with_SHA512;
    public static final ASN1ObjectIdentifier xmss;
    public static final ASN1ObjectIdentifier xmss_mt;
    public static final ASN1ObjectIdentifier xmss_mt_with_SHA256;
    public static final ASN1ObjectIdentifier xmss_mt_with_SHA512;
    public static final ASN1ObjectIdentifier xmss_mt_with_SHAKE128;
    public static final ASN1ObjectIdentifier xmss_mt_with_SHAKE256;
    public static final ASN1ObjectIdentifier xmss_with_SHA256;
    public static final ASN1ObjectIdentifier xmss_with_SHA512;
    public static final ASN1ObjectIdentifier xmss_with_SHAKE128;
    public static final ASN1ObjectIdentifier xmss_with_SHAKE256;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.6.1.4.1.22554");
        f1234bc = aSN1ObjectIdentifier;
        ASN1ObjectIdentifier branch = aSN1ObjectIdentifier.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        bc_pbe = branch;
        ASN1ObjectIdentifier branch2 = branch.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        bc_pbe_sha1 = branch2;
        ASN1ObjectIdentifier branch3 = branch.branch("2.1");
        bc_pbe_sha256 = branch3;
        branch.branch("2.2");
        branch.branch("2.3");
        branch.branch("2.4");
        branch2.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        ASN1ObjectIdentifier branch4 = branch2.branch("2");
        bc_pbe_sha1_pkcs12 = branch4;
        branch3.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        ASN1ObjectIdentifier branch5 = branch3.branch("2");
        bc_pbe_sha256_pkcs12 = branch5;
        branch4.branch("1.2");
        branch4.branch("1.22");
        branch4.branch("1.42");
        branch5.branch("1.2");
        branch5.branch("1.22");
        branch5.branch("1.42");
        ASN1ObjectIdentifier branch6 = aSN1ObjectIdentifier.branch("2");
        bc_sig = branch6;
        ASN1ObjectIdentifier branch7 = branch6.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        sphincs256 = branch7;
        sphincs256_with_BLAKE512 = branch7.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        sphincs256_with_SHA512 = branch7.branch("2");
        sphincs256_with_SHA3_512 = branch7.branch("3");
        ASN1ObjectIdentifier branch8 = branch6.branch("2");
        xmss = branch8;
        xmss_with_SHA256 = branch8.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        xmss_with_SHA512 = branch8.branch("2");
        xmss_with_SHAKE128 = branch8.branch("3");
        xmss_with_SHAKE256 = branch8.branch("4");
        ASN1ObjectIdentifier branch9 = branch6.branch("3");
        xmss_mt = branch9;
        xmss_mt_with_SHA256 = branch9.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        xmss_mt_with_SHA512 = branch9.branch("2");
        xmss_mt_with_SHAKE128 = branch9.branch("3");
        xmss_mt_with_SHAKE256 = branch9.branch("4");
        ASN1ObjectIdentifier branch10 = aSN1ObjectIdentifier.branch("3");
        bc_exch = branch10;
        newHope = branch10.branch(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
    }
}
