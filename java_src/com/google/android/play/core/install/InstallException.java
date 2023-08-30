package com.google.android.play.core.install;

import com.google.android.play.core.tasks.zzj;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public class InstallException extends zzj {
    public InstallException(int i) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i), com.google.android.play.core.install.model.zza.zza(i)));
        if (i == 0) {
            throw new IllegalArgumentException("errorCode should not be 0.");
        }
    }
}
