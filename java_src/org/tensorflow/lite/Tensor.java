package org.tensorflow.lite;

import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes6.dex */
public final class Tensor {
    private final DataType dtype;
    private long nativeHandle;
    private int[] shapeCopy;

    private static native ByteBuffer buffer(long handle);

    private static native long create(long interpreterHandle, int tensorIndex);

    private static native void delete(long handle);

    private static native int dtype(long handle);

    private static native int numBytes(long handle);

    private static native void readMultiDimensionalArray(long handle, Object dst);

    private static native int[] shape(long handle);

    private static native void writeDirectBuffer(long handle, ByteBuffer src);

    private static native void writeMultiDimensionalArray(long handle, Object src);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Tensor fromIndex(long nativeInterpreterHandle, int tensorIndex) {
        return new Tensor(create(nativeInterpreterHandle, tensorIndex));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        delete(this.nativeHandle);
        this.nativeHandle = 0L;
    }

    public int numBytes() {
        return numBytes(this.nativeHandle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTo(Object src) {
        throwExceptionIfTypeIsIncompatible(src);
        if (isByteBuffer(src)) {
            ByteBuffer byteBuffer = (ByteBuffer) src;
            if (byteBuffer.isDirect() && byteBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, byteBuffer);
                return;
            } else {
                buffer().put(byteBuffer);
                return;
            }
        }
        writeMultiDimensionalArray(this.nativeHandle, src);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object copyTo(Object dst) {
        throwExceptionIfTypeIsIncompatible(dst);
        if (dst instanceof ByteBuffer) {
            ((ByteBuffer) dst).put(buffer());
            return dst;
        }
        readMultiDimensionalArray(this.nativeHandle, dst);
        return dst;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getInputShapeIfDifferent(Object input) {
        if (isByteBuffer(input)) {
            return null;
        }
        int[] computeShapeOf = computeShapeOf(input);
        if (Arrays.equals(this.shapeCopy, computeShapeOf)) {
            return null;
        }
        return computeShapeOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshShape() {
        this.shapeCopy = shape(this.nativeHandle);
    }

    static DataType dataTypeOf(Object o) {
        if (o != null) {
            Class<?> cls = o.getClass();
            while (cls.isArray()) {
                cls = cls.getComponentType();
            }
            if (Float.TYPE.equals(cls)) {
                return DataType.FLOAT32;
            }
            if (Integer.TYPE.equals(cls)) {
                return DataType.INT32;
            }
            if (Byte.TYPE.equals(cls)) {
                return DataType.UINT8;
            }
            if (Long.TYPE.equals(cls)) {
                return DataType.INT64;
            }
            if (String.class.equals(cls)) {
                return DataType.STRING;
            }
        }
        throw new IllegalArgumentException("DataType error: cannot resolve DataType of " + o.getClass().getName());
    }

    static int[] computeShapeOf(Object o) {
        int[] iArr = new int[computeNumDimensions(o)];
        fillShape(o, 0, iArr);
        return iArr;
    }

    static int computeNumDimensions(Object o) {
        if (o == null || !o.getClass().isArray()) {
            return 0;
        }
        if (Array.getLength(o) == 0) {
            throw new IllegalArgumentException("Array lengths cannot be 0.");
        }
        return computeNumDimensions(Array.get(o, 0)) + 1;
    }

    static void fillShape(Object o, int dim, int[] shape) {
        if (shape == null || dim == shape.length) {
            return;
        }
        int length = Array.getLength(o);
        if (shape[dim] == 0) {
            shape[dim] = length;
        } else if (shape[dim] != length) {
            throw new IllegalArgumentException(String.format("Mismatched lengths (%d and %d) in dimension %d", Integer.valueOf(shape[dim]), Integer.valueOf(length), Integer.valueOf(dim)));
        }
        for (int i = 0; i < length; i++) {
            fillShape(Array.get(o, i), dim + 1, shape);
        }
    }

    private void throwExceptionIfTypeIsIncompatible(Object o) {
        if (isByteBuffer(o)) {
            ByteBuffer byteBuffer = (ByteBuffer) o;
            if (byteBuffer.capacity() != numBytes()) {
                throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite buffer with %d bytes and a ByteBuffer with %d bytes.", Integer.valueOf(numBytes()), Integer.valueOf(byteBuffer.capacity())));
            }
            return;
        }
        DataType dataTypeOf = dataTypeOf(o);
        if (dataTypeOf != this.dtype) {
            throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s).", this.dtype, o.getClass().getName(), dataTypeOf));
        }
        int[] computeShapeOf = computeShapeOf(o);
        if (!Arrays.equals(computeShapeOf, this.shapeCopy)) {
            throw new IllegalArgumentException(String.format("Cannot copy between a TensorFlowLite tensor with shape %s and a Java object with shape %s.", Arrays.toString(this.shapeCopy), Arrays.toString(computeShapeOf)));
        }
    }

    private static boolean isByteBuffer(Object o) {
        return o instanceof ByteBuffer;
    }

    private Tensor(long nativeHandle) {
        this.nativeHandle = nativeHandle;
        this.dtype = DataType.fromC(dtype(nativeHandle));
        this.shapeCopy = shape(nativeHandle);
    }

    private ByteBuffer buffer() {
        return buffer(this.nativeHandle).order(ByteOrder.nativeOrder());
    }

    static {
        TensorFlowLite.init();
    }
}
