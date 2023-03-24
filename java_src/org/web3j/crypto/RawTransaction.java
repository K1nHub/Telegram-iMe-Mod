package org.web3j.crypto;

import java.math.BigInteger;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class RawTransaction {
    private String data;
    private BigInteger feeCap;
    private BigInteger gasLimit;
    private BigInteger gasPremium;
    private BigInteger gasPrice;
    private BigInteger nonce;

    /* renamed from: to */
    private String f1837to;
    private BigInteger value;

    protected RawTransaction(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, BigInteger bigInteger4, String str2) {
        this(bigInteger, bigInteger2, bigInteger3, str, bigInteger4, str2, null, null);
    }

    protected RawTransaction(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, BigInteger bigInteger4, String str2, BigInteger bigInteger5, BigInteger bigInteger6) {
        this.nonce = bigInteger;
        this.gasPrice = bigInteger2;
        this.gasLimit = bigInteger3;
        this.f1837to = str;
        this.value = bigInteger4;
        this.data = str2 != null ? Numeric.cleanHexPrefix(str2) : null;
        this.gasPremium = bigInteger5;
        this.feeCap = bigInteger6;
    }

    public static RawTransaction createEtherTransaction(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, BigInteger bigInteger4) {
        return new RawTransaction(bigInteger, bigInteger2, bigInteger3, str, bigInteger4, "");
    }

    public static RawTransaction createTransaction(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, String str2) {
        return createTransaction(bigInteger, bigInteger2, bigInteger3, str, BigInteger.ZERO, str2);
    }

    public static RawTransaction createTransaction(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, BigInteger bigInteger4, String str2) {
        return new RawTransaction(bigInteger, bigInteger2, bigInteger3, str, bigInteger4, str2);
    }

    public BigInteger getNonce() {
        return this.nonce;
    }

    public BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public BigInteger getGasLimit() {
        return this.gasLimit;
    }

    public String getTo() {
        return this.f1837to;
    }

    public BigInteger getValue() {
        return this.value;
    }

    public String getData() {
        return this.data;
    }

    public BigInteger getGasPremium() {
        return this.gasPremium;
    }

    public BigInteger getFeeCap() {
        return this.feeCap;
    }

    public boolean isEIP1559Transaction() {
        return (this.gasPrice != null || this.gasPremium == null || this.feeCap == null) ? false : true;
    }
}
