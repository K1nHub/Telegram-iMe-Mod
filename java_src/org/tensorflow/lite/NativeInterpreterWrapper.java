package org.tensorflow.lite;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.tensorflow.lite.Interpreter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class NativeInterpreterWrapper implements AutoCloseable {
    private long errorHandle;
    private Tensor[] inputTensors;
    private Map<String, Integer> inputsIndexes;
    private long interpreterHandle;
    private ByteBuffer modelByteBuffer;
    private long modelHandle;
    private Tensor[] outputTensors;
    private Map<String, Integer> outputsIndexes;
    private boolean isMemoryAllocated = false;
    private final List<Delegate> delegates = new ArrayList();

    private static native long allocateTensors(long interpreterHandle, long errorHandle);

    private static native void allowFp16PrecisionForFp32(long interpreterHandle, boolean allow);

    private static native void applyDelegate(long interpreterHandle, long errorHandle, long delegateHandle);

    private static native long createErrorReporter(int size);

    private static native long createInterpreter(long modelHandle, long errorHandle, int numThreads);

    private static native long createModel(String modelPathOrBuffer, long errorHandle);

    private static native long createModelWithBuffer(ByteBuffer modelBuffer, long errorHandle);

    private static native void delete(long errorHandle, long modelHandle, long interpreterHandle);

    private static native int getInputCount(long interpreterHandle);

    private static native String[] getInputNames(long interpreterHandle);

    private static native int getInputTensorIndex(long interpreterHandle, int inputIdx);

    private static native int getOutputCount(long interpreterHandle);

    private static native String[] getOutputNames(long interpreterHandle);

    private static native int getOutputTensorIndex(long interpreterHandle, int outputIdx);

    private static native boolean resizeInput(long interpreterHandle, long errorHandle, int inputIdx, int[] dims);

    private static native boolean run(long interpreterHandle, long errorHandle);

    private static native void useNNAPI(long interpreterHandle, boolean state);

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(String modelPath, Interpreter.Options options) {
        long createErrorReporter = createErrorReporter(512);
        init(createErrorReporter, createModel(modelPath, createErrorReporter), options);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(ByteBuffer buffer, Interpreter.Options options) {
        if (buffer == null || (!(buffer instanceof MappedByteBuffer) && (!buffer.isDirect() || buffer.order() != ByteOrder.nativeOrder()))) {
            throw new IllegalArgumentException("Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content.");
        }
        this.modelByteBuffer = buffer;
        long createErrorReporter = createErrorReporter(512);
        init(createErrorReporter, createModelWithBuffer(this.modelByteBuffer, createErrorReporter), options);
    }

    private void init(long errorHandle, long modelHandle, Interpreter.Options options) {
        if (options == null) {
            options = new Interpreter.Options();
        }
        this.errorHandle = errorHandle;
        this.modelHandle = modelHandle;
        long createInterpreter = createInterpreter(modelHandle, errorHandle, options.numThreads);
        this.interpreterHandle = createInterpreter;
        this.inputTensors = new Tensor[getInputCount(createInterpreter)];
        this.outputTensors = new Tensor[getOutputCount(this.interpreterHandle)];
        boolean z = options.useNNAPI;
        if (z) {
            setUseNNAPI(z);
        }
        boolean z2 = options.allowFp16PrecisionForFp32;
        if (z2) {
            setAllowFp16PrecisionForFp32(z2);
        }
        for (Delegate delegate : options.delegates) {
            applyDelegate(this.interpreterHandle, errorHandle, delegate.getNativeHandle());
            this.delegates.add(delegate);
        }
        allocateTensors(this.interpreterHandle, errorHandle);
        this.isMemoryAllocated = true;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        int i = 0;
        while (true) {
            Tensor[] tensorArr = this.inputTensors;
            if (i >= tensorArr.length) {
                break;
            }
            if (tensorArr[i] != null) {
                tensorArr[i].close();
                this.inputTensors[i] = null;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            Tensor[] tensorArr2 = this.outputTensors;
            if (i2 < tensorArr2.length) {
                if (tensorArr2[i2] != null) {
                    tensorArr2[i2].close();
                    this.outputTensors[i2] = null;
                }
                i2++;
            } else {
                delete(this.errorHandle, this.modelHandle, this.interpreterHandle);
                this.errorHandle = 0L;
                this.modelHandle = 0L;
                this.interpreterHandle = 0L;
                this.modelByteBuffer = null;
                this.inputsIndexes = null;
                this.outputsIndexes = null;
                this.isMemoryAllocated = false;
                this.delegates.clear();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void run(Object[] inputs, Map<Integer, Object> outputs) {
        if (inputs == null || inputs.length == 0) {
            throw new IllegalArgumentException("Input error: Inputs should not be null or empty.");
        }
        if (outputs == null || outputs.isEmpty()) {
            throw new IllegalArgumentException("Input error: Outputs should not be null or empty.");
        }
        int i = 0;
        for (int i2 = 0; i2 < inputs.length; i2++) {
            int[] inputShapeIfDifferent = getInputTensor(i2).getInputShapeIfDifferent(inputs[i2]);
            if (inputShapeIfDifferent != null) {
                resizeInput(i2, inputShapeIfDifferent);
            }
        }
        boolean z = !this.isMemoryAllocated;
        if (z) {
            allocateTensors(this.interpreterHandle, this.errorHandle);
            this.isMemoryAllocated = true;
        }
        for (int i3 = 0; i3 < inputs.length; i3++) {
            getInputTensor(i3).setTo(inputs[i3]);
        }
        System.nanoTime();
        run(this.interpreterHandle, this.errorHandle);
        System.nanoTime();
        if (z) {
            while (true) {
                Tensor[] tensorArr = this.outputTensors;
                if (i >= tensorArr.length) {
                    break;
                }
                if (tensorArr[i] != null) {
                    tensorArr[i].refreshShape();
                }
                i++;
            }
        }
        for (Map.Entry<Integer, Object> entry : outputs.entrySet()) {
            getOutputTensor(entry.getKey().intValue()).copyTo(entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resizeInput(int idx, int[] dims) {
        if (resizeInput(this.interpreterHandle, this.errorHandle, idx, dims)) {
            this.isMemoryAllocated = false;
            Tensor[] tensorArr = this.inputTensors;
            if (tensorArr[idx] != null) {
                tensorArr[idx].refreshShape();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUseNNAPI(boolean useNNAPI) {
        useNNAPI(this.interpreterHandle, useNNAPI);
    }

    void setAllowFp16PrecisionForFp32(boolean allow) {
        allowFp16PrecisionForFp32(this.interpreterHandle, allow);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getInputIndex(String name) {
        if (this.inputsIndexes == null) {
            String[] inputNames = getInputNames(this.interpreterHandle);
            this.inputsIndexes = new HashMap();
            if (inputNames != null) {
                for (int i = 0; i < inputNames.length; i++) {
                    this.inputsIndexes.put(inputNames[i], Integer.valueOf(i));
                }
            }
        }
        if (this.inputsIndexes.containsKey(name)) {
            return this.inputsIndexes.get(name).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any input. Names of inputs and their indexes are %s", name, this.inputsIndexes.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOutputIndex(String name) {
        if (this.outputsIndexes == null) {
            String[] outputNames = getOutputNames(this.interpreterHandle);
            this.outputsIndexes = new HashMap();
            if (outputNames != null) {
                for (int i = 0; i < outputNames.length; i++) {
                    this.outputsIndexes.put(outputNames[i], Integer.valueOf(i));
                }
            }
        }
        if (this.outputsIndexes.containsKey(name)) {
            return this.outputsIndexes.get(name).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any output. Names of outputs and their indexes are %s", name, this.outputsIndexes.toString()));
    }

    Tensor getInputTensor(int index) {
        if (index >= 0) {
            Tensor[] tensorArr = this.inputTensors;
            if (index < tensorArr.length) {
                Tensor tensor = tensorArr[index];
                if (tensor == null) {
                    long j = this.interpreterHandle;
                    Tensor fromIndex = Tensor.fromIndex(j, getInputTensorIndex(j, index));
                    tensorArr[index] = fromIndex;
                    return fromIndex;
                }
                return tensor;
            }
        }
        throw new IllegalArgumentException("Invalid input Tensor index: " + index);
    }

    Tensor getOutputTensor(int index) {
        if (index >= 0) {
            Tensor[] tensorArr = this.outputTensors;
            if (index < tensorArr.length) {
                Tensor tensor = tensorArr[index];
                if (tensor == null) {
                    long j = this.interpreterHandle;
                    Tensor fromIndex = Tensor.fromIndex(j, getOutputTensorIndex(j, index));
                    tensorArr[index] = fromIndex;
                    return fromIndex;
                }
                return tensor;
            }
        }
        throw new IllegalArgumentException("Invalid output Tensor index: " + index);
    }

    static {
        TensorFlowLite.init();
    }
}
