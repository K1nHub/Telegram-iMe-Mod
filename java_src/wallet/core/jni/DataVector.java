package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class DataVector {
    private long nativeHandle;

    static native long nativeCreate();

    static native long nativeCreateWithData(byte[] data);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native void add(byte[] data);

    public native byte[] get(int index);

    public native int size();

    static DataVector createFromNative(long nativeHandle) {
        DataVector dataVector = new DataVector();
        dataVector.nativeHandle = nativeHandle;
        DataVectorPhantomReference.register(dataVector, nativeHandle);
        return dataVector;
    }

    public DataVector() {
        long nativeCreate = nativeCreate();
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        DataVectorPhantomReference.register(this, nativeCreate);
    }

    public DataVector(byte[] data) {
        long nativeCreateWithData = nativeCreateWithData(data);
        this.nativeHandle = nativeCreateWithData;
        if (nativeCreateWithData == 0) {
            throw new InvalidParameterException();
        }
        DataVectorPhantomReference.register(this, nativeCreateWithData);
    }
}
