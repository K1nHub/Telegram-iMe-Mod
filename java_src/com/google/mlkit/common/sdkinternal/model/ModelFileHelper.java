package com.google.mlkit.common.sdkinternal.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.mlkit.common.sdkinternal.MlKitContext;
/* compiled from: com.google.mlkit:common@@17.0.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public class ModelFileHelper {
    public ModelFileHelper(MlKitContext mlKitContext) {
    }

    static {
        new GmsLogger("ModelFileHelper", "");
        String.format("com.google.mlkit.%s.models", "automl");
        String.format("com.google.mlkit.%s.models", "translate");
        String.format("com.google.mlkit.%s.models", TtmlNode.RUBY_BASE);
    }
}
