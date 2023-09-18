package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class EthereumAbiFunction {
    private long nativeHandle;

    static native long nativeCreateWithString(String name);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native int addInArrayParamAddress(int arrayIdx, byte[] val);

    public native int addInArrayParamBool(int arrayIdx, boolean val);

    public native int addInArrayParamBytes(int arrayIdx, byte[] val);

    public native int addInArrayParamBytesFix(int arrayIdx, int size, byte[] val);

    public native int addInArrayParamInt16(int arrayIdx, short val);

    public native int addInArrayParamInt256(int arrayIdx, byte[] val);

    public native int addInArrayParamInt32(int arrayIdx, int val);

    public native int addInArrayParamInt64(int arrayIdx, long val);

    public native int addInArrayParamInt8(int arrayIdx, byte val);

    public native int addInArrayParamIntN(int arrayIdx, int bits, byte[] val);

    public native int addInArrayParamString(int arrayIdx, String val);

    public native int addInArrayParamUInt16(int arrayIdx, short val);

    public native int addInArrayParamUInt256(int arrayIdx, byte[] val);

    public native int addInArrayParamUInt32(int arrayIdx, int val);

    public native int addInArrayParamUInt64(int arrayIdx, long val);

    public native int addInArrayParamUInt8(int arrayIdx, byte val);

    public native int addInArrayParamUIntN(int arrayIdx, int bits, byte[] val);

    public native int addParamAddress(byte[] val, boolean isOutput);

    public native int addParamArray(boolean isOutput);

    public native int addParamBool(boolean val, boolean isOutput);

    public native int addParamBytes(byte[] val, boolean isOutput);

    public native int addParamBytesFix(int size, byte[] val, boolean isOutput);

    public native int addParamInt16(short val, boolean isOutput);

    public native int addParamInt256(byte[] val, boolean isOutput);

    public native int addParamInt32(int val, boolean isOutput);

    public native int addParamInt64(long val, boolean isOutput);

    public native int addParamInt8(byte val, boolean isOutput);

    public native int addParamIntN(int bits, byte[] val, boolean isOutput);

    public native int addParamString(String val, boolean isOutput);

    public native int addParamUInt16(short val, boolean isOutput);

    public native int addParamUInt256(byte[] val, boolean isOutput);

    public native int addParamUInt32(int val, boolean isOutput);

    public native int addParamUInt64(long val, boolean isOutput);

    public native int addParamUInt8(byte val, boolean isOutput);

    public native int addParamUIntN(int bits, byte[] val, boolean isOutput);

    public native byte[] getParamAddress(int idx, boolean isOutput);

    public native boolean getParamBool(int idx, boolean isOutput);

    public native String getParamString(int idx, boolean isOutput);

    public native byte[] getParamUInt256(int idx, boolean isOutput);

    public native long getParamUInt64(int idx, boolean isOutput);

    public native byte getParamUInt8(int idx, boolean isOutput);

    public native String getType();

    private EthereumAbiFunction() {
        this.nativeHandle = 0L;
    }

    static EthereumAbiFunction createFromNative(long nativeHandle) {
        EthereumAbiFunction ethereumAbiFunction = new EthereumAbiFunction();
        ethereumAbiFunction.nativeHandle = nativeHandle;
        EthereumAbiFunctionPhantomReference.register(ethereumAbiFunction, nativeHandle);
        return ethereumAbiFunction;
    }

    public EthereumAbiFunction(String name) {
        long nativeCreateWithString = nativeCreateWithString(name);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        EthereumAbiFunctionPhantomReference.register(this, nativeCreateWithString);
    }
}
