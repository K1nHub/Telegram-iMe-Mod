package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzs extends zzk implements zzu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzc(String str, List<Bundle> list, Bundle bundle, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeTypedList(list);
        zzm.zzb(zza, bundle);
        zzm.zzc(zza, zzwVar);
        zzb(14, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzd(String str, Bundle bundle, Bundle bundle2, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzb(zza, bundle2);
        zzm.zzc(zza, zzwVar);
        zzb(11, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zze(String str, Bundle bundle, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzc(zza, zzwVar);
        zzb(5, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzf(String str, Bundle bundle, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzc(zza, zzwVar);
        zzb(10, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzg(String str, Bundle bundle, Bundle bundle2, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzb(zza, bundle2);
        zzm.zzc(zza, zzwVar);
        zzb(6, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzh(String str, Bundle bundle, Bundle bundle2, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzb(zza, bundle2);
        zzm.zzc(zza, zzwVar);
        zzb(7, zza);
    }

    @Override // com.google.android.play.core.internal.zzu
    public final void zzi(String str, Bundle bundle, Bundle bundle2, zzw zzwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzm.zzb(zza, bundle);
        zzm.zzb(zza, bundle2);
        zzm.zzc(zza, zzwVar);
        zzb(9, zza);
    }
}
