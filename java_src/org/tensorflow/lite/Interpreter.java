package org.tensorflow.lite;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes7.dex */
public final class Interpreter implements AutoCloseable {
    NativeInterpreterWrapper wrapper;

    /* loaded from: classes7.dex */
    public static class Options {
        int numThreads = -1;
        boolean useNNAPI = false;
        boolean allowFp16PrecisionForFp32 = false;
        final List<Delegate> delegates = new ArrayList();
    }

    public Interpreter(File modelFile) {
        this(modelFile, (Options) null);
    }

    public Interpreter(File modelFile, Options options) {
        this.wrapper = new NativeInterpreterWrapper(modelFile.getAbsolutePath(), options);
    }

    public Interpreter(ByteBuffer byteBuffer, Options options) {
        this.wrapper = new NativeInterpreterWrapper(byteBuffer, options);
    }

    public void runForMultipleInputsOutputs(Object[] inputs, Map<Integer, Object> outputs) {
        checkNotClosed();
        this.wrapper.run(inputs, outputs);
    }

    public void resizeInput(int idx, int[] dims) {
        checkNotClosed();
        this.wrapper.resizeInput(idx, dims);
    }

    public int getInputIndex(String opName) {
        checkNotClosed();
        return this.wrapper.getInputIndex(opName);
    }

    public int getOutputIndex(String opName) {
        checkNotClosed();
        return this.wrapper.getOutputIndex(opName);
    }

    @Deprecated
    public void setUseNNAPI(boolean useNNAPI) {
        checkNotClosed();
        this.wrapper.setUseNNAPI(useNNAPI);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        NativeInterpreterWrapper nativeInterpreterWrapper = this.wrapper;
        if (nativeInterpreterWrapper != null) {
            nativeInterpreterWrapper.close();
            this.wrapper = null;
        }
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    private void checkNotClosed() {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
    }
}
