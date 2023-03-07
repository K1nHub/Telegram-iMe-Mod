package org.tensorflow.lite;

import java.io.PrintStream;
/* loaded from: classes6.dex */
public final class TensorFlowLite {
    public static native String version();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean init() {
        try {
            System.loadLibrary("tensorflowlite_jni");
            return true;
        } catch (UnsatisfiedLinkError e) {
            try {
                System.loadLibrary("tensorflowlite_flex_jni");
                return true;
            } catch (UnsatisfiedLinkError unused) {
                PrintStream printStream = System.err;
                printStream.println("TensorFlowLite: failed to load native library: " + e.getMessage());
                return false;
            }
        }
    }

    static {
        init();
    }
}
