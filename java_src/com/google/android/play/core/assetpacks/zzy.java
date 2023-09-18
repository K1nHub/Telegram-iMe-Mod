package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.tasks.Task;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public interface zzy {
    Task<ParcelFileDescriptor> zza(int i, String str, String str2, int i2);

    Task<List<String>> zzd(Map<String, Long> map);

    void zze(List<String> list);

    void zzf();

    void zzg(int i, String str, String str2, int i2);

    void zzh(int i, String str);

    void zzi(int i);
}
