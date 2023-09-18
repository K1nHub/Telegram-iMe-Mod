package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.zzj;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public class AssetPackException extends zzj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetPackException(int i) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i), com.google.android.play.core.assetpacks.model.zza.zza(i)));
        if (i == 0) {
            throw new IllegalArgumentException("errorCode should not be 0.");
        }
    }
}
