package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import java.io.File;
import org.tensorflow.lite.Interpreter;
import org.tensorflow.lite.TensorFlowLite;
/* loaded from: classes.dex */
public final class zzpo implements zzot {
    private static final GmsLogger zzass = new GmsLogger("CustomCompatChecker", "");

    @Override // com.google.android.gms.internal.firebase_ml.zzot
    public final zzow zza(File file, zzpa zzpaVar) {
        try {
            new Interpreter(file).close();
            return zzow.zzavh;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 93);
            sb.append("The model is INCOMPATIBLE. It may contain unrecognized custom ops, or not FlatBuffer format: ");
            sb.append(valueOf);
            String sb2 = sb.toString();
            zzass.m783e("CustomCompatChecker", sb2);
            zzpaVar.zza(zzmc.INCOMPATIBLE_TFLITE_VERSION, TensorFlowLite.version(), false, zzor.CUSTOM);
            return new zzow(zzov.TFLITE_VERSION_INCOMPATIBLE, sb2);
        }
    }
}
