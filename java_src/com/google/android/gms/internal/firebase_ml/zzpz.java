package com.google.android.gms.internal.firebase_ml;

import java.util.Map;
import org.tensorflow.lite.Interpreter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzpz {
    private final Interpreter zzayo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpz(Interpreter interpreter) {
        this.zzayo = interpreter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void runForMultipleInputsOutputs(Object[] objArr, Map<Integer, Object> map) {
        this.zzayo.runForMultipleInputsOutputs(objArr, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getInputIndex(String str) {
        return this.zzayo.getInputIndex(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getOutputIndex(String str) {
        return this.zzayo.getOutputIndex(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void resizeInput(int i, int[] iArr) {
        this.zzayo.resizeInput(i, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setUseNNAPI(boolean z) {
        this.zzayo.setUseNNAPI(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void close() {
        this.zzayo.close();
    }
}
