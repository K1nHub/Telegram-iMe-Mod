package org.web3j.crypto;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.web3j.crypto.Sign;
import org.web3j.rlp.RlpEncoder;
import org.web3j.rlp.RlpList;
import org.web3j.rlp.RlpString;
import org.web3j.rlp.RlpType;
import org.web3j.utils.Bytes;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class TransactionEncoder {
    public static byte[] signMessage(RawTransaction rawTransaction, long j, Credentials credentials) {
        return encode(rawTransaction, createEip155SignatureData(Sign.signMessage(encode(rawTransaction, j), credentials.getEcKeyPair()), j));
    }

    public static Sign.SignatureData createEip155SignatureData(Sign.SignatureData signatureData, long j) {
        return new Sign.SignatureData(Numeric.toBigInt(signatureData.getV()).subtract(BigInteger.valueOf(27L)).add(BigInteger.valueOf(j * 2)).add(BigInteger.valueOf(35L)).toByteArray(), signatureData.getR(), signatureData.getS());
    }

    public static byte[] encode(RawTransaction rawTransaction, long j) {
        return encode(rawTransaction, new Sign.SignatureData(longToBytes(j), new byte[0], new byte[0]));
    }

    private static byte[] encode(RawTransaction rawTransaction, Sign.SignatureData signatureData) {
        return RlpEncoder.encode(new RlpList(asRlpValues(rawTransaction, signatureData)));
    }

    private static byte[] longToBytes(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putLong(j);
        return allocate.array();
    }

    public static List<RlpType> asRlpValues(RawTransaction rawTransaction, Sign.SignatureData signatureData) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(RlpString.create(rawTransaction.getNonce()));
        arrayList.add(RlpString.create(rawTransaction.getGasPrice()));
        arrayList.add(RlpString.create(rawTransaction.getGasLimit()));
        String to = rawTransaction.getTo();
        if (to != null && to.length() > 0) {
            arrayList.add(RlpString.create(Numeric.hexStringToByteArray(to)));
        } else {
            arrayList.add(RlpString.create(""));
        }
        arrayList.add(RlpString.create(rawTransaction.getValue()));
        arrayList.add(RlpString.create(Numeric.hexStringToByteArray(rawTransaction.getData())));
        if (rawTransaction.isEIP1559Transaction()) {
            arrayList.add(RlpString.create(rawTransaction.getGasPremium()));
            arrayList.add(RlpString.create(rawTransaction.getFeeCap()));
        }
        if (signatureData != null) {
            arrayList.add(RlpString.create(Bytes.trimLeadingZeroes(signatureData.getV())));
            arrayList.add(RlpString.create(Bytes.trimLeadingZeroes(signatureData.getR())));
            arrayList.add(RlpString.create(Bytes.trimLeadingZeroes(signatureData.getS())));
        }
        return arrayList;
    }
}
