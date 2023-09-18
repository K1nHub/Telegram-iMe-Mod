package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.model.RemoteModel;
import java.util.UUID;
/* compiled from: com.google.mlkit:common@@17.0.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class SharedPrefManager {
    @KeepForSdk
    public static final Component<?> COMPONENT = Component.builder(SharedPrefManager.class).add(Dependency.required(MlKitContext.class)).add(Dependency.required(Context.class)).factory(zzn.zza).build();
    private final Context zza;

    private SharedPrefManager(Context context) {
        this.zza = context;
    }

    @KeepForSdk
    public synchronized long getModelDownloadBeginTimeMs(RemoteModel remoteModel) {
        return zza().getLong(String.format("downloading_begin_time_%s", remoteModel.getUniqueModelNameForPersist()), 0L);
    }

    @KeepForSdk
    public synchronized long getModelFirstUseTimeMs(RemoteModel remoteModel) {
        return zza().getLong(String.format("model_first_use_time_%s", remoteModel.getUniqueModelNameForPersist()), 0L);
    }

    @KeepForSdk
    public synchronized void setModelFirstUseTimeMs(RemoteModel remoteModel, long j) {
        zza().edit().putLong(String.format("model_first_use_time_%s", remoteModel.getUniqueModelNameForPersist()), j).apply();
    }

    @KeepForSdk
    public synchronized String getMlSdkInstanceId() {
        String string = zza().getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        zza().edit().putString("ml_sdk_instance_id", uuid).apply();
        return uuid;
    }

    private final SharedPreferences zza() {
        return this.zza.getSharedPreferences("com.google.mlkit.internal", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ SharedPrefManager zza(ComponentContainer componentContainer) {
        return new SharedPrefManager((Context) componentContainer.get(Context.class));
    }
}
